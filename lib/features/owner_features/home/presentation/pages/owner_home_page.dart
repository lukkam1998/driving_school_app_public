import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../../common/widgets/drawer/owner_drawer.dart';
import '../../../../../core/app_models/lessons/live_lesson_view.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../common/widgets/page_template/page_template.dart';

import '../../../../../injection_container.dart';
import '../bloc/owner_home_bloc.dart';

class OwnerHomePage extends StatefulWidget {
  const OwnerHomePage({super.key});

  @override
  State<OwnerHomePage> createState() => _OwnerHomePageState();
}

class _OwnerHomePageState extends State<OwnerHomePage> {
  late BitmapDescriptor carIcon;
  String tutorFullname = '';
  String userFullname = '';
  String courseCategry = '';
  String markerId = '';

  late GoogleMapController? mapController;
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  static const CameraPosition _rzeszow = CameraPosition(
    target: LatLng(50.0412, 21.9991),
    zoom: 14.4746,
  );

  @override
  void initState() {
    BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(24, 24)),
      Assets.images.car.path,
    ).then((onValue) {
      carIcon = onValue;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    ValueNotifier<bool> isRideDataVisible = ValueNotifier(false);
    Set<Marker> markerSet = {};

    return BlocProvider(
      create: (context) =>
          sl<OwnerHomeBloc>()..add(const GetOngoingLessonsEvent()),
      child: Scaffold(
        backgroundColor: colorScheme.primary,
        drawer: const OwnerDrawer(),
        appBar: AppBar(
          elevation: 0,
          title: Text(
            S.of(context).home,
            style: textTheme.labelMedium,
          ),
        ),
        body: BlocBuilder<OwnerHomeBloc, OwnerHomeState>(
          builder: (context, state) {
            return state.lessonStream == null
                ? const SizedBox()
                : StreamBuilder(
                    stream: state.lessonStream,
                    builder: (context, snapshot) {
                      int snapshotLength = snapshot.data?.docs.length ?? 0;
                      Set<Marker> oldMarkers = markerSet;
                      for (int i = 0; i < snapshotLength; i++) {
                        final lessonLiveView = LiveLessonView.fromJson(
                          snapshot.data!.docs[i].data(),
                        );

                        final marker = Marker(
                          markerId: MarkerId(snapshot.data!.docs[i].id),
                          position: LatLng(
                            lessonLiveView.latitude,
                            lessonLiveView.longitude,
                          ),
                          icon: carIcon,
                          onTap: () {
                            _animateCameraToPoint(
                              lessonLiveView.latitude,
                              lessonLiveView.longitude,
                            );
                            _checkIfMarkerIsFocused(
                              snapshot,
                              i,
                              isRideDataVisible,
                              lessonLiveView,
                            );
                          },
                        );
                        if (!markerSet.contains(marker)) {
                          _animateCameraToPoint(lessonLiveView.latitude,
                              lessonLiveView.longitude);
                        }

                        markerSet.remove(snapshot.data!.docs[i].id);
                        markerSet.add(marker);
                      }
                      if (snapshotLength == 0) {
                        markerSet.clear();
                      }
                      final diff = oldMarkers.difference(markerSet);
                      markerSet.removeAll(diff);

                      return PageTemplate(
                        body: SafeArea(
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Expanded(
                                    child: GoogleMap(
                                      initialCameraPosition: _rzeszow,
                                      onMapCreated: _onMapCreated,
                                      markers: markerSet,
                                    ),
                                  ),
                                  ValueListenableBuilder(
                                    valueListenable: isRideDataVisible,
                                    builder: (context, value, child) =>
                                        AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      curve: Curves.fastOutSlowIn,
                                      height: isRideDataVisible.value ? 100 : 0,
                                      child: Column(
                                        children: [
                                          const SizedBox(height: 4),
                                          Container(
                                            height: 10,
                                            width: 60,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                            ),
                                          ),
                                          Text(
                                              '${S.of(context).category} $courseCategry' // ignore: lines_longer_than_80_chars
                                              ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(S.of(context).tutor),
                                                  Text(tutorFullname),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(S.of(context).trainee),
                                                  Text(userFullname),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              markerSet.isEmpty
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(top: 20),
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary
                                                .withOpacity(0.7),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Text(
                                            S.of(context).no_live_lessons,
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall
                                                ?.copyWith(fontSize: 22),
                                          ),
                                        ),
                                      ],
                                    )
                                  : const SizedBox(),
                            ],
                          ),
                        ),
                      );
                    },
                  );
          },
        ),
      ),
    );
  }

  void _checkIfMarkerIsFocused(
      AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot,
      int i,
      ValueNotifier<bool> isRideDataVisible,
      LiveLessonView lessonLiveView) {
    if (markerId == snapshot.data!.docs[i].id) {
      isRideDataVisible.value = !isRideDataVisible.value;
      tutorFullname = '';
      userFullname = '';
      markerId = '';
      courseCategry = '';
    } else {
      isRideDataVisible.value = !isRideDataVisible.value;
      tutorFullname =
          '${lessonLiveView.tutorName} ${lessonLiveView.tutorSurname}';
      userFullname = '${lessonLiveView.userName} ${lessonLiveView.userSurname}';
      markerId = snapshot.data!.docs[i].id;
      courseCategry = lessonLiveView.courseName;
    }
  }

  void _animateCameraToPoint(double lat, double lang) {
    mapController?.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(lat, lang),
          zoom: 18,
        ),
      ),
    );
  }
}
