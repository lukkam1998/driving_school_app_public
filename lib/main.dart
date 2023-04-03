import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/app_router/app_router.dart';
import 'core/providers/driving_lessons_provider/driving_lessons_bloc/driving_lessons_bloc.dart';
import 'core/services/user_data_service/user_data_service_cubit/user_data_service_cubit.dart';
import 'features/core_features/login/presentation/sign_in_bloc/sign_in_bloc.dart';
import 'features/owner_features/cars/presentation/bloc/cars_bloc.dart';
import 'injection_container.dart';
import 'firebase_options.dart';
import 'theme/theme_data.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependencies();
  debugRepaintRainbowEnabled = false;

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<SignInBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<DrivingLessonsBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<UserDataServiceCubit>(),
        ),
        BlocProvider(
          create: (context) => sl<CarsBloc>(),
        ),
      ],
      child: MaterialApp.router(
        routerDelegate: sl<AppRouter>().delegate(),
        routeInformationParser: sl<AppRouter>().defaultRouteParser(),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''),
          Locale('pl', ''),
        ],
        title: 'Manage drive school',
        theme: themeData,
      ),
    );
  }
}
