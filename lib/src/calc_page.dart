import 'package:calculator/src/camera_page.dart';
import 'package:calculator/src/controllers/calc_controller.dart';
import 'package:calculator/src/widgets/button_hub.dart';
import 'package:calculator/src/widgets/display.dart';
import 'package:flutter/material.dart';

class CalcPage extends StatefulWidget {
  final String initialValue;

  const CalcPage({super.key, this.initialValue = '0'});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  late CalcController controller;

  void _listener() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    controller = CalcController(display: 0.toString());
    controller.addListener(_listener);

    controller.display = widget.initialValue;

    setState(() {});
  }

  @override
  void dispose() {
    controller.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculabi9'),
        actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt),
            onPressed: () {
              showModalBottomSheet(context: context, builder: (builder) => const CameraPage());
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => const CameraPage(),
              //   ),
              // );
            },
          )
        ],
      ),
      body: Material(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Display(
                value: controller.display,
                controller: controller.textEditingController,
              ),
            ),
            Expanded(
              flex: 3,
              child: ButtonHub(
                onButtonClick: controller.onButtonClick,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
