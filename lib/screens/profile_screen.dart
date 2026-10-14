import 'package:flutter/material.dart';
import 'package:assigment/constants/app_colors.dart';
import 'package:assigment/constants/app_constants.dart';
import 'package:assigment/models/interest_item.dart';
import 'package:assigment/widgets/interest_card.dart';
import 'package:assigment/widgets/interests_header.dart';
import 'package:assigment/widgets/profile_card.dart';

/// Main profile screen displaying the profile card and interests list.
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const List<InterestItem> _interests = [
    InterestItem(
      title: 'Travel',
      subtitle: 'Exploring new places around the world',
      imagePath: AppConstants.travelAssetPath,
    ),
    InterestItem(
      title: 'Photography',
      subtitle: 'Capturing moments through the lens',
      imagePath: AppConstants.photographyAssetPath,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Top Profile Card
              const ProfileCard(),

              const SizedBox(height: 20),

              // Interests Header
              const InterestsHeader(),

              const SizedBox(height: 18),

              // Interests Cards Row
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: InterestCard(
                        item: _interests[0],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: InterestCard(
                        item: _interests[1],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
