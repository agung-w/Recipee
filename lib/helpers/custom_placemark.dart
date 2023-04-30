import 'package:geocoding/geocoding.dart';

class CustomPlacemark extends Placemark {
  CustomPlacemark(Placemark placemark)
      : super(
          name: placemark.name,
          street: placemark.street,
          isoCountryCode: placemark.isoCountryCode,
          country: placemark.country,
          postalCode: placemark.postalCode,
          administrativeArea: placemark.administrativeArea,
          subAdministrativeArea: placemark.subAdministrativeArea,
          locality: placemark.locality,
          subLocality: placemark.subLocality,
          thoroughfare: placemark.thoroughfare,
          subThoroughfare: placemark.subThoroughfare,
        );

  @override
  String toString() {
    return "$street${street != null ? street!.isNotEmpty ? "," : "" : ""} $subLocality${subLocality != null ? subLocality!.isNotEmpty ? "," : "" : ""} $locality${locality != null ? locality!.isNotEmpty ? "," : "" : ""} $subAdministrativeArea${subAdministrativeArea != null ? subAdministrativeArea!.isNotEmpty ? "," : "" : ""} $administrativeArea${administrativeArea != null ? administrativeArea!.isNotEmpty ? "," : "" : ""} $country${country != null ? country!.isNotEmpty ? "," : "" : ""} $postalCode";
  }
}
