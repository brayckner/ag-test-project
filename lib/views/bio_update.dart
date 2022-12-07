import 'package:ag_test_project/utils/user_information.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ag_test_project/model/user.dart';

class BioUpdate extends StatefulWidget {
  const BioUpdate({super.key});

  @override
  State<BioUpdate> createState() => _BioUpdateState();
}

class _BioUpdateState extends State<BioUpdate> {
  User user = UserInformation.myUser;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
