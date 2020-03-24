import 'package:flutter/material.dart';
import 'package:triva_app/src/pages/users/login_page.dart';
import 'package:triva_app/src/pages/users/register_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Trivia app',
        // initialRoute: prefs.lastPage,
        initialRoute: 'login',
        routes: {
          LoginPage.routeName: (BuildContext context) => LoginPage(),
          RegisterPage.routeName: (BuildContext context) => RegisterPage(),
        },
    );
  }
}
