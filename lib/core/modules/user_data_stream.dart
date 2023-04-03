import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../app_models/user_models/user_model.dart';

@module
abstract class UserDataStreamModule {
  @lazySingleton
  BehaviorSubject<UserModel> get userDataStream => BehaviorSubject<UserModel>();
}
