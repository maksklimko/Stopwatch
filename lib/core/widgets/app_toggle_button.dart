import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:stopwatch/core/theme/theme_tailor.dart';

class AppToggleButton extends StatefulWidget {
  const AppToggleButton({
    super.key,
    required this.enabledText,
    required this.disabledText,
    this.onChanged,
  });
  final String enabledText;
  final String disabledText;
  final ValueChanged<bool>? onChanged;

  @override
  State<AppToggleButton> createState() => _AppToggleButtonState();
}

class _AppToggleButtonState extends State<AppToggleButton> {
  var isEnabled = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isEnabled = !isEnabled;
        });
        widget.onChanged?.call(isEnabled);
      },
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
              color: context.toggleButtonTheme.borderColor, width: 2),
          borderRadius: BorderRadius.circular(10),
          color: isEnabled
              ? context.toggleButtonTheme.enabledColor
              : context.toggleButtonTheme.disabledColor,
          boxShadow: [
            BoxShadow(
              color: context.toggleButtonTheme.primaryShadowColor,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: context.toggleButtonTheme.secondaryShadowColor,
              blurRadius: 2,
              offset: Offset(0, 1),
            )
          ],
        ),
        child: Center(
          child: Text(
            isEnabled ? widget.enabledText : widget.disabledText,
            style: context.toggleButtonTheme.textStyle,
          ).tr(),
        ),
      ),
    );
  }
}
