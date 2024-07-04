import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  final String value;
  final TextEditingController controller;

  const Display({
    super.key,
    required this.value,
    required this.controller,
  });

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  void initState() {
    super.initState();
    widget.controller.text = widget.value;
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    widget.controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: TextFormField(
          controller: widget.controller,
          style: Theme.of(context).textTheme.displayMedium,
          maxLines: null,
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}
