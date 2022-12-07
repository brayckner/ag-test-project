import 'package:ag_test_project/utils/user_information.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ag_test_project/model/user.dart';

class PhoneUpdate extends StatefulWidget {
  const PhoneUpdate({super.key});

  @override
  State<PhoneUpdate> createState() => _PhoneUpdateState();
}

class _PhoneUpdateState extends State<PhoneUpdate> {
  User user = UserInformation.myUser;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
