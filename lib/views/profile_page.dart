import 'package:ag_test_project/utils/user_information.dart';
import 'package:ag_test_project/views/name_update.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ag_test_project/widgets/appbar_widget.dart';
import 'package:ag_test_project/widgets/profile_widget.dart';
import 'package:ag_test_project/widgets/textfield_widget.dart';
import 'package:ag_test_project/views/photo_update.dart';
import 'package:ag_test_project/views/phone_update.dart';
import 'package:ag_test_project/views/email_update.dart';
import 'package:ag_test_project/views/bio_update.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    const user = UserInformation.myUser;

    return Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            const Text(
              'Edit Profile',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ProfileWidget(
              imagePath: user.imagePath,
              onClicked: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PhotoUpdate()),
                );
              },
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
                label: 'Name',
                text: user.name,
                onClicked: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => NameUpdate()),
                  );
                }),
            const SizedBox(height: 24),
            TextFieldWidget(
                label: 'Phone',
                text: user.phone,
                onClicked: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PhoneUpdate()),
                  );
                }),
            const SizedBox(height: 24),
            TextFieldWidget(
                label: 'Email',
                text: user.email,
                onClicked: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => EmailUpdate()),
                  );
                }),
            const SizedBox(height: 24),
            TextFieldWidget(
                label: 'Tell us about yourself',
                text: user.bio,
                maxLines: 5,
                onClicked: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BioUpdate()),
                  );
                }),
          ],
        ));
  }
}
