import 'package:ag_test_project/views/name_update.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ag_test_project/views/profile_page.dart';
import 'package:ag_test_project/views/phone_update.dart';
import 'package:ag_test_project/views/email_update.dart';
import 'package:ag_test_project/views/bio_update.dart';
import 'package:ag_test_project/views/photo_update.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 0, 91, 166),
      ),
      title: title,
      home: ProfilePage(),

// Switch the ^^ 'home:' above with the methods below and hot reload to see other screens
      // PhoneUpdate()
      // NameUpdate()
      // EmailUpdate()
      // BioUpdate()
    );
  }
}
