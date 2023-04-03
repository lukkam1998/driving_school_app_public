import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:managing_driving_school_app/core/app_models/lessons/user_lesson.dart';

import '../../../../../common/widgets/page_template/page_template.dart';
import '../../../../../generated/l10n.dart';

class DriveLessonMapPage extends StatefulWidget {
  final UserLesson userLesson;
  const DriveLessonMapPage({
    required this.userLesson,
    super.key,
  });

  @override
  State<DriveLessonMapPage> createState() => _DriveLessonMapPageState();
}

class _DriveLessonMapPageState extends State<DriveLessonMapPage> {
  late GoogleMapController? mapController;
  late PolylinePoints polylinePoints = PolylinePoints();
  List<LatLng> polylineCoordinates = [];
  Map<PolylineId, Polyline> polylines = {};

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(
            widget.userLesson.rideMarkes![0].latitude,
            widget.userLesson.rideMarkes![0].longitude,
          ),
          zoom: 14,
        ),
      ),
    );
  }

  static const CameraPosition _rzeszow = CameraPosition(
    target: LatLng(50.0412, 21.9991),
    zoom: 14.4746,
  );

  @override
  void initState() {
    super.initState();
    var sortedList = [...widget.userLesson.rideMarkes!];
    sortedList.forEach((element) {
      polylineCoordinates.add(LatLng(element.latitude, element.longitude));
    });
    PolylineId id = const PolylineId('poly');
    Polyline polyline = Polyline(
      polylineId: id,
      color: Colors.blue,
      points: polylineCoordinates,
      width: 3,
    );
    polylines[id] = polyline;
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.primary,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          S.of(context).your_ride,
          style: textTheme.labelMedium,
        ),
      ),
      body: PageTemplate(
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: GoogleMap(
                      polylines: Set<Polyline>.of(polylines.values),
                      initialCameraPosition: _rzeszow,
                      onMapCreated: _onMapCreated,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
