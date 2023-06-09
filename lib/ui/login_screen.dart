import 'package:base_template/global_observable/auth_status.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: 'Login screen'.text.make()),
            TextButton(onPressed: () => GetIt.I<AuthStatus>().changeAuthenticationStatus(isAuthenticated: true), child: 'Login'.text.make()),
          ],
        ),
      ),
    );
  }
}
