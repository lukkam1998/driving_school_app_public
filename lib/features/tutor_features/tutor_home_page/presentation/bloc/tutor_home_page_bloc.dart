import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'tutor_home_page_event.dart';
part 'tutor_home_page_state.dart';

class TutorHomePageBloc extends Bloc<TutorHomePageEvent, TutorHomePageState> {
  TutorHomePageBloc() : super(TutorHomePageInitial()) {
    on<TutorHomePageEvent>((event, emit) {
    });
  }
}
