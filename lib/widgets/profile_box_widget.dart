import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:io';
import 'package:flutter/material.dart';

class ProfileBoxWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;

  const ProfileBoxWidget({
    Key? key,
    required this.imagePath,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
        child: Stack(
      children: [
        buildImage(),
      ],
    ));
  }

  Widget buildImage() {
    final image = NetworkImage(imagePath);

    return Material(
      color: Colors.transparent,
      child: Ink.image(
        image: image,
        fit: BoxFit.cover,
        width: 128,
        height: 128,
        child: InkWell(onTap: onClicked),
      ),
    );
  }
}
