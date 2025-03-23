import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/src/core/common/widgets/app_spacers.dart';
import 'package:my_portfolio/src/core/utils/app_sizer/screen_sizer.dart';
import 'package:my_portfolio/src/core/utils/colors/app_colors.dart';

class CustomSkillWidget extends StatelessWidget {
  const CustomSkillWidget(
      {super.key, required this.color, required this.title, this.icon});
  final Color color;
  final String title;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: EdgeInsets.symmetric(
          horizontal: ScreenSizer.paddingSmall, vertical: 6),
      color: color,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            icon ?? const SizedBox.shrink(),
            const HorizontalSpace(width: 5),
          ],
          Text(
            title,
            style: TextStyle(
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontWeight: FontWeight.bold,
              color: AppColors.textPirmary,
              letterSpacing: 2,
            ),
          )
        ],
      ),
    );
  }
}
