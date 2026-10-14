import 'package:flutter/material.dart';
import 'package:assigment/constants/app_colors.dart';
import 'package:assigment/constants/app_constants.dart';

/// Top card widget displaying profile details, contact information, and actions.
class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.cardBorder, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Profile Avatar
          const CircleAvatar(
            radius: 56,
            backgroundColor: AppColors.placeholderBg,
            backgroundImage: AssetImage(AppConstants.profileAssetPath),
          ),

          const SizedBox(height: 12),

          // Name
          const Text(
            AppConstants.profileName,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary,
              letterSpacing: -0.3,
            ),
          ),

          const SizedBox(height: 3),

          // Role / Subtitle
          const Text(
            AppConstants.profileRole,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.textSecondary,
            ),
          ),

          const SizedBox(height: 12),

          // Bio
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              AppConstants.profileBio,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                color: AppColors.textBody,
                height: 1.4,
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Inner Divider
          const Divider(
            color: AppColors.cardBorder,
            thickness: 0.8,
            height: 1,
          ),

          const SizedBox(height: 14),

          // Contact Details
          const Padding(
            padding: EdgeInsets.only(left: 36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _ContactInfoRow(
                  icon: Icons.email,
                  text: AppConstants.profileEmail,
                ),
                SizedBox(height: 8),
                _ContactInfoRow(
                  icon: Icons.phone,
                  text: AppConstants.profilePhone,
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Action Buttons: Follow & Message
          const _ActionButtons(),
        ],
      ),
    );
  }
}

/// Helper widget to display a contact row with an icon and text label.
class _ContactInfoRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const _ContactInfoRow({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 17,
          color: AppColors.secondaryButtonText,
        ),
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(
            fontSize: 13,
            color: AppColors.textBody,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

/// Helper widget to display the Follow and Message buttons.
class _ActionButtons extends StatelessWidget {
  const _ActionButtons();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: AppColors.primaryButtonText,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.zero,
                ),
                child: const Text(
                  'Follow',
                  style: TextStyle(
                    fontSize: 14.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: SizedBox(
              height: 40,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: AppColors.cardBackground,
                  foregroundColor: AppColors.secondaryButtonText,
                  side: const BorderSide(
                    color: AppColors.secondaryButtonBorder,
                    width: 1.2,
                  ),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.zero,
                ),
                child: const Text(
                  'Message',
                  style: TextStyle(
                    fontSize: 14.5,
                    fontWeight: FontWeight.w600,
                    color: AppColors.secondaryButtonText,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
