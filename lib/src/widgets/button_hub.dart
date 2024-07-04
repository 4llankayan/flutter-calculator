import 'package:calculator/src/widgets/button.dart';
import 'package:flutter/material.dart';

sealed class ButtonClick {
  final String value;

  ButtonClick(this.value);
}

class CommonButtonClick extends ButtonClick {
  CommonButtonClick(super.value);
}

class EqualsButtonClick extends ButtonClick {
  EqualsButtonClick(super.value);
}

class ClearButtonClick extends ButtonClick {
  ClearButtonClick(super.value);
}

class ClearEntryButtonClick extends ButtonClick {
  ClearEntryButtonClick(super.value);
}

class ClearLastEntryButtonClick extends ButtonClick {
  ClearLastEntryButtonClick(super.value);
}

class ButtonHub extends StatelessWidget {
  final void Function(ButtonClick click) onButtonClick;

  const ButtonHub({super.key, required this.onButtonClick});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 4,
      children: <Widget>[
        Button(
          value: '%',
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: 'CE',
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onButtonClick(ClearEntryButtonClick(value)),
        ),
        Button(
          value: 'C',
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onButtonClick(ClearButtonClick(value)),
        ),
        Button(
          value: '',
          icon: const Icon(
            Icons.backspace,
            color: Colors.black,
          ),
          color: Theme.of(context).colorScheme.primary,
          onTap: (value) => onButtonClick(ClearLastEntryButtonClick(value)),
        ),
        Button(
          value: '7',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '8',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '9',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '/',
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '4',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '5',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '6',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '*',
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '1',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '2',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '3',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '+',
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '-',
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '0',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '.',
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '=',
          color: Theme.of(context).colorScheme.onTertiary,
          onTap: (value) => onButtonClick(EqualsButtonClick(value)),
        ),
      ],
    );
  }
}
