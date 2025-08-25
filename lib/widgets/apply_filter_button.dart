import 'package:flutter/material.dart';
import 'package:news_app/styles/app_colors.dart';
import 'package:news_app/styles/app_text_styles.dart';

class ApplyFilterButton extends StatelessWidget {
  const ApplyFilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.primary
        ),
        child: Center(
          child: Text(
            "Apply Filters",
            style: AppTextStyles.regular16.copyWith(
              color: AppColors.white
            ),
          ),
        ),
      ),
    );
  }

  void _onTap() {
      print("Apply filters");
    }
}