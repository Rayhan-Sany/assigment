import 'package:flutter/material.dart';
import 'package:assigment/constants/app_colors.dart';

/// Section divider with 'Interests' text in the center.
class InterestsHeader extends StatelessWidget {
  final String title;

  const InterestsHeader({
    super.key,
    this.title = 'Interests',
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10),
        Expanded(
          child: Container(
            height: 1.2,
            color: AppColors.divider,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16.5,
              fontWeight: FontWeight.bold,
              color: AppColors.secondaryButtonText,
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 1.2,
            color: AppColors.divider,
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}

