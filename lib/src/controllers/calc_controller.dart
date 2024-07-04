import 'package:calculator/src/widgets/button_hub.dart';
import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalcController extends ChangeNotifier {
  final TextEditingController textEditingController = TextEditingController();

  String display;

  CalcController({required this.display});

  void onButtonClick(ButtonClick click) {
    if (textEditingController.text == '0') {
      textEditingController.text = '';
    }

    if (click is CommonButtonClick) {
      textEditingController.text += click.value;
    } else if (click is ClearButtonClick) {
      textEditingController.text = '0';
    } else if (click is ClearEntryButtonClick) {
      textEditingController.text = '0';
    } else if (click is EqualsButtonClick) {
      final v = textEditingController.text.interpret();
      textEditingController.text = '$v';
    } else if (click is ClearLastEntryButtonClick) {
      textEditingController.text =
          textEditingController.text.substring(0, textEditingController.text.length - 1);

      if (textEditingController.text == '' || textEditingController.text == '0') {
        textEditingController.text = '0';
      }
    }

    notifyListeners();
  }
}
