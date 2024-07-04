import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String value;
  final Icon? icon;
  final Color? color;
  final void Function(String value)? onTap;
  const Button({super.key, required this.value, this.icon, this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    final color = this.color ?? Theme.of(context).colorScheme.primaryContainer;
    return Material(
      color: color,
      child: InkWell(
        onTap: onTap == null ? null : () => onTap!(value),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: value.isEmpty
                ? icon
                : Text(
                    value,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
          ),
        ),
      ),
    );
  }
}
