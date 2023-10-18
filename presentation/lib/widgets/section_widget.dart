import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe/resources/app_colors.dart';

class SectionWidget extends StatelessWidget {
  final String title;
  final String buttonTitle;
  final VoidCallback onButtonTap;

  const SectionWidget({super.key, required this.title, required this.buttonTitle, required this.onButtonTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, color: AppColors.aztecColor),
          ),
          Expanded(child: Container()),
          InkWell(
            child: Text(
              buttonTitle,
              style: TextStyle(fontSize: 16, color: AppColors.hotToddyColor),
            ),
            onTap: onButtonTap,
          )
        ],
      ),
    );
  }
}
