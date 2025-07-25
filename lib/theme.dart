import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  // Color Palette - Mono Colors
  static const Color _primaryBlack = Color(0xFF000000);
  static const Color _primaryWhite = Color(0xFFFFFFFF);
  static const Color _darkGray = Color(0xFF1C1C1E);
  static const Color _mediumGray = Color(0xFF2C2C2E);
  static const Color _lightGray = Color(0xFF3A3A3C);
  static const Color _surfaceGray = Color(0xFF48484A);
  static const Color _borderGray = Color(0xFF545458);
  static const Color _textGray = Color(0xFF8E8E93);
  static const Color _backgroundGray = Color(0xFF0A0A0A);

  // Liquid Glass Colors with transparency
  static const Color _glassBackground = Color(0x20FFFFFF);
  static const Color _glassBorder = Color(0x30FFFFFF);
  static const Color _glassHighlight = Color(0x15FFFFFF);

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,

      // Color Scheme
      colorScheme: const ColorScheme.dark(
        primary: _primaryWhite,
        onPrimary: _primaryBlack,
        secondary: _lightGray,
        onSecondary: _primaryWhite,
        surface: _darkGray,
        onSurface: _primaryWhite,
        background: _backgroundGray,
        onBackground: _primaryWhite,
        error: Color(0xFFFF453A),
        onError: _primaryWhite,
        outline: _borderGray,
        surfaceVariant: _mediumGray,
        onSurfaceVariant: _textGray,
      ),

      // Scaffold
      scaffoldBackgroundColor: _backgroundGray,

      // AppBar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        titleTextStyle: const TextStyle(
          color: _primaryWhite,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          fontFamily: 'JetBrainsMono',
        ),
        iconTheme: const IconThemeData(color: _primaryWhite),
      ),

      // Card Theme - Liquid Glass Effect
      cardTheme: CardThemeData(
        color: _glassBackground,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(
            color: _glassBorder,
            width: 0.5,
          ),
        ),
        margin: const EdgeInsets.all(8),
      ),

      // Container Decoration (will be used in custom widgets)
      dividerTheme: const DividerThemeData(
        color: _borderGray,
        thickness: 0.5,
      ),

      // Text Theme
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: _primaryWhite,
          fontSize: 40,
          fontWeight: FontWeight.w700,
          fontFamily: 'JetBrainsMono',
        ),
        displayMedium: TextStyle(
          color: _primaryWhite,
          fontSize: 28,
          fontWeight: FontWeight.w600,
          fontFamily: 'JetBrainsMono',
        ),
        displaySmall: TextStyle(
          color: _primaryWhite,
          fontSize: 24,
          fontWeight: FontWeight.w600,
          fontFamily: 'JetBrainsMono',
        ),
        headlineLarge: TextStyle(
          color: _primaryWhite,
          fontSize: 22,
          fontWeight: FontWeight.w600,
          fontFamily: 'JetBrainsMono',
        ),
        headlineMedium: TextStyle(
          color: _primaryWhite,
          fontSize: 20,
          fontWeight: FontWeight.w500,
          fontFamily: 'JetBrainsMono',
        ),

        titleLarge: TextStyle(
          color: _primaryWhite,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          fontFamily: 'JetBrainsMono',
        ),
        titleMedium: TextStyle(
          color: Colors.grey,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: 'JetBrainsMono',
        ),
        bodyLarge: TextStyle(
          color: _primaryWhite,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: 'JetBrainsMono',
        ),
        bodyMedium: TextStyle(
          color: _primaryWhite,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: 'JetBrainsMono',
        ),
        bodySmall: TextStyle(
          color: _textGray,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontFamily: 'JetBrainsMono',
        ),
        labelLarge: TextStyle(
          color: _primaryWhite,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: 'JetBrainsMono',
        ),
      ),

      // Input Decoration Theme - Liquid Glass TextFields
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: _glassBackground,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: _glassBorder,
            width: 0.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: _glassBorder,
            width: 0.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: _primaryWhite,
            width: 1,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Color(0xFFFF453A),
            width: 1,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        hintStyle: const TextStyle(
          color: _textGray,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: 'JetBrainsMono',
        ),
        labelStyle: const TextStyle(
          color: _textGray,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: 'JetBrainsMono',
        ),
        floatingLabelStyle: const TextStyle(
          color: _primaryWhite,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: 'JetBrainsMono',
        ),
      ),

      // Elevated Button Theme - Liquid Glass Buttons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: _glassBackground,
          foregroundColor: _primaryWhite,
          elevation: 0,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(
              color: _glassBorder,
              width: 0.5,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: 'JetBrainsMono',
          ),
        ).copyWith(
          overlayColor: MaterialStateProperty.all(_glassHighlight),
        ),
      ),

      // Text Button Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: _primaryWhite,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: 'JetBrainsMono',
          ),
        ).copyWith(
          overlayColor: MaterialStateProperty.all(_glassHighlight),
        ),
      ),

      // Outlined Button Theme
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: _primaryWhite,
          side: const BorderSide(
            color: _glassBorder,
            width: 0.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: 'JetBrainsMono',
          ),
        ).copyWith(
          overlayColor: MaterialStateProperty.all(_glassHighlight),
        ),
      ),

      // Bottom Navigation Bar Theme
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: _mediumGray,
        selectedItemColor: _primaryWhite,
        unselectedItemColor: _textGray,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),



      // Floating Action Button Theme
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _glassBackground,
        foregroundColor: _primaryWhite,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(
            color: _glassBorder,
            width: 0.5,
          ),
        ),
      ),
    );
  }

  // Custom Container Decoration for Liquid Glass Effect
  static BoxDecoration get liquidGlassDecoration {
    return BoxDecoration(
      color: _glassBackground,
      borderRadius: BorderRadius.circular(16),
      border: Border.all(
        color: _glassBorder,
        width: 0.5,
      ),
      boxShadow: [
        BoxShadow(
          color: _primaryBlack.withOpacity(0.1),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
    );
  }

  // Custom Small Container Decoration
  static BoxDecoration get liquidGlassDecorationSmall {
    return BoxDecoration(
      color: _glassBackground,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(
        color: _glassBorder,
        width: 0.5,
      ),
      boxShadow: [
        BoxShadow(
          color: _primaryBlack.withOpacity(0.05),
          blurRadius: 5,
          offset: const Offset(0, 2),
        ),
      ],
    );
  }

  // Custom Button Decoration for special cases
  static BoxDecoration get liquidGlassButtonDecoration {
    return BoxDecoration(
      color: _glassBackground,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(
        color: _glassBorder,
        width: 0.5,
      ),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          _glassHighlight,
          Colors.transparent,
          _glassHighlight.withOpacity(0.05),
        ],
      ),
    );
  }
}

// Custom Liquid Glass Container Widget
class LiquidGlassContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;
  final bool isSmall;

  const LiquidGlassContainer({
    Key? key,
    required this.child,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.isSmall = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding ?? const EdgeInsets.all(16),
      decoration: isSmall
          ? AppTheme.liquidGlassDecorationSmall
          : AppTheme.liquidGlassDecoration,
      child: child,
    );
  }
}

// Custom Liquid Glass Button Widget
class LiquidGlassButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;
  final double? width;
  final double? height;

  const LiquidGlassButton({
    Key? key,
    required this.child,
    this.onPressed,
    this.padding,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: AppTheme.liquidGlassButtonDecoration,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(12),
          splashColor: AppTheme._glassHighlight,
          highlightColor: AppTheme._glassHighlight.withOpacity(0.1),
          child: Container(
            padding: padding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Center(child: child),
          ),
        ),
      ),
    );
  }
}
