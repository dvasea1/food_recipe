import 'package:flutter/material.dart';

import '../resources/app_colors.dart';

class RoundedButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const RoundedButtonWidget({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(color: AppColors.aztecColor, fontSize: 14),
        ),
        height: 38,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(38),
            color: AppColors.oldLaceColor,
            border: Border.all(color: AppColors.dairyCreamColor)),
      ),
      onTap: () {
        onTap.call();
      },
    );
  }
}
