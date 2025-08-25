import 'package:flutter/material.dart';
import 'package:news_app/styles/app_colors.dart';
import 'package:news_app/styles/app_text_styles.dart';

class IconWithTextWidget extends StatelessWidget {
  const IconWithTextWidget({
    super.key,
    required this.iconData,
    required this.text
  });

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(

      spacing: 10,
      children: [
        Icon(
          iconData,
          color: AppColors.grey,
        ),

        Text(
          text,
          style: AppTextStyles.regular14.copyWith(
            color: AppColors.grey
          ),
        )
      ],
    );
  }
}