import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import '../../features/core_features/messages/presentation/pages/chat_page.dart';
import '../../features/core_features/messages/presentation/pages/owner_contacts_page.dart';
import '../../features/core_features/messages/presentation/pages/search_contacts_page.dart';
import '../../features/core_features/messages/presentation/pages/tutor_contacts_page.dart';
import '../../features/core_features/settings/presentation/pages/settings_page.dart';
import '../../features/owner_features/cars/presentation/pages/school_cars_page.dart';
import '../../features/owner_features/home/presentation/pages/owner_home_page.dart';
import '../../features/owner_features/manage_courses/presentation/pages/add_course_page.dart';
import '../../features/owner_features/manage_courses/presentation/pages/add_promotion_page.dart';
import '../../features/owner_features/manage_courses/presentation/pages/manage_courses_page.dart';
import '../../features/owner_features/manage_courses/presentation/pages/modify_course_page.dart';
import '../../features/owner_features/manage_courses/presentation/pages/ongoing_courses_page.dart';
import '../../features/owner_features/manage_courses/presentation/pages/promotions_page.dart';
import '../../features/owner_features/users_info/presentation/pages/create_instructor_account_page.dart';
import '../../features/owner_features/users_info/presentation/pages/list_of_users_page.dart';
import '../../features/owner_features/users_info/presentation/pages/users_info_page.dart';
import '../../features/tutor_features/start_lesson/presentation/pages/start_lesson_page.dart';
import '../../features/core_features/messages/presentation/pages/messages_page.dart';
import '../../features/owner_features/users_info/presentation/pages/user_details_page.dart';
import '../../features/tutor_features/tutor_home_page/presentation/pages/tutor_home_page.dart';
import '../../features/tutor_features/tutor_take_courses_page/presentation/pages/tutor_take_courses_page.dart';
import '../../features/user_features/driving_lessons/presentation/pages/drive_lesson_map_page.dart';
import '../../features/user_features/driving_lessons/presentation/pages/driving_courses_page.dart';
import '../../features/user_features/school_offer/presentation/pages/user_courses_page.dart';

import '../../features/core_features/login/presentation/pages/sign_in_page.dart';
import '../../features/core_features/login/presentation/pages/sign_up_page.dart';
import '../../features/user_features/driving_lessons/presentation/pages/driving_lessons_page.dart';
import '../../features/user_features/home/presentation/pages/first_login_page.dart';
import '../../features/user_features/home/presentation/pages/home_page.dart';
import '../../features/user_features/home/presentation/pages/home_page_body.dart';
import '../../features/user_features/school_offer/presentation/pages/school_courses_page.dart';
import '../../features/user_features/school_offer/presentation/pages/school_offer_page.dart';
import '../app_models/courses/course.dart';
import '../app_models/lessons/user_course_data.dart';
import '../app_models/lessons/user_lesson.dart';
import '../app_models/messages/contact.dart';
import '../app_models/messages/open_chat_on_enter.dart';
import '../app_models/promotions/promotion.dart';
import '../app_models/user_models/user_model.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
      initial: true,
      page: SignInPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      children: [],
    ),
    CustomRoute(
      page: SignUpPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: FirstLoginPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: HomePage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      children: [
        CustomRoute(
          name: 'MessagesRouter',
          page: MessagesPage,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
            name: 'SchoolOfferPageRouter',
            page: SchoolOfferPage,
            transitionsBuilder: TransitionsBuilders.fadeIn,
            children: []),
        CustomRoute(
          name: 'DrivingCoursesPageRouter',
          page: DrivingCoursesPage,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          name: 'HomePageRouter',
          page: HomePageBody,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
      ],
    ),
    CustomRoute(
      name: 'SchoolCourseRouter',
      page: SchoolCoursesPage,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    ),
    CustomRoute(
      name: 'UserCoursesRouter',
      page: UserCoursesPage,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    ),
    CustomRoute(
      name: 'TutorHomePageRouter',
      page: TutorHomePage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      name: 'DrivingLessonsRouter',
      page: DrivingLessonsPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      name: 'TutorTakeCoursesRouter',
      page: TutorTakeCoursesPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      name: 'ChatPageRouter',
      page: ChatPage,
      transitionsBuilder: TransitionsBuilders.slideRightWithFade,
    ),
    CustomRoute(
      name: 'TutorContactsRouter',
      page: TutorContactsPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      name: 'OwnerHomePageRouter',
      page: OwnerHomePage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      name: 'StartLessonRouter',
      page: StartLessonPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      name: 'SchoolCarsRouter',
      page: SchoolCarsPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      name: 'UsersInfoRouter',
      page: UsersInfoPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      name: 'OwnerContactsRouter',
      page: OwnerContactsPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      name: 'SettingsRouter',
      page: SettingsPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      name: 'ListOfUsersRouter',
      page: ListOfUsersPage,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    ),
    CustomRoute(
      name: 'SearchContactsRouter',
      page: SearchContactsPage,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    ),
    CustomRoute(
      name: 'CreateInstructorAccountRouter',
      page: CreateInstructorAccountPage,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    ),
    CustomRoute(
      name: 'ManageCoursesRouter',
      page: ManageCoursesPage,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    ),
    CustomRoute(
      name: 'OngoingCoursesRouter',
      page: OngoingCoursesPage,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    ),
    CustomRoute(
      name: 'AddCourseRouter',
      page: AddCoursePage,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    ),
    CustomRoute(
      name: 'ModifyCourseRouter',
      page: ModifyCoursePage,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    ),
    CustomRoute(
      name: 'PromotionsRouter',
      page: PromotionsPage,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    ),
    CustomRoute(
      name: 'UserDetailsRouter',
      page: UserDetailsPage,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    ),
    CustomRoute(
      name: 'AddPromotionRouter',
      page: AddPromotionPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      name: 'DriveLessonMapRouter',
      page: DriveLessonMapPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
  ],
)
// extend the generated private router
@lazySingleton
class AppRouter extends _$AppRouter {}
