import 'package:flutter/material.dart';

class TextFieldBoxWidget extends StatefulWidget {
  final String label;
  final String text;
  final int maxLines;
  final ValueChanged<String> onChanged;

  const TextFieldBoxWidget({
    Key? key,
    this.maxLines = 1,
    required this.label,
    required this.text,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<TextFieldBoxWidget> createState() => _TextFieldBoxWidgetState();
}

class _TextFieldBoxWidgetState extends State<TextFieldBoxWidget> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();

    controller = TextEditingController(text: widget.text);
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: controller,
            maxLines: widget.maxLines,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(10)),
          ),
        ],
      );
}
