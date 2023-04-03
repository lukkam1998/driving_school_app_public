// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SignInRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const SignInPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SignUpRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const SignUpPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    FirstLoginRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const FirstLoginPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SchoolCourseRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const SchoolCoursesPage(),
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UserCoursesRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const UserCoursesPage(),
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TutorHomePageRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const TutorHomePage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DrivingLessonsRouter.name: (routeData) {
      final args = routeData.argsAs<DrivingLessonsRouterArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: DrivingLessonsPage(
          userCourseData: args.userCourseData,
          key: args.key,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TutorTakeCoursesRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const TutorTakeCoursesPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ChatPageRouter.name: (routeData) {
      final args = routeData.argsAs<ChatPageRouterArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: ChatPage(
          key: args.key,
          contact: args.contact,
        ),
        transitionsBuilder: TransitionsBuilders.slideRightWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TutorContactsRouter.name: (routeData) {
      final args = routeData.argsAs<TutorContactsRouterArgs>(
          orElse: () => const TutorContactsRouterArgs());
      return CustomPage<dynamic>(
        routeData: routeData,
        child: TutorContactsPage(
          openChatOnEnter: args.openChatOnEnter,
          key: args.key,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OwnerHomePageRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const OwnerHomePage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    StartLessonRouter.name: (routeData) {
      final args = routeData.argsAs<StartLessonRouterArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: StartLessonPage(
          closestLesson: args.closestLesson,
          userCourseData: args.userCourseData,
          key: args.key,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SchoolCarsRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const SchoolCarsPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UsersInfoRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const UsersInfoPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OwnerContactsRouter.name: (routeData) {
      final args = routeData.argsAs<OwnerContactsRouterArgs>(
          orElse: () => const OwnerContactsRouterArgs());
      return CustomPage<dynamic>(
        routeData: routeData,
        child: OwnerContactsPage(
          openChatOnEnter: args.openChatOnEnter,
          key: args.key,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SettingsRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ListOfUsersRouter.name: (routeData) {
      final args = routeData.argsAs<ListOfUsersRouterArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: ListOfUsersPage(
          key: args.key,
          isInstructorsPreview: args.isInstructorsPreview,
        ),
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SearchContactsRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const SearchContactsPage(),
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    CreateInstructorAccountRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const CreateInstructorAccountPage(),
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ManageCoursesRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const ManageCoursesPage(),
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OngoingCoursesRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const OngoingCoursesPage(),
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AddCourseRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const AddCoursePage(),
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ModifyCourseRouter.name: (routeData) {
      final args = routeData.argsAs<ModifyCourseRouterArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: ModifyCoursePage(
          course: args.course,
          key: args.key,
        ),
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PromotionsRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const PromotionsPage(),
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UserDetailsRouter.name: (routeData) {
      final args = routeData.argsAs<UserDetailsRouterArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: UserDetailsPage(
          userModel: args.userModel,
          key: args.key,
        ),
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AddPromotionRouter.name: (routeData) {
      final args = routeData.argsAs<AddPromotionRouterArgs>(
          orElse: () => const AddPromotionRouterArgs());
      return CustomPage<dynamic>(
        routeData: routeData,
        child: AddPromotionPage(
          promotion: args.promotion,
          key: args.key,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DriveLessonMapRouter.name: (routeData) {
      final args = routeData.argsAs<DriveLessonMapRouterArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: DriveLessonMapPage(
          userLesson: args.userLesson,
          key: args.key,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MessagesRouter.name: (routeData) {
      final args = routeData.argsAs<MessagesRouterArgs>(
          orElse: () => const MessagesRouterArgs());
      return CustomPage<dynamic>(
        routeData: routeData,
        child: MessagesPage(
          openChatOnEnter: args.openChatOnEnter,
          key: args.key,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SchoolOfferPageRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const SchoolOfferPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DrivingCoursesPageRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const DrivingCoursesPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomePageRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const HomePageBody(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SignInRoute.name,
          path: '/',
        ),
        RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-page',
        ),
        RouteConfig(
          FirstLoginRoute.name,
          path: '/first-login-page',
        ),
        RouteConfig(
          HomeRoute.name,
          path: '/home-page',
          children: [
            RouteConfig(
              MessagesRouter.name,
              path: 'messages-page',
              parent: HomeRoute.name,
            ),
            RouteConfig(
              SchoolOfferPageRouter.name,
              path: 'school-offer-page',
              parent: HomeRoute.name,
            ),
            RouteConfig(
              DrivingCoursesPageRouter.name,
              path: 'driving-courses-page',
              parent: HomeRoute.name,
            ),
            RouteConfig(
              HomePageRouter.name,
              path: 'home-page-body',
              parent: HomeRoute.name,
            ),
          ],
        ),
        RouteConfig(
          SchoolCourseRouter.name,
          path: '/school-courses-page',
        ),
        RouteConfig(
          UserCoursesRouter.name,
          path: '/user-courses-page',
        ),
        RouteConfig(
          TutorHomePageRouter.name,
          path: '/tutor-home-page',
        ),
        RouteConfig(
          DrivingLessonsRouter.name,
          path: '/driving-lessons-page',
        ),
        RouteConfig(
          TutorTakeCoursesRouter.name,
          path: '/tutor-take-courses-page',
        ),
        RouteConfig(
          ChatPageRouter.name,
          path: '/chat-page',
        ),
        RouteConfig(
          TutorContactsRouter.name,
          path: '/tutor-contacts-page',
        ),
        RouteConfig(
          OwnerHomePageRouter.name,
          path: '/owner-home-page',
        ),
        RouteConfig(
          StartLessonRouter.name,
          path: '/start-lesson-page',
        ),
        RouteConfig(
          SchoolCarsRouter.name,
          path: '/school-cars-page',
        ),
        RouteConfig(
          UsersInfoRouter.name,
          path: '/users-info-page',
        ),
        RouteConfig(
          OwnerContactsRouter.name,
          path: '/owner-contacts-page',
        ),
        RouteConfig(
          SettingsRouter.name,
          path: '/settings-page',
        ),
        RouteConfig(
          ListOfUsersRouter.name,
          path: '/list-of-users-page',
        ),
        RouteConfig(
          SearchContactsRouter.name,
          path: '/search-contacts-page',
        ),
        RouteConfig(
          CreateInstructorAccountRouter.name,
          path: '/create-instructor-account-page',
        ),
        RouteConfig(
          ManageCoursesRouter.name,
          path: '/manage-courses-page',
        ),
        RouteConfig(
          OngoingCoursesRouter.name,
          path: '/ongoing-courses-page',
        ),
        RouteConfig(
          AddCourseRouter.name,
          path: '/add-course-page',
        ),
        RouteConfig(
          ModifyCourseRouter.name,
          path: '/modify-course-page',
        ),
        RouteConfig(
          PromotionsRouter.name,
          path: '/promotions-page',
        ),
        RouteConfig(
          UserDetailsRouter.name,
          path: '/user-details-page',
        ),
        RouteConfig(
          AddPromotionRouter.name,
          path: '/add-promotion-page',
        ),
        RouteConfig(
          DriveLessonMapRouter.name,
          path: '/drive-lesson-map-page',
        ),
      ];
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-page',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [FirstLoginPage]
class FirstLoginRoute extends PageRouteInfo<void> {
  const FirstLoginRoute()
      : super(
          FirstLoginRoute.name,
          path: '/first-login-page',
        );

  static const String name = 'FirstLoginRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/home-page',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [SchoolCoursesPage]
class SchoolCourseRouter extends PageRouteInfo<void> {
  const SchoolCourseRouter()
      : super(
          SchoolCourseRouter.name,
          path: '/school-courses-page',
        );

  static const String name = 'SchoolCourseRouter';
}

/// generated route for
/// [UserCoursesPage]
class UserCoursesRouter extends PageRouteInfo<void> {
  const UserCoursesRouter()
      : super(
          UserCoursesRouter.name,
          path: '/user-courses-page',
        );

  static const String name = 'UserCoursesRouter';
}

/// generated route for
/// [TutorHomePage]
class TutorHomePageRouter extends PageRouteInfo<void> {
  const TutorHomePageRouter()
      : super(
          TutorHomePageRouter.name,
          path: '/tutor-home-page',
        );

  static const String name = 'TutorHomePageRouter';
}

/// generated route for
/// [DrivingLessonsPage]
class DrivingLessonsRouter extends PageRouteInfo<DrivingLessonsRouterArgs> {
  DrivingLessonsRouter({
    required UserCourseData userCourseData,
    Key? key,
  }) : super(
          DrivingLessonsRouter.name,
          path: '/driving-lessons-page',
          args: DrivingLessonsRouterArgs(
            userCourseData: userCourseData,
            key: key,
          ),
        );

  static const String name = 'DrivingLessonsRouter';
}

class DrivingLessonsRouterArgs {
  const DrivingLessonsRouterArgs({
    required this.userCourseData,
    this.key,
  });

  final UserCourseData userCourseData;

  final Key? key;

  @override
  String toString() {
    return 'DrivingLessonsRouterArgs{userCourseData: $userCourseData, key: $key}';
  }
}

/// generated route for
/// [TutorTakeCoursesPage]
class TutorTakeCoursesRouter extends PageRouteInfo<void> {
  const TutorTakeCoursesRouter()
      : super(
          TutorTakeCoursesRouter.name,
          path: '/tutor-take-courses-page',
        );

  static const String name = 'TutorTakeCoursesRouter';
}

/// generated route for
/// [ChatPage]
class ChatPageRouter extends PageRouteInfo<ChatPageRouterArgs> {
  ChatPageRouter({
    Key? key,
    required Contact contact,
  }) : super(
          ChatPageRouter.name,
          path: '/chat-page',
          args: ChatPageRouterArgs(
            key: key,
            contact: contact,
          ),
        );

  static const String name = 'ChatPageRouter';
}

class ChatPageRouterArgs {
  const ChatPageRouterArgs({
    this.key,
    required this.contact,
  });

  final Key? key;

  final Contact contact;

  @override
  String toString() {
    return 'ChatPageRouterArgs{key: $key, contact: $contact}';
  }
}

/// generated route for
/// [TutorContactsPage]
class TutorContactsRouter extends PageRouteInfo<TutorContactsRouterArgs> {
  TutorContactsRouter({
    OpenChatOnEnter? openChatOnEnter,
    Key? key,
  }) : super(
          TutorContactsRouter.name,
          path: '/tutor-contacts-page',
          args: TutorContactsRouterArgs(
            openChatOnEnter: openChatOnEnter,
            key: key,
          ),
        );

  static const String name = 'TutorContactsRouter';
}

class TutorContactsRouterArgs {
  const TutorContactsRouterArgs({
    this.openChatOnEnter,
    this.key,
  });

  final OpenChatOnEnter? openChatOnEnter;

  final Key? key;

  @override
  String toString() {
    return 'TutorContactsRouterArgs{openChatOnEnter: $openChatOnEnter, key: $key}';
  }
}

/// generated route for
/// [OwnerHomePage]
class OwnerHomePageRouter extends PageRouteInfo<void> {
  const OwnerHomePageRouter()
      : super(
          OwnerHomePageRouter.name,
          path: '/owner-home-page',
        );

  static const String name = 'OwnerHomePageRouter';
}

/// generated route for
/// [StartLessonPage]
class StartLessonRouter extends PageRouteInfo<StartLessonRouterArgs> {
  StartLessonRouter({
    required UserLesson? closestLesson,
    required UserCourseData userCourseData,
    Key? key,
  }) : super(
          StartLessonRouter.name,
          path: '/start-lesson-page',
          args: StartLessonRouterArgs(
            closestLesson: closestLesson,
            userCourseData: userCourseData,
            key: key,
          ),
        );

  static const String name = 'StartLessonRouter';
}

class StartLessonRouterArgs {
  const StartLessonRouterArgs({
    required this.closestLesson,
    required this.userCourseData,
    this.key,
  });

  final UserLesson? closestLesson;

  final UserCourseData userCourseData;

  final Key? key;

  @override
  String toString() {
    return 'StartLessonRouterArgs{closestLesson: $closestLesson, userCourseData: $userCourseData, key: $key}';
  }
}

/// generated route for
/// [SchoolCarsPage]
class SchoolCarsRouter extends PageRouteInfo<void> {
  const SchoolCarsRouter()
      : super(
          SchoolCarsRouter.name,
          path: '/school-cars-page',
        );

  static const String name = 'SchoolCarsRouter';
}

/// generated route for
/// [UsersInfoPage]
class UsersInfoRouter extends PageRouteInfo<void> {
  const UsersInfoRouter()
      : super(
          UsersInfoRouter.name,
          path: '/users-info-page',
        );

  static const String name = 'UsersInfoRouter';
}

/// generated route for
/// [OwnerContactsPage]
class OwnerContactsRouter extends PageRouteInfo<OwnerContactsRouterArgs> {
  OwnerContactsRouter({
    OpenChatOnEnter? openChatOnEnter,
    Key? key,
  }) : super(
          OwnerContactsRouter.name,
          path: '/owner-contacts-page',
          args: OwnerContactsRouterArgs(
            openChatOnEnter: openChatOnEnter,
            key: key,
          ),
        );

  static const String name = 'OwnerContactsRouter';
}

class OwnerContactsRouterArgs {
  const OwnerContactsRouterArgs({
    this.openChatOnEnter,
    this.key,
  });

  final OpenChatOnEnter? openChatOnEnter;

  final Key? key;

  @override
  String toString() {
    return 'OwnerContactsRouterArgs{openChatOnEnter: $openChatOnEnter, key: $key}';
  }
}

/// generated route for
/// [SettingsPage]
class SettingsRouter extends PageRouteInfo<void> {
  const SettingsRouter()
      : super(
          SettingsRouter.name,
          path: '/settings-page',
        );

  static const String name = 'SettingsRouter';
}

/// generated route for
/// [ListOfUsersPage]
class ListOfUsersRouter extends PageRouteInfo<ListOfUsersRouterArgs> {
  ListOfUsersRouter({
    Key? key,
    required bool isInstructorsPreview,
  }) : super(
          ListOfUsersRouter.name,
          path: '/list-of-users-page',
          args: ListOfUsersRouterArgs(
            key: key,
            isInstructorsPreview: isInstructorsPreview,
          ),
        );

  static const String name = 'ListOfUsersRouter';
}

class ListOfUsersRouterArgs {
  const ListOfUsersRouterArgs({
    this.key,
    required this.isInstructorsPreview,
  });

  final Key? key;

  final bool isInstructorsPreview;

  @override
  String toString() {
    return 'ListOfUsersRouterArgs{key: $key, isInstructorsPreview: $isInstructorsPreview}';
  }
}

/// generated route for
/// [SearchContactsPage]
class SearchContactsRouter extends PageRouteInfo<void> {
  const SearchContactsRouter()
      : super(
          SearchContactsRouter.name,
          path: '/search-contacts-page',
        );

  static const String name = 'SearchContactsRouter';
}

/// generated route for
/// [CreateInstructorAccountPage]
class CreateInstructorAccountRouter extends PageRouteInfo<void> {
  const CreateInstructorAccountRouter()
      : super(
          CreateInstructorAccountRouter.name,
          path: '/create-instructor-account-page',
        );

  static const String name = 'CreateInstructorAccountRouter';
}

/// generated route for
/// [ManageCoursesPage]
class ManageCoursesRouter extends PageRouteInfo<void> {
  const ManageCoursesRouter()
      : super(
          ManageCoursesRouter.name,
          path: '/manage-courses-page',
        );

  static const String name = 'ManageCoursesRouter';
}

/// generated route for
/// [OngoingCoursesPage]
class OngoingCoursesRouter extends PageRouteInfo<void> {
  const OngoingCoursesRouter()
      : super(
          OngoingCoursesRouter.name,
          path: '/ongoing-courses-page',
        );

  static const String name = 'OngoingCoursesRouter';
}

/// generated route for
/// [AddCoursePage]
class AddCourseRouter extends PageRouteInfo<void> {
  const AddCourseRouter()
      : super(
          AddCourseRouter.name,
          path: '/add-course-page',
        );

  static const String name = 'AddCourseRouter';
}

/// generated route for
/// [ModifyCoursePage]
class ModifyCourseRouter extends PageRouteInfo<ModifyCourseRouterArgs> {
  ModifyCourseRouter({
    required Course course,
    Key? key,
  }) : super(
          ModifyCourseRouter.name,
          path: '/modify-course-page',
          args: ModifyCourseRouterArgs(
            course: course,
            key: key,
          ),
        );

  static const String name = 'ModifyCourseRouter';
}

class ModifyCourseRouterArgs {
  const ModifyCourseRouterArgs({
    required this.course,
    this.key,
  });

  final Course course;

  final Key? key;

  @override
  String toString() {
    return 'ModifyCourseRouterArgs{course: $course, key: $key}';
  }
}

/// generated route for
/// [PromotionsPage]
class PromotionsRouter extends PageRouteInfo<void> {
  const PromotionsRouter()
      : super(
          PromotionsRouter.name,
          path: '/promotions-page',
        );

  static const String name = 'PromotionsRouter';
}

/// generated route for
/// [UserDetailsPage]
class UserDetailsRouter extends PageRouteInfo<UserDetailsRouterArgs> {
  UserDetailsRouter({
    required UserModel userModel,
    Key? key,
  }) : super(
          UserDetailsRouter.name,
          path: '/user-details-page',
          args: UserDetailsRouterArgs(
            userModel: userModel,
            key: key,
          ),
        );

  static const String name = 'UserDetailsRouter';
}

class UserDetailsRouterArgs {
  const UserDetailsRouterArgs({
    required this.userModel,
    this.key,
  });

  final UserModel userModel;

  final Key? key;

  @override
  String toString() {
    return 'UserDetailsRouterArgs{userModel: $userModel, key: $key}';
  }
}

/// generated route for
/// [AddPromotionPage]
class AddPromotionRouter extends PageRouteInfo<AddPromotionRouterArgs> {
  AddPromotionRouter({
    Promotion? promotion,
    Key? key,
  }) : super(
          AddPromotionRouter.name,
          path: '/add-promotion-page',
          args: AddPromotionRouterArgs(
            promotion: promotion,
            key: key,
          ),
        );

  static const String name = 'AddPromotionRouter';
}

class AddPromotionRouterArgs {
  const AddPromotionRouterArgs({
    this.promotion,
    this.key,
  });

  final Promotion? promotion;

  final Key? key;

  @override
  String toString() {
    return 'AddPromotionRouterArgs{promotion: $promotion, key: $key}';
  }
}

/// generated route for
/// [DriveLessonMapPage]
class DriveLessonMapRouter extends PageRouteInfo<DriveLessonMapRouterArgs> {
  DriveLessonMapRouter({
    required UserLesson userLesson,
    Key? key,
  }) : super(
          DriveLessonMapRouter.name,
          path: '/drive-lesson-map-page',
          args: DriveLessonMapRouterArgs(
            userLesson: userLesson,
            key: key,
          ),
        );

  static const String name = 'DriveLessonMapRouter';
}

class DriveLessonMapRouterArgs {
  const DriveLessonMapRouterArgs({
    required this.userLesson,
    this.key,
  });

  final UserLesson userLesson;

  final Key? key;

  @override
  String toString() {
    return 'DriveLessonMapRouterArgs{userLesson: $userLesson, key: $key}';
  }
}

/// generated route for
/// [MessagesPage]
class MessagesRouter extends PageRouteInfo<MessagesRouterArgs> {
  MessagesRouter({
    OpenChatOnEnter? openChatOnEnter,
    Key? key,
  }) : super(
          MessagesRouter.name,
          path: 'messages-page',
          args: MessagesRouterArgs(
            openChatOnEnter: openChatOnEnter,
            key: key,
          ),
        );

  static const String name = 'MessagesRouter';
}

class MessagesRouterArgs {
  const MessagesRouterArgs({
    this.openChatOnEnter,
    this.key,
  });

  final OpenChatOnEnter? openChatOnEnter;

  final Key? key;

  @override
  String toString() {
    return 'MessagesRouterArgs{openChatOnEnter: $openChatOnEnter, key: $key}';
  }
}

/// generated route for
/// [SchoolOfferPage]
class SchoolOfferPageRouter extends PageRouteInfo<void> {
  const SchoolOfferPageRouter()
      : super(
          SchoolOfferPageRouter.name,
          path: 'school-offer-page',
        );

  static const String name = 'SchoolOfferPageRouter';
}

/// generated route for
/// [DrivingCoursesPage]
class DrivingCoursesPageRouter extends PageRouteInfo<void> {
  const DrivingCoursesPageRouter()
      : super(
          DrivingCoursesPageRouter.name,
          path: 'driving-courses-page',
        );

  static const String name = 'DrivingCoursesPageRouter';
}

/// generated route for
/// [HomePageBody]
class HomePageRouter extends PageRouteInfo<void> {
  const HomePageRouter()
      : super(
          HomePageRouter.name,
          path: 'home-page-body',
        );

  static const String name = 'HomePageRouter';
}
