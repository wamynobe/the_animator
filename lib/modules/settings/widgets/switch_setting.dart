import 'package:flutter/material.dart';

class SwitchSetting extends StatelessWidget {
  const SwitchSetting({
    required this.title,
    required this.value,
    super.key,
    this.onChanged,
    this.subTitle,
  });

  final String title;
  final String? subTitle;

  final bool value;
  // ignore: avoid_positional_boolean_parameters
  final void Function(bool value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
      subtitle: subTitle != null
          ? Text(
              subTitle!,
              style: Theme.of(context).textTheme.bodySmall,
            )
          : null,
      trailing: Switch.adaptive(
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
