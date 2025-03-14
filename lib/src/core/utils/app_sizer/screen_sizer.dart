import 'package:flutter/material.dart';

class ScreenSizer {
  //Screen Height and width
  static late double screenHeight;
  static late double screenWidth;

  //Divide Screen into block sizer
  static late double blockSizeHorizontal;
  static late double blockSizeVertical;

  //Text Sizer
  static late double rAppTitleTextSize;
  static late double rTitleTextSize;
  static late double rBodyTextSize;
  static late double rCaptionTextSize;

  //Aspect Ratio
  static late double aspectRatio;

  // Padding and margins
  static late double paddingSmall;
  static late double paddingMedium;
  static late double paddingLarge;

  // Breakpoints
  static late bool isMobile;
  static late bool isTablet;
  static late bool isDesktop;

  // Icon and button sizes
  static late double iconSmall;
  static late double iconMedium;
  static late double iconLarge;
  static late double buttonHeightSmall;
  static late double buttonHeightMedium;
  static late double buttonHeightLarge;

// initialy get the platfrom screen size
  static void init(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    screenHeight = mediaQuery.size.height;
    screenWidth = mediaQuery.size.width;

    //Divided the screen into 100 blocks
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    // Text sizes responsive to screen size
    rAppTitleTextSize = blockSizeVertical * 3;
    rTitleTextSize = blockSizeVertical * 2.5;
    rBodyTextSize = blockSizeVertical * 2;
    rCaptionTextSize = blockSizeVertical * 1.5;

    //Padding And Magins
    paddingSmall = blockSizeHorizontal * 2;
    paddingMedium = blockSizeHorizontal * 4;
    paddingLarge = blockSizeHorizontal * 6;

    //Aspect Ratio
    aspectRatio = screenWidth / screenHeight;

    // Icon and button sizes
    iconSmall = blockSizeVertical * 3;
    iconMedium = blockSizeVertical * 4;
    iconLarge = blockSizeVertical * 5;

    // Icon and button sizes
    iconSmall = blockSizeVertical * 3;
    iconMedium = blockSizeVertical * 4;
    iconLarge = blockSizeVertical * 5;

    buttonHeightSmall = blockSizeVertical * 5;
    buttonHeightMedium = blockSizeVertical * 7;
    buttonHeightLarge = blockSizeVertical * 9;

    //Breakpoint
    isMobile = screenWidth < 600;
    isTablet = screenWidth >= 600 && screenWidth < 1200;
    isDesktop = screenWidth >= 1200;
  }

  static double height(double percentage) {
    return screenHeight * (percentage / 200);
  }

  static double width(double percentage) {
    return screenWidth * (percentage / 200);
  }

  static double textSize(double percentage) {
    return blockSizeVertical * percentage;
  }
}
