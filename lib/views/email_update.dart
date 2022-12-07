import 'package:ag_test_project/utils/user_information.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ag_test_project/model/user.dart';

class EmailUpdate extends StatefulWidget {
  const EmailUpdate({super.key});

  @override
  State<EmailUpdate> createState() => _EmailUpdateState();
}

class _EmailUpdateState extends State<EmailUpdate> {
  User user = UserInformation.myUser;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
