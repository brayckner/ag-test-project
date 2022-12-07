import 'package:ag_test_project/model/user.dart';
import 'package:ag_test_project/utils/user_information.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:ag_test_project/widgets/profile_box_widget.dart';
import 'package:ag_test_project/utils/user_information.dart';

class PhotoUpdate extends StatefulWidget {
  const PhotoUpdate({super.key});

  @override
  State<PhotoUpdate> createState() => _PhotoUpdateState();
}

class _PhotoUpdateState extends State<PhotoUpdate> {
  User user = UserInformation.myUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const Text(
            'Upload a photo fo yourself:',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Column(
            children: [
              Image.network(user.imagePath),
            ],
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
