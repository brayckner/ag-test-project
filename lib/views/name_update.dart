import 'package:ag_test_project/utils/user_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ag_test_project/model/user.dart';
import 'package:ag_test_project/widgets/textfield_widget.dart';
import 'package:ag_test_project/widgets/textfield_box_widget.dart';

class NameUpdate extends StatefulWidget {
  const NameUpdate({super.key});

  @override
  State<NameUpdate> createState() => _NameUpdateState();
}

class _NameUpdateState extends State<NameUpdate> {
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
              'Whats your name?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            TextFieldBoxWidget(
                label: 'First Name', text: user.name, onChanged: (name) {}),
            const SizedBox(height: 24),
            TextFieldBoxWidget(
                label: 'Last Name', text: user.name, onChanged: (name) {}),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(8), backgroundColor: Colors.black),
                child: const Text('Update'),
                onPressed: () {},
              ),
            ),
          ],
        ));
  }
}
