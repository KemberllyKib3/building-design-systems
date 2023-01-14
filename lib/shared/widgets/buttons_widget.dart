// ignore_for_file: unused_local_variable

import 'package:building_design_systems/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  final String? title;
  final VoidCallback? onTap;
  final Color backgroundColor;
  final Color contentColor;
  final Color? border;
  final Icon? icon;

  const ButtonsWidget({
    Key? key,
    required this.onTap,
    required this.backgroundColor,
    required this.contentColor,
    this.title,
    this.border,
    this.icon,
  })  : assert(title != null || icon != null),
        super(key: key);

  const ButtonsWidget.primary({
    Key? key,
    required this.onTap,
    this.title,
    this.icon,
  })  : backgroundColor = AppColors.primary,
        contentColor = AppColors.white,
        border = null,
        assert(title != null || icon != null),
        super(key: key);

  const ButtonsWidget.secondary({
    Key? key,
    required this.onTap,
    this.title,
    this.icon,
  })  : backgroundColor = AppColors.white,
        contentColor = AppColors.primary,
        border = AppColors.primary,
        assert(title != null || icon != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool disabled = onTap == null;
    final bool onlyIcon = icon != null && title == null;
    final double width = MediaQuery.of(context).size.width * 0.45;
    final double horizontalPadding = onlyIcon ? 15 : 25;

    return InkWell(
      onTap: onTap,
      child: Ink(
        width: onlyIcon ? null : width,
        decoration: BoxDecoration(
          color: disabled ? AppColors.disable : backgroundColor,
          borderRadius: BorderRadius.circular(5),
          border: (border == null)
              ? null
              : Border.all(color: disabled ? AppColors.disable : border!),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: 10,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) icon!,
              if (icon != null && title != null) const SizedBox(width: 10),
              if (title != null)
                Text(
                  title!,
                  style: Theme.of(context).textTheme.button!.copyWith(
                        color: disabled ? AppColors.darkGray : contentColor,
                      ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
