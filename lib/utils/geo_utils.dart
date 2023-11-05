import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:url_launcher/url_launcher.dart';

class GeoHelper {
static Future<Position> getCurrentPosition() async =>
    await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.bestForNavigation,
      // forceAndroidLocationManager: true,
    );

static Future<Position?> getLastKnownPosition() async =>
    await Geolocator.getLastKnownPosition(forceAndroidLocationManager: true);

static Future<Position> getPosition() async {
  Position? position = await GeoHelper.getLastKnownPosition();
  return position ??= await GeoHelper.getCurrentPosition();
}

  static Future<void> openInMaps(
    String address,
  ) async {
    late final List<Location> location;
    try {
      location = await locationFromAddress(address);
      await launchUrl(
        Uri.parse('geo:${location[0].latitude},${location[0].longitude}'),
        mode: LaunchMode.externalApplication,
      );
    } on PlatformException catch ( e) {
      throw Exception(e.message);
    }
  }
}
