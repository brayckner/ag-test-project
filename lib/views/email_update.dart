import 'package:ag_test_project/utils/user_information.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ag_test_project/model/user.dart';
import 'package:ag_test_project/widgets/textfield_box_widget.dart';
import 'package:flutter/material.dart';

class EmailUpdate extends StatefulWidget {
  const EmailUpdate({super.key});

  @override
  State<EmailUpdate> createState() => _EmailUpdateState();
}

class _EmailUpdateState extends State<EmailUpdate> {
  User user = UserInformation.myUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: BackButton(),
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            const Text(
              'Whats your email?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            TextFieldBoxWidget(
                label: 'Your email address',
                text: user.name,
                onChanged: (name) {}),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(8),
                  backgroundColor: Colors.black,
                  minimumSize: const Size.fromHeight(50),
                ),
                child: const Text('Update'),
                onPressed: () {},
              ),
            ),
          ],
        ));
  }
}
