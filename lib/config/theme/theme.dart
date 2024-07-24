import 'package:flutter/material.dart';

abstract class AppColor {
  Color get backgroundColor;
  Color get systemAppColor;
  Color get primaryColor;
  Color get secondaryColor;
  Color get textColor;
  Color get passiveTextColor;

  Color get whiteColor;
  Color get cardPurple;
  Color get cardGreen;
  Color get cardBlue;
  Color get cardPurpleLight;
  Color get errorColor;
  Color get disableButtonColor;
  LinearGradient get gradient;
}

class LightColor extends AppColor {
  @override
  Color get primaryColor => const Color(0xff2944f6);

  @override
  Color get secondaryColor => const Color(0xfff2f6f7);

  @override
  Color get textColor => const Color(0xff1a1b25);

  @override
  Color get passiveTextColor => const Color(0xffA6A6A6);

  @override
  Color get cardGreen => const Color(0xff4fb070);

  @override
  Color get cardPurple => const Color(0xff7a7acc);
  @override
  Color get cardPurpleLight => const Color(0xff687ce6);
  @override
  Color get cardBlue => const Color(0xff749bff);

  @override
  LinearGradient get gradient => const LinearGradient(
        colors: [Color(0xffc7d0f9), Color(0xffcceae5), Color(0xffffffff)],
        begin: Alignment.topCenter,
        end: Alignment.bottomRight,
        stops: [0.1, 0.2, 0.4],
      );

  @override
  Color get errorColor => const Color(0xffbf002b);

  @override
  Color get disableButtonColor => const Color(0xffe9e9cf1);

  @override
  Color get backgroundColor => const Color(0xffffffff);

  @override
  // TODO: implement whiteColor
  Color get whiteColor => Colors.white;

  @override
  // TODO: implement systemAppColor
  Color get systemAppColor => const Color(0xffc7d0f9);
}

class DarkColor extends AppColor {
  @override
  Color get backgroundColor => const Color(0xff020617);

  @override
  Color get cardGreen => const Color(0xff4fb070);

  @override
  Color get cardPurple => const Color(0xff7a7acc);
  @override
  Color get cardPurpleLight => const Color(0xff687ce6);
  @override
  Color get cardBlue => const Color(0xff749bff);

  @override
  Color get disableButtonColor => Colors.red;

  @override
  Color get errorColor => Colors.red;
  @override
  Color get passiveTextColor => const Color(0xffA6A6A6);

  @override
  Color get primaryColor => const Color(0xffc1daff);

  @override
  Color get secondaryColor => const Color(0xff050f2e);

  @override
  Color get textColor => const Color(0xffe2e1ef);

  @override
  Color get whiteColor => Colors.red;

  @override
  Color get systemAppColor => const Color(0xff08144a);

  @override
  LinearGradient get gradient => const LinearGradient(
        colors: [Color(0xff08144a), Color(0xff0d2e37), Color(0xff020617)],
        begin: Alignment.topCenter,
        end: Alignment.bottomRight,
        stops: [0.1, 0.2, 0.4],
      );
}

class AppTheme {
  static Color greyColor = const Color(0xff757988);
  static ThemeData lightTheme() {
    final appColor = LightColor();
    return ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: appColor.systemAppColor,
        colorScheme: ColorScheme.fromSeed(
            brightness: Brightness.light, seedColor: LightColor().primaryColor),
        brightness: Brightness.light,
        disabledColor: const Color(0xffe9ecf1),
        textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w800,
              color: appColor.textColor),
          titleMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: appColor.textColor),
          titleSmall: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: appColor.textColor),
          bodyLarge: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: appColor.textColor),
          bodyMedium: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: appColor.textColor),
          bodySmall: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: appColor.textColor),
          labelLarge: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: appColor.textColor),
          labelMedium: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: appColor.textColor),
          labelSmall: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: appColor.textColor),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            unselectedLabelStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            backgroundColor: appColor.secondaryColor,
            selectedItemColor: appColor.primaryColor,
            unselectedItemColor: greyColor),
        inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            hintStyle: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: greyColor)),
        checkboxTheme: CheckboxThemeData(
            side: BorderSide(color: appColor.passiveTextColor),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4))));
  }

  static ThemeData darkTheme() {
    final appColor = DarkColor();

    return ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: appColor.systemAppColor,
        disabledColor: const Color(0xff1b1f2f),
        colorScheme: ColorScheme.fromSeed(
          seedColor: appColor.primaryColor,
          brightness: Brightness.dark,
        ),
        brightness: Brightness.dark,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            unselectedLabelStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            backgroundColor: appColor.secondaryColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: appColor.primaryColor,
            unselectedItemColor: greyColor),
        textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w800,
              color: appColor.textColor),
          titleMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: appColor.textColor),
          titleSmall: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: appColor.textColor),
          bodyLarge: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: appColor.textColor),
          bodyMedium: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: appColor.textColor),
          bodySmall: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: appColor.textColor),
          labelLarge: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: appColor.textColor),
          labelMedium: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: appColor.textColor),
          labelSmall: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: appColor.textColor),
        ),
        inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            hintStyle: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: greyColor)),
        checkboxTheme: CheckboxThemeData(
            side: BorderSide(color: appColor.passiveTextColor),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4))));
  }
}
