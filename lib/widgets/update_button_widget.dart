import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UpdateButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const UpdateButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
