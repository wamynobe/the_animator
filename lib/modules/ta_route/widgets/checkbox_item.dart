import 'package:flutter/material.dart';

class CheckboxItem extends StatefulWidget {
  const CheckboxItem({
    required this.label,
    required this.onChanged,
    required this.isChecked,
    super.key,
  });
  final String label;
  final void Function({
    required bool value,
  }) onChanged;
  final bool isChecked;

  @override
  State<CheckboxItem> createState() => _CheckboxItemState();
}

class _CheckboxItemState extends State<CheckboxItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: widget.isChecked,
          onChanged: (bool? value) {
            widget.onChanged(value: value ?? false);
          },
        ),
        Text(widget.label),
      ],
    );
  }
}
