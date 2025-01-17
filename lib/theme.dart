import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StarbucksTheme {
  // 스타벅스 브랜드 색상
  static const Color primaryGreen = Color(0xFF00704A);
  static const Color secondaryGreen = Color(0xFF1E3932);
  static const Color goldColor = Color(0xFFCBA258);
  static const Color backgroundColor = Color(0xFFFFFFFFF);
  static const Color greyColor = Color(0xFFF7F7F7);
  static const Color textDark = Color(0xFF2C2C2C);
  static const Color textLight = Color(0xFF666666);

  static ThemeData get theme => ThemeData(
        // 기본 테마 색상
        primaryColor: primaryGreen,
        scaffoldBackgroundColor: backgroundColor,

        // 앱바 테마
        appBarTheme: const AppBarTheme(
          backgroundColor: backgroundColor,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: textDark),
          titleTextStyle: TextStyle(
            color: textDark,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        // 버튼 테마
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryGreen,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        // 텍스트 테마
        textTheme: TextTheme(
          // 큰 제목용 (예: 메인 화면 환영 메시지)
          displayLarge: GoogleFonts.kanit(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: textDark,
            letterSpacing: -0.5,
          ),

          // 섹션 제목용 (예: "추천 메뉴", "이벤트")
          displayMedium: GoogleFonts.kanit(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: textDark,
            letterSpacing: -0.5,
          ),

          // 작은 섹션 제목
          displaySmall: GoogleFonts.kanit(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: textDark,
          ),

          // 강조 텍스트 (예: 메뉴 이름)
          headlineLarge: GoogleFonts.kanit(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: textDark,
          ),

          // 중요 정보 (예: 가격)
          headlineMedium: GoogleFonts.kanit(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: textDark,
          ),

          // 서브 텍스트 (예: 메뉴 설명)
          headlineSmall: GoogleFonts.kanit(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: textDark,
          ),

          // 본문 큰 텍스트
          bodyLarge: GoogleFonts.kanit(
            fontSize: 16,
            color: textDark,
            height: 1.5,
          ),

          // 본문 기본 텍스트
          bodyMedium: GoogleFonts.kanit(
            fontSize: 14,
            color: textLight,
            height: 1.5,
          ),

          // 본문 작은 텍스트
          bodySmall: GoogleFonts.kanit(
            fontSize: 12,
            color: textLight,
            height: 1.5,
          ),

          // 레이블용 텍스트 (예: 버튼 내 텍스트)
          labelLarge: GoogleFonts.kanit(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: primaryGreen,
          ),

          // 작은 레이블 (예: 뱃지, 태그)
          labelSmall: GoogleFonts.kanit(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: textLight,
          ),
        ),

        // 입력 필드 테마
        inputDecorationTheme: InputDecorationTheme(
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 5,
          ),
        ),

        // 카드 테마
        cardTheme: CardTheme(
          color: Colors.white,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      );
}

TextTheme customTextTheme(BuildContext context) {
  return Theme.of(context).textTheme;
}

InputDecorationTheme customInputTheme(BuildContext context) {
  return Theme.of(context).inputDecorationTheme;
}
