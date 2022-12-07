import 'package:ag_test_project/utils/user_information.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ag_test_project/model/user.dart';

class NameUpdate extends StatefulWidget {
  const NameUpdate({super.key});

  @override
  State<NameUpdate> createState() => _NameUpdateState();
}

class _NameUpdateState extends State<NameUpdate> {
  User user = UserInformation.myUser;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
