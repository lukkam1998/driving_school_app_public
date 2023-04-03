import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../app_models/app_exceptions.dart';

abstract class GeolocatorService {
  Future<bool> isLocationServicesAvailable();
  Future<bool> isUserPermittedLocationServices();
  Future<LocationPermission> requestUserLocationPermission();
  Future<LatLng> getCurrentPosition();
  Future<LatLng?> getLastKnownPosition();
  Future<void> openAppLocationSettings();
}

extension on GeolocatorPlatform {
  Future<LatLng> getCurrentPositionLatLng() async {
    final coords = await Geolocator.getCurrentPosition(
      forceAndroidLocationManager: true,
    );

    return LatLng(coords.latitude, coords.longitude);
  }

  Future<LatLng> getLastKnownPositionLatLng() async {
    final coords = await Geolocator.getLastKnownPosition();
    return LatLng(
      coords!.latitude,
      coords.longitude,
    );
  }
}

@LazySingleton(as: GeolocatorService)
class GeolocatorServiceImpl implements GeolocatorService {
  @override
  Future<bool> isLocationServicesAvailable() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  @override
  Future<bool> isUserPermittedLocationServices() async {
    LocationPermission userPermissions = await Geolocator.checkPermission();
    if (userPermissions == LocationPermission.unableToDetermine ||
        userPermissions == LocationPermission.denied ||
        userPermissions == LocationPermission.deniedForever) {
      return await requestUserLocationPermission()
          .then((value) => isUserPermittedLocationServices());
    }
    return true;
  }

  @override
  Future<LocationPermission> requestUserLocationPermission() async {
    final permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.deniedForever) {
      throw PermissionDeniedForeverException();
    }
    return permission;
  }

  @override
  Future<LatLng> getCurrentPosition() async {
    return await GeolocatorPlatform.instance.getCurrentPositionLatLng();
  }

  @override
  Future<LatLng?> getLastKnownPosition() async {
    return await GeolocatorPlatform.instance.getLastKnownPositionLatLng();
  }

  @override
  Future<void> openAppLocationSettings() async {
    await Geolocator.openLocationSettings();
  }
}
