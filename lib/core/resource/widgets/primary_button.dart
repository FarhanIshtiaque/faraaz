import 'package:faraaz/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.onPressed,
    required this.buttonNameWidget,
    this.large = false,
    this.color = AppColors.natural1,
  }) : super(key: key);
  final VoidCallback? onPressed;

  final Widget buttonNameWidget;
  final bool large;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      disabledColor: AppColors.gray200,
      color: color,
      splashColor: AppColors.natural3,
      elevation: 0,
      height: large ? 56 : 48,
      minWidth: double.infinity,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: buttonNameWidget,
    );
  }
}
