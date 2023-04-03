import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../app_models/user_models/user_model.dart';

@lazySingleton
class UserDataService {
  final BehaviorSubject<UserModel> _userAuthStream;

  UserDataService(this._userAuthStream);

  BehaviorSubject<UserModel> get authStream => _userAuthStream;

  void authUser(UserModel userModel) {
    _userAuthStream.add(userModel);
  }

  void signOutUser() {
    _userAuthStream.add(_userAuthStream.value.copyWith(isAuthorized: false));
  }

  String getUserId() {
    return _userAuthStream.value.userId;
  }

  UserModel getUserData() {
    return _userAuthStream.value;
  }
}
