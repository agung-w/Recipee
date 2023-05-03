import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:geocoding/geocoding.dart';
import 'package:latlong2/latlong.dart';
import 'package:positioned_tap_detector_2/positioned_tap_detector_2.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/cubit/shipping_cubit.dart';
import 'package:ta_recipe_app/entities/shipping_address.dart';
import 'package:ta_recipe_app/helpers/custom_placemark.dart';
import 'package:ta_recipe_app/ui/widgets/confirmation_dialog.dart';

class EditAddressPage extends StatefulWidget {
  final ShippingAddress? shippingAddress;
  final SignedIn authUser;

  const EditAddressPage(
      {super.key, this.shippingAddress, required this.authUser});
  @override
  State<EditAddressPage> createState() => _EditAddressPageState();
}

class _EditAddressPageState extends State<EditAddressPage> {
  LatLng? pinLocation;
  MapController mapController = MapController();
  TextEditingController searchController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController addressNotesController = TextEditingController();
  late GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? address;
  String? addressNotes;

  @override
  void initState() {
    address = widget.shippingAddress?.address;
    addressNotesController.text = widget.shippingAddress?.addressNotes ?? "";
    nameController.text = widget.shippingAddress?.recipientName ?? "";
    contactController.text = widget.shippingAddress?.recipientContact ?? "";
    pinLocation = widget.shippingAddress?.latLng;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.4),
              child: FlutterMap(
                mapController: mapController,
                options: MapOptions(
                  keepAlive: true,
                  center: pinLocation ?? LatLng(-6.914744, 107.609810),
                  zoom: pinLocation == null ? 12 : 18,
                  maxZoom: 18,
                  minZoom: 6,
                  onTap: _handleTap,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  ),
                  if (pinLocation != null) ...{
                    MarkerLayer(markers: [
                      Marker(
                        width: 80,
                        height: 80,
                        point: pinLocation!,
                        builder: (ctx) => Padding(
                          padding: const EdgeInsets.only(bottom: 22),
                          child: Icon(
                            Icons.location_on,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      )
                    ]),
                  }
                ],
              ),
            ),
            Positioned(
              top: 16,
              left: 16,
              right: 16,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => ConfirmationDialog(
                          actions: [
                            Expanded(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    "cancel_text".tr(),
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSecondary),
                                  )),
                            ),
                            Expanded(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "discard_changes_text".tr(),
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .error),
                                  ).tr()),
                            )
                          ],
                          title: 'discard_edit_address_title_text'.tr(),
                          content: 'discard_edit_address_content_text'.tr(),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 8),
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white),
                      child: const Icon(
                        Icons.arrow_back,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.white),
                      child: TypeAheadField(
                        textFieldConfiguration: TextFieldConfiguration(
                          controller: searchController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              isDense: true,
                              prefixIcon: const Icon(Icons.location_on),
                              prefixIconConstraints:
                                  const BoxConstraints(minWidth: 36),
                              hintStyle: const TextStyle(color: Colors.black38),
                              hintText: "search_address_text".tr()),
                        ),
                        suggestionsCallback: (pattern) async {
                          return await getSuggestions(pattern);
                        },
                        noItemsFoundBuilder: (_) => const Text(""),
                        itemBuilder: (context, Placemark suggestion) {
                          return ListTile(
                            leading: const Icon(Icons.location_on),
                            title: Text(
                                "${suggestion.street}, ${suggestion.subAdministrativeArea}"),
                            // subtitle: Text('\$${suggestion['price']}'),
                          );
                        },
                        onSuggestionSelected: (Placemark suggestion) {
                          setState(() async {
                            var location = await locationFromAddress(
                                CustomPlacemark(suggestion).toString());
                            pinLocation = LatLng(location.first.latitude,
                                location.first.longitude);
                            searchController.value = TextEditingValue(
                                text:
                                    "${suggestion.street}, ${suggestion.subAdministrativeArea}");
                            address = CustomPlacemark(suggestion).toString();
                            mapController.moveAndRotate(pinLocation!, 18, 0);
                          });
                        },
                        suggestionsBoxDecoration: SuggestionsBoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          elevation: 8.0,
                          color: Theme.of(context).cardColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(16),
                  width: MediaQuery.of(context).size.width,
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                "address_text",
                                style: Theme.of(context).textTheme.labelSmall,
                              ).tr()),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Text(address == null
                              ? "empty_address_text"
                              : address!),
                        ),
                        TextField(
                          controller: addressNotesController,
                          maxLength: 1000,
                          decoration:
                              InputDecoration(labelText: "notes_text".tr()),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: TextFormField(
                            controller: nameController,
                            autovalidateMode: AutovalidateMode.always,
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return ("this_section_cant_be_blank").tr();
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                                labelText: "recipient_name_text".tr()),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: TextFormField(
                            controller: contactController,
                            decoration: InputDecoration(
                                labelText: "recipient_contact_text".tr(),
                                prefixText: "+62 | "),
                            onChanged: (value) {
                              var formatedValue =
                                  value.replaceAll(RegExp(r'^0'), '');
                              contactController.value = TextEditingValue(
                                  text: formatedValue,
                                  selection: TextSelection.collapsed(
                                      offset: formatedValue.length));
                            },
                            autovalidateMode: AutovalidateMode.always,
                            validator: (value) {
                              String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
                              RegExp regExp = RegExp(patttern);
                              if (value == null || value.isEmpty) {
                                return 'enter_phone_number_text';
                              } else if (!regExp.hasMatch(value)) {
                                return 'enter_valid_phone_number_text';
                              }
                              return null;
                            },
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                              onPressed: validate()
                                  ? () {
                                      context
                                          .read<ShippingCubit>()
                                          .changeAddressInfo(
                                              address: address!,
                                              recepientName:
                                                  nameController.text,
                                              phoneNumber:
                                                  contactController.text,
                                              latLng: pinLocation!,
                                              addressNotes:
                                                  addressNotesController.text,
                                              authUser: widget.authUser)
                                          .whenComplete(
                                              () => Navigator.pop(context));
                                    }
                                  : null,
                              child: const Text("save_changes_text").tr()),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  bool validate() {
    if (formKey.currentState != null) {
      return formKey.currentState!.validate() && pinLocation != null;
    }
    return false;
  }

  void _handleTap(TapPosition tapPosition, LatLng latlng) async {
    try {
      var result =
          await placemarkFromCoordinates(latlng.latitude, latlng.longitude);
      setState(() {
        pinLocation = latlng;
        mapController.moveAndRotate(pinLocation!, 18, 0);
        address = CustomPlacemark(result.first).toString();
      });
    } catch (e) {}
  }

  Future<List<Placemark>> getSuggestions(String query) async {
    if (query.isNotEmpty) {
      try {
        var locations =
            await locationFromAddress(query, localeIdentifier: "id");
        return await getAddressList(locations: locations);
      } catch (e) {
        return [];
      }
    }
    return [];
  }

  Future<List<Placemark>> getAddressList(
      {required List<Location> locations}) async {
    try {
      List<Placemark> address = [];
      var result = await placemarkFromCoordinates(
          locations.first.latitude, locations.first.longitude);
      for (var r in result) {
        try {
          var validAddress = await locationFromAddress(r.street!);
          if (validAddress.isNotEmpty) {
            address.add(r);
          }
        } catch (e) {}
      }
      return address;
    } catch (e) {
      return [];
    }
  }
}
