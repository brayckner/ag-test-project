import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ag_test_project/views/profile_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'User Profile';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primaryColor: Colors.blue.shade300,
        // dividerColor: Colors.black,
      ),
      title: title,
      home: ProfilePage(),
    );
  }
}
