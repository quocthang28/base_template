import 'package:rxdart/rxdart.dart';

class AuthStatus {
  //todo: save to shared pref, on startup get status from shared pref

  final _authStatusStream = BehaviorSubject<bool>();

  Stream<bool> get authStatusStream => _authStatusStream.stream;

  void changeAuthenticationStatus({required bool isAuthenticated}) {
    _authStatusStream.sink.add(isAuthenticated);
  }
}
