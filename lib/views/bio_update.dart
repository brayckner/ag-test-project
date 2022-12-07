import 'package:ag_test_project/utils/user_information.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ag_test_project/model/user.dart';
import 'package:ag_test_project/widgets/textfield_box_widget.dart';
import 'package:flutter/material.dart';

class BioUpdate extends StatefulWidget {
  const BioUpdate({super.key});

  @override
  State<BioUpdate> createState() => _BioUpdateState();
}

class _BioUpdateState extends State<BioUpdate> {
  User user = UserInformation.myUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const Text(
            'What type of passenger are you?',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          const TextField(
            decoration: InputDecoration(
              hintText:
                  "Write a little bit about yourself. Do you like chatting? Are you a smoker? Do you bring pets with you? Etc. \n\n\n\n",
              hintMaxLines: 8,
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.all(10),
            ),
          ),
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
      ),
    );
  }
}
