// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:firebase_storage/firebase_storage.dart' as _i11;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i14;
import 'package:rxdart/rxdart.dart' as _i4;

import 'core/app_models/user_models/user_model.dart' as _i5;
import 'core/app_router/app_router.dart' as _i3;
import 'core/data_sources/firebase_courses_data_source.dart' as _i21;
import 'core/data_sources/firebase_lessons_data_source.dart' as _i22;
import 'core/data_sources/firebase_login_data_source.dart' as _i8;
import 'core/data_sources/firebase_messages_data_source.dart' as _i9;
import 'core/data_sources/firebase_owner_data_source.dart' as _i10;
import 'core/data_sources/firebase_promotions_data_source.dart' as _i23;
import 'core/data_sources/user_firebase_data_source.dart' as _i18;
import 'core/modules/firebase_auth_module.dart' as _i110;
import 'core/modules/firebase_storage_module.dart' as _i112;
import 'core/modules/firestore_module.dart' as _i111;
import 'core/modules/internet_connection_checker_module.dart' as _i114;
import 'core/modules/secure_storage_module.dart' as _i113;
import 'core/modules/user_data_stream.dart' as _i109;
import 'core/providers/driving_lessons_provider/data/repository/driving_lessons_repository_impl.dart'
    as _i60;
import 'core/providers/driving_lessons_provider/domain/repository/driving_lessons_repository.dart'
    as _i59;
import 'core/providers/driving_lessons_provider/domain/usecases/load_user_lessons_usecase.dart'
    as _i78;
import 'core/providers/driving_lessons_provider/driving_lessons_bloc/driving_lessons_bloc.dart'
    as _i102;
import 'core/services/lesson_service/lesson_service.dart' as _i27;
import 'core/services/location/geolocator_service.dart' as _i13;
import 'core/services/user_data_service/user_data_service.dart' as _i16;
import 'core/services/user_data_service/user_data_service_cubit/user_data_service_cubit.dart'
    as _i17;
import 'core/textfields_validators/textfield_validator.dart' as _i15;
import 'features/core_features/login/data/repositories/user_auth_repository_impl.dart'
    as _i48;
import 'features/core_features/login/domain/repositories/user_auth_repository.dart'
    as _i47;
import 'features/core_features/login/domain/usecases/sign_in_user_usecase.dart'
    as _i88;
import 'features/core_features/login/domain/usecases/sign_out_user_usecase.dart'
    as _i89;
import 'features/core_features/login/domain/usecases/sign_up_instructor_usecase.dart'
    as _i90;
import 'features/core_features/login/domain/usecases/sign_up_user_usecase.dart'
    as _i91;
import 'features/core_features/login/presentation/sign_in_bloc/sign_in_bloc.dart'
    as _i105;
import 'features/core_features/login/presentation/sign_up_bloc/sign_up_bloc.dart'
    as _i106;
import 'features/core_features/messages/data/repository/messages_repository_impl.dart'
    as _i30;
import 'features/core_features/messages/domain/repository/messages_repository.dart'
    as _i29;
import 'features/core_features/messages/domain/usecases/connect_with_chat_usecase.dart'
    as _i55;
import 'features/core_features/messages/domain/usecases/create_chat_with_user_usecase.dart'
    as _i58;
import 'features/core_features/messages/domain/usecases/load_user_contacts_usecase.dart'
    as _i76;
import 'features/core_features/messages/domain/usecases/search_contact_usecase.dart'
    as _i39;
import 'features/core_features/messages/domain/usecases/send_message_usecase.dart'
    as _i40;
import 'features/core_features/messages/presentation/contacts_bloc/contacts_bloc.dart'
    as _i101;
import 'features/core_features/messages/presentation/messages_bloc/messages_bloc.dart'
    as _i80;
import 'features/owner_features/cars/data/repositories/cars_repository_impl.dart'
    as _i20;
import 'features/owner_features/cars/domain/repositories/cars_repository.dart'
    as _i19;
import 'features/owner_features/cars/domain/usecases/add_car_usecase.dart'
    as _i51;
import 'features/owner_features/cars/domain/usecases/get_cars_usecase.dart'
    as _i24;
import 'features/owner_features/cars/domain/usecases/modify_car_usecase.dart'
    as _i31;
import 'features/owner_features/cars/domain/usecases/remove_car_usecase.dart'
    as _i36;
import 'features/owner_features/cars/presentation/bloc/cars_bloc.dart' as _i54;
import 'features/owner_features/home/data/repository/owner_home_repository_impl.dart'
    as _i33;
import 'features/owner_features/home/domain/repository/owner_home_repository.dart'
    as _i32;
import 'features/owner_features/home/domain/usecases/get_ongoing_lessons_usecase.dart'
    as _i69;
import 'features/owner_features/home/presentation/bloc/owner_home_bloc.dart'
    as _i83;
import 'features/owner_features/manage_courses/data/repositories/courses_repository_impl.dart'
    as _i57;
import 'features/owner_features/manage_courses/data/repositories/promotions_repository_impl.dart'
    as _i35;
import 'features/owner_features/manage_courses/domain/repositories/courses_repository.dart'
    as _i56;
import 'features/owner_features/manage_courses/domain/repositories/promotions_repository.dart'
    as _i34;
import 'features/owner_features/manage_courses/domain/usecases/add_course_usecase.dart'
    as _i97;
import 'features/owner_features/manage_courses/domain/usecases/add_promotion_usecase.dart'
    as _i52;
import 'features/owner_features/manage_courses/domain/usecases/edit_promotion_usecase.dart'
    as _i62;
import 'features/owner_features/manage_courses/domain/usecases/end_promotion_usecase.dart'
    as _i64;
import 'features/owner_features/manage_courses/domain/usecases/get_ongoing_courses_usecase.dart'
    as _i68;
import 'features/owner_features/manage_courses/domain/usecases/get_promotions_usecase.dart'
    as _i70;
import 'features/owner_features/manage_courses/domain/usecases/modify_course_usecase.dart'
    as _i81;
import 'features/owner_features/manage_courses/presentation/add_course_bloc/add_course_bloc.dart'
    as _i108;
import 'features/owner_features/manage_courses/presentation/manage_courses_blc/manage_courses_bloc.dart'
    as _i79;
import 'features/owner_features/manage_courses/presentation/modify_course_cubit/modify_course_cubit.dart'
    as _i103;
import 'features/owner_features/manage_courses/presentation/promotion_manager_bloc/promotions_manager_bloc.dart'
    as _i85;
import 'features/owner_features/users_info/data/repositories/users_informations_repository_impl.dart'
    as _i50;
import 'features/owner_features/users_info/domain/repositories/users_informations_repository.dart'
    as _i49;
import 'features/owner_features/users_info/domain/usecases/get_instructors_info_usecase.dart'
    as _i67;
import 'features/owner_features/users_info/domain/usecases/get_standard_users_info_usecase.dart'
    as _i71;
import 'features/owner_features/users_info/domain/usecases/get_user_details_usecase.dart'
    as _i72;
import 'features/owner_features/users_info/presentation/user_details_bloc/user_details_bloc.dart'
    as _i95;
import 'features/owner_features/users_info/presentation/users_info_bloc/users_info_bloc.dart'
    as _i96;
import 'features/tutor_features/start_lesson/data/repositories/start_lesson_repository_impl.dart'
    as _i42;
import 'features/tutor_features/start_lesson/domain/repositories/start_lesson_repository.dart'
    as _i41;
import 'features/tutor_features/start_lesson/domain/usecases/end_lesson_usecase.dart'
    as _i63;
import 'features/tutor_features/start_lesson/domain/usecases/start_lesson_usecase.dart'
    as _i43;
import 'features/tutor_features/start_lesson/presentation/start_lesson_bloc/start_lesson_bloc.dart'
    as _i92;
import 'features/tutor_features/tutor_repository/repositories/tutor_repository.dart'
    as _i44;
import 'features/tutor_features/tutor_repository/repositories/tutor_repository_impl.dart'
    as _i45;
import 'features/tutor_features/tutor_take_courses_page/domain/usecases/load_unapproved_courses_usecase.dart'
    as _i75;
import 'features/tutor_features/tutor_take_courses_page/domain/usecases/take_course_usecase.dart'
    as _i93;
import 'features/tutor_features/tutor_take_courses_page/presentation/take_course_cubit/take_course_cubit.dart'
    as _i107;
import 'features/tutor_features/tutor_take_courses_page/presentation/tutor_take_courses_bloc/tutor_take_courses_bloc.dart'
    as _i94;
import 'features/user_features/driving_lessons/domain/usecases/cancel_lesson_usecase.dart'
    as _i99;
import 'features/user_features/driving_lessons/domain/usecases/confirm_lesson_usecase.dart'
    as _i100;
import 'features/user_features/driving_lessons/domain/usecases/modify_lesson_usecase.dart'
    as _i82;
import 'features/user_features/driving_lessons/domain/usecases/plan_lesson_usecase.dart'
    as _i84;
import 'features/user_features/driving_lessons/presentation/plan_lesson_cubit/plan_lesson_cubit.dart'
    as _i104;
import 'features/user_features/home/data/repository/home_page_repository_impl.dart'
    as _i26;
import 'features/user_features/home/domain/repository/home_page_repository.dart'
    as _i25;
import 'features/user_features/home/domain/usecases/load_promotions_usecase.dart'
    as _i28;
import 'features/user_features/home/domain/usecases/update_user_data_usecase.dart'
    as _i46;
import 'features/user_features/home/presentation/first_login_bloc/first_login_bloc.dart'
    as _i66;
import 'features/user_features/home/presentation/home_bloc/home_bloc.dart'
    as _i73;
import 'features/user_features/school_offer/data/repository/school_offer_repository_impl.dart'
    as _i38;
import 'features/user_features/school_offer/domain/repository/school_offer_repository.dart'
    as _i37;
import 'features/user_features/school_offer/domain/usecases/buy_more_hours_usecase.dart'
    as _i53;
import 'features/user_features/school_offer/domain/usecases/drop_out_of_course_usecase.dart'
    as _i61;
import 'features/user_features/school_offer/domain/usecases/enroll_user_to_course_usecase.dart'
    as _i65;
import 'features/user_features/school_offer/domain/usecases/load_courses_usecase.dart'
    as _i74;
import 'features/user_features/school_offer/domain/usecases/load_user_courses_usecase.dart'
    as _i77;
import 'features/user_features/school_offer/presentation/buy_more_hours_cubit/buy_more_hours_cubit.dart'
    as _i98;
import 'features/user_features/school_offer/presentation/school_enroll_course_cubit/school_enroll_course_cubit.dart'
    as _i86;
import 'features/user_features/school_offer/presentation/school_offer_bloc/school_offer_bloc.dart'
    as _i87; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final userDataStreamModule = _$UserDataStreamModule();
  final firebaseAuthModule = _$FirebaseAuthModule();
  final firestoreModule = _$FirestoreModule();
  final firebaseStorageModule = _$FirebaseStorageModule();
  final secureStorageModule = _$SecureStorageModule();
  final internetConnectionCheckerModule = _$InternetConnectionCheckerModule();
  gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
  gh.lazySingleton<_i4.BehaviorSubject<_i5.UserModel>>(
      () => userDataStreamModule.userDataStream);
  gh.lazySingleton<_i6.FirebaseAuth>(() => firebaseAuthModule.firebaseAuth);
  gh.lazySingleton<_i7.FirebaseFirestore>(() => firestoreModule.firestore);
  gh.lazySingleton<_i8.FirebaseLoginDataSource>(
      () => _i8.FirebaseLoginDataSourceImpl(
            get<_i7.FirebaseFirestore>(),
            get<_i6.FirebaseAuth>(),
          ));
  gh.lazySingleton<_i9.FirebaseMessagesDataSource>(
      () => _i9.FirebaseMessagesDataSourceImpl(get<_i7.FirebaseFirestore>()));
  gh.lazySingleton<_i10.FirebaseOwnerDataSource>(
      () => _i10.FirebaseOwnerDataSourceImpl(get<_i7.FirebaseFirestore>()));
  gh.lazySingleton<_i11.FirebaseStorage>(
      () => firebaseStorageModule.firebaseStorage);
  gh.lazySingleton<_i12.FlutterSecureStorage>(
      () => secureStorageModule.secStorage);
  gh.lazySingleton<_i13.GeolocatorService>(() => _i13.GeolocatorServiceImpl());
  gh.lazySingleton<_i14.InternetConnectionChecker>(
      () => internetConnectionCheckerModule.connectionChecker);
  gh.lazySingleton<_i15.TextFieldValidator>(() => _i15.TextFieldValidator());
  gh.lazySingleton<_i16.UserDataService>(
      () => _i16.UserDataService(get<_i4.BehaviorSubject<_i5.UserModel>>()));
  gh.factory<_i17.UserDataServiceCubit>(
      () => _i17.UserDataServiceCubit(get<_i16.UserDataService>()));
  gh.lazySingleton<_i18.UserFirebaseDataSource>(
      () => _i18.UserFirebaseDataSourceImpl(
            get<_i7.FirebaseFirestore>(),
            get<_i11.FirebaseStorage>(),
          ));
  gh.lazySingleton<_i19.CarsRepository>(
      () => _i20.CarsRepositoryImpl(get<_i10.FirebaseOwnerDataSource>()));
  gh.lazySingleton<_i21.FirebaseCourseDataSource>(
      () => _i21.FirebaseCourseDataSourceImpl(
            get<_i7.FirebaseFirestore>(),
            get<_i16.UserDataService>(),
          ));
  gh.lazySingleton<_i22.FirebaseLessonsDataSource>(
      () => _i22.FirebaseLessonsDataSourceImpl(
            get<_i7.FirebaseFirestore>(),
            get<_i13.GeolocatorService>(),
          ));
  gh.lazySingleton<_i23.FirebasePromotionsDataSource>(
      () => _i23.FirebasePromotionsDataSourceImpl(
            get<_i7.FirebaseFirestore>(),
            get<_i11.FirebaseStorage>(),
          ));
  gh.lazySingleton<_i24.GetCarsUsecase>(
      () => _i24.GetCarsUsecase(get<_i19.CarsRepository>()));
  gh.lazySingleton<_i25.HomePageRepository>(() => _i26.HomePageRepositoryImpl(
        get<_i16.UserDataService>(),
        get<_i18.UserFirebaseDataSource>(),
        get<_i21.FirebaseCourseDataSource>(),
      ));
  gh.lazySingleton<_i27.LessonService>(() => _i27.LessonService(
        get<_i22.FirebaseLessonsDataSource>(),
        get<_i18.UserFirebaseDataSource>(),
      ));
  gh.lazySingleton<_i28.LoadPromotionsUsecase>(
      () => _i28.LoadPromotionsUsecase(get<_i25.HomePageRepository>()));
  gh.lazySingleton<_i29.MessagesRepository>(() => _i30.MessagesRepositoryImpl(
        get<_i9.FirebaseMessagesDataSource>(),
        get<_i16.UserDataService>(),
      ));
  gh.lazySingleton<_i31.ModifyCarUsecase>(
      () => _i31.ModifyCarUsecase(get<_i19.CarsRepository>()));
  gh.lazySingleton<_i32.OwnerHomeRepository>(() =>
      _i33.OwnerHomeRepositoryImpl(get<_i22.FirebaseLessonsDataSource>()));
  gh.lazySingleton<_i34.PromotionsRepository>(() =>
      _i35.PromotionsRepositoryImpl(get<_i23.FirebasePromotionsDataSource>()));
  gh.lazySingleton<_i36.RemoveCarUsecase>(
      () => _i36.RemoveCarUsecase(get<_i19.CarsRepository>()));
  gh.lazySingleton<_i37.SchoolOfferRepository>(
      () => _i38.SchoolOfferRepositoryImpl(
            get<_i21.FirebaseCourseDataSource>(),
            get<_i16.UserDataService>(),
          ));
  gh.lazySingleton<_i39.SearchContactUsecase>(
      () => _i39.SearchContactUsecase(get<_i29.MessagesRepository>()));
  gh.lazySingleton<_i40.SendMessageUsecase>(
      () => _i40.SendMessageUsecase(get<_i29.MessagesRepository>()));
  gh.lazySingleton<_i41.StartLessonRepository>(
      () => _i42.StartLessonRepositoryImpl(
            get<_i13.GeolocatorService>(),
            get<_i27.LessonService>(),
          ));
  gh.lazySingleton<_i43.StartLessonUsecase>(
      () => _i43.StartLessonUsecase(get<_i41.StartLessonRepository>()));
  gh.lazySingleton<_i44.TutorRepository>(() => _i45.TutorRepositoryImpl(
        get<_i9.FirebaseMessagesDataSource>(),
        get<_i21.FirebaseCourseDataSource>(),
        get<_i18.UserFirebaseDataSource>(),
        get<_i16.UserDataService>(),
      ));
  gh.lazySingleton<_i46.UpdateUserDataUsecase>(
      () => _i46.UpdateUserDataUsecase(get<_i25.HomePageRepository>()));
  gh.lazySingleton<_i47.UserAuthRepository>(() => _i48.UserAuthRepositoryImpl(
        get<_i8.FirebaseLoginDataSource>(),
        get<_i16.UserDataService>(),
      ));
  gh.lazySingleton<_i49.UsersInformationsRepository>(
      () => _i50.UsersInformationsRepositoryImpl(
            get<_i10.FirebaseOwnerDataSource>(),
            get<_i21.FirebaseCourseDataSource>(),
          ));
  gh.lazySingleton<_i51.AddCarUsecase>(
      () => _i51.AddCarUsecase(get<_i19.CarsRepository>()));
  gh.lazySingleton<_i52.AddPromotionUsecase>(
      () => _i52.AddPromotionUsecase(get<_i34.PromotionsRepository>()));
  gh.lazySingleton<_i53.BuyMoreHoursUsecase>(
      () => _i53.BuyMoreHoursUsecase(get<_i37.SchoolOfferRepository>()));
  gh.factory<_i54.CarsBloc>(() => _i54.CarsBloc(
        get<_i51.AddCarUsecase>(),
        get<_i24.GetCarsUsecase>(),
        get<_i31.ModifyCarUsecase>(),
        get<_i36.RemoveCarUsecase>(),
      ));
  gh.lazySingleton<_i55.ConnectWithChatUsecase>(
      () => _i55.ConnectWithChatUsecase(get<_i29.MessagesRepository>()));
  gh.lazySingleton<_i56.CoursesRepository>(
      () => _i57.CoursesRepositoryImpl(get<_i21.FirebaseCourseDataSource>()));
  gh.lazySingleton<_i58.CreateChatWithUserUsecase>(
      () => _i58.CreateChatWithUserUsecase(get<_i29.MessagesRepository>()));
  gh.lazySingleton<_i59.DrivingLessonsRepository>(
      () => _i60.DrivingLessonsRepositoryImpl(
            get<_i22.FirebaseLessonsDataSource>(),
            get<_i16.UserDataService>(),
            get<_i21.FirebaseCourseDataSource>(),
            get<_i18.UserFirebaseDataSource>(),
          ));
  gh.lazySingleton<_i61.DropOutOfCourseUsecase>(
      () => _i61.DropOutOfCourseUsecase(get<_i37.SchoolOfferRepository>()));
  gh.lazySingleton<_i62.EditPromotionUsecase>(
      () => _i62.EditPromotionUsecase(get<_i34.PromotionsRepository>()));
  gh.lazySingleton<_i63.EndLessonUsecase>(
      () => _i63.EndLessonUsecase(get<_i41.StartLessonRepository>()));
  gh.lazySingleton<_i64.EndPromotionUsecase>(
      () => _i64.EndPromotionUsecase(get<_i34.PromotionsRepository>()));
  gh.lazySingleton<_i65.EnrollUserToCourseUsecase>(
      () => _i65.EnrollUserToCourseUsecase(get<_i37.SchoolOfferRepository>()));
  gh.factory<_i66.FirstLoginBloc>(() => _i66.FirstLoginBloc(
      updateUserDataUsecase: get<_i46.UpdateUserDataUsecase>()));
  gh.lazySingleton<_i67.GetInstructorsInfoUsecase>(() =>
      _i67.GetInstructorsInfoUsecase(get<_i49.UsersInformationsRepository>()));
  gh.lazySingleton<_i68.GetOngoingCoursesUsecase>(
      () => _i68.GetOngoingCoursesUsecase(get<_i56.CoursesRepository>()));
  gh.lazySingleton<_i69.GetOngoingLessonsUsecase>(
      () => _i69.GetOngoingLessonsUsecase(get<_i32.OwnerHomeRepository>()));
  gh.lazySingleton<_i70.GetPromotionsUsecase>(
      () => _i70.GetPromotionsUsecase(get<_i34.PromotionsRepository>()));
  gh.lazySingleton<_i71.GetStandardUsersInfoUsecase>(() =>
      _i71.GetStandardUsersInfoUsecase(
          get<_i49.UsersInformationsRepository>()));
  gh.lazySingleton<_i72.GetUserDetailsUsecase>(() =>
      _i72.GetUserDetailsUsecase(get<_i49.UsersInformationsRepository>()));
  gh.factory<_i73.HomeBloc>(
      () => _i73.HomeBloc(get<_i28.LoadPromotionsUsecase>()));
  gh.lazySingleton<_i74.LoadCoursesUsecase>(
      () => _i74.LoadCoursesUsecase(get<_i37.SchoolOfferRepository>()));
  gh.lazySingleton<_i75.LoadUnapprovedCoursesUsecase>(
      () => _i75.LoadUnapprovedCoursesUsecase(get<_i44.TutorRepository>()));
  gh.lazySingleton<_i76.LoadUserContactsUsecase>(
      () => _i76.LoadUserContactsUsecase(get<_i29.MessagesRepository>()));
  gh.lazySingleton<_i77.LoadUserCoursesUsecase>(
      () => _i77.LoadUserCoursesUsecase(get<_i37.SchoolOfferRepository>()));
  gh.lazySingleton<_i78.LoadUserLessonsUsecase>(
      () => _i78.LoadUserLessonsUsecase(get<_i59.DrivingLessonsRepository>()));
  gh.factory<_i79.ManageCoursesBloc>(
      () => _i79.ManageCoursesBloc(get<_i68.GetOngoingCoursesUsecase>()));
  gh.factory<_i80.MessagesBloc>(() => _i80.MessagesBloc(
        get<_i55.ConnectWithChatUsecase>(),
        get<_i40.SendMessageUsecase>(),
      ));
  gh.lazySingleton<_i81.ModifyCourseUsecase>(
      () => _i81.ModifyCourseUsecase(get<_i56.CoursesRepository>()));
  gh.lazySingleton<_i82.ModifyLessonUsecase>(
      () => _i82.ModifyLessonUsecase(get<_i59.DrivingLessonsRepository>()));
  gh.factory<_i83.OwnerHomeBloc>(
      () => _i83.OwnerHomeBloc(get<_i69.GetOngoingLessonsUsecase>()));
  gh.lazySingleton<_i84.PlanLessonUsecase>(
      () => _i84.PlanLessonUsecase(get<_i59.DrivingLessonsRepository>()));
  gh.factory<_i85.PromotionsManagerBloc>(() => _i85.PromotionsManagerBloc(
        get<_i52.AddPromotionUsecase>(),
        get<_i62.EditPromotionUsecase>(),
        get<_i64.EndPromotionUsecase>(),
        get<_i70.GetPromotionsUsecase>(),
      ));
  gh.factory<_i86.SchoolEnrollCourseCubit>(() => _i86.SchoolEnrollCourseCubit(
        get<_i65.EnrollUserToCourseUsecase>(),
        get<_i61.DropOutOfCourseUsecase>(),
      ));
  gh.factory<_i87.SchoolOfferBloc>(() => _i87.SchoolOfferBloc(
        get<_i74.LoadCoursesUsecase>(),
        get<_i77.LoadUserCoursesUsecase>(),
      ));
  gh.lazySingleton<_i88.SignInUserUsecase>(
      () => _i88.SignInUserUsecase(get<_i47.UserAuthRepository>()));
  gh.lazySingleton<_i89.SignOutUserUsecase>(
      () => _i89.SignOutUserUsecase(get<_i47.UserAuthRepository>()));
  gh.lazySingleton<_i90.SignUpInstructorUsecase>(
      () => _i90.SignUpInstructorUsecase(get<_i47.UserAuthRepository>()));
  gh.lazySingleton<_i91.SignUpUserUsecase>(
      () => _i91.SignUpUserUsecase(get<_i47.UserAuthRepository>()));
  gh.factory<_i92.StartLessonBloc>(() => _i92.StartLessonBloc(
        get<_i63.EndLessonUsecase>(),
        get<_i43.StartLessonUsecase>(),
      ));
  gh.lazySingleton<_i93.TakeCourseUsecase>(
      () => _i93.TakeCourseUsecase(get<_i44.TutorRepository>()));
  gh.factory<_i94.TutorTakeCoursesBloc>(() => _i94.TutorTakeCoursesBloc(
      loadUnapprovedCoursesUsecase: get<_i75.LoadUnapprovedCoursesUsecase>()));
  gh.factory<_i95.UserDetailsBloc>(
      () => _i95.UserDetailsBloc(get<_i72.GetUserDetailsUsecase>()));
  gh.factory<_i96.UsersInfoBloc>(() => _i96.UsersInfoBloc(
        get<_i67.GetInstructorsInfoUsecase>(),
        get<_i71.GetStandardUsersInfoUsecase>(),
      ));
  gh.lazySingleton<_i97.AddCourseUsecase>(
      () => _i97.AddCourseUsecase(get<_i56.CoursesRepository>()));
  gh.factory<_i98.BuyMoreHoursCubit>(
      () => _i98.BuyMoreHoursCubit(get<_i53.BuyMoreHoursUsecase>()));
  gh.lazySingleton<_i99.CancelLessonUsecase>(
      () => _i99.CancelLessonUsecase(get<_i59.DrivingLessonsRepository>()));
  gh.lazySingleton<_i100.ConfirmLessonUsecase>(
      () => _i100.ConfirmLessonUsecase(get<_i59.DrivingLessonsRepository>()));
  gh.factory<_i101.ContactsBloc>(() => _i101.ContactsBloc(
        get<_i76.LoadUserContactsUsecase>(),
        get<_i39.SearchContactUsecase>(),
        get<_i58.CreateChatWithUserUsecase>(),
      ));
  gh.factory<_i102.DrivingLessonsBloc>(
      () => _i102.DrivingLessonsBloc(get<_i78.LoadUserLessonsUsecase>()));
  gh.factory<_i103.ModifyCourseCubit>(
      () => _i103.ModifyCourseCubit(get<_i81.ModifyCourseUsecase>()));
  gh.factory<_i104.PlanLessonCubit>(() => _i104.PlanLessonCubit(
        get<_i84.PlanLessonUsecase>(),
        get<_i99.CancelLessonUsecase>(),
        get<_i82.ModifyLessonUsecase>(),
        get<_i100.ConfirmLessonUsecase>(),
      ));
  gh.factory<_i105.SignInBloc>(() => _i105.SignInBloc(
        signInUserUsecase: get<_i88.SignInUserUsecase>(),
        signOutUserUsecase: get<_i89.SignOutUserUsecase>(),
        userDataService: get<_i16.UserDataService>(),
      ));
  gh.factory<_i106.SignUpBloc>(() => _i106.SignUpBloc(
        get<_i91.SignUpUserUsecase>(),
        get<_i90.SignUpInstructorUsecase>(),
      ));
  gh.factory<_i107.TakeCourseCubit>(() =>
      _i107.TakeCourseCubit(takeCourseUsecase: get<_i93.TakeCourseUsecase>()));
  gh.factory<_i108.AddCourseBloc>(
      () => _i108.AddCourseBloc(get<_i97.AddCourseUsecase>()));
  return get;
}

class _$UserDataStreamModule extends _i109.UserDataStreamModule {}

class _$FirebaseAuthModule extends _i110.FirebaseAuthModule {}

class _$FirestoreModule extends _i111.FirestoreModule {}

class _$FirebaseStorageModule extends _i112.FirebaseStorageModule {}

class _$SecureStorageModule extends _i113.SecureStorageModule {}

class _$InternetConnectionCheckerModule
    extends _i114.InternetConnectionCheckerModule {}
