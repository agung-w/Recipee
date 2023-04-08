import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:positioned_tap_detector_2/positioned_tap_detector_2.dart';

class EditAddressPage extends StatefulWidget {
  const EditAddressPage({super.key});

  @override
  State<EditAddressPage> createState() => _EditAddressPageState();
}

class _EditAddressPageState extends State<EditAddressPage> {
  LatLng? pinLocation = LatLng(0, 0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            FlutterMap(
              options: MapOptions(
                center: pinLocation,
                zoom: 18,
                maxZoom: 18,
                minZoom: 6,
                onTap: _handleTap,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'dev.fleaflet.flutter_map.example',
                ),
                if (pinLocation != null) ...{
                  MarkerLayer(markers: [
                    Marker(
                      width: 80,
                      height: 80,
                      point: pinLocation!,
                      builder: (ctx) => const Icon(Icons.point_of_sale),
                    )
                  ]),
                }
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Theme.of(context).colorScheme.background),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    isDense: true,
                    prefixIcon: const Icon(Icons.search),
                    prefixIconConstraints: const BoxConstraints(minWidth: 48),
                    hintStyle: const TextStyle(color: Colors.black38),
                    hintText: "search_address_text".tr()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleTap(TapPosition tapPosition, LatLng latlng) {
    log(latlng.toString());
    setState(() {
      pinLocation = latlng;
    });
  }
}
