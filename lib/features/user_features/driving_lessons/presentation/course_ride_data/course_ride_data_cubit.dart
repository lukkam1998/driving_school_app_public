import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_ride_data_state.dart';
part 'course_ride_data_cubit.freezed.dart';

class CourseRideDataCubit extends Cubit<CourseRideDataState> {
  CourseRideDataCubit() : super(const CourseRideDataState.initial());
}
