import 'package:flutter/material.dart';
import 'package:crud_flutter/screens/main_screen.dart';
import 'utils/colors.dart';

void main() => runApp(FireFightersApp());


class FireFightersApp extends StatefulWidget {
  @override
  _FireFightersAppState createState() => _FireFightersAppState();
}

class _FireFightersAppState extends State<FireFightersApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Firefighters',
        home: Main_Screen(),
        theme: _fireFightersTheme,
        debugShowCheckedModeBanner: false
    );
  }
}


final ThemeData _fireFightersTheme = _buildFireFightersTheme();

IconThemeData _customIconTheme(IconThemeData original) {
  return original.copyWith(color: firePrimary);
}

ThemeData _buildFireFightersTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    canvasColor: fireBackgroundWhite,
    backgroundColor: firePrimary,
    accentColor: firePrimaryDark,
    primaryColor: firePrimary,
    primaryColorLight: firePrimaryLight,
    primaryColorDark: firePrimaryDark,
    buttonColor: firePrimaryLight,
    scaffoldBackgroundColor: fireBackgroundWhite,
    cardColor: firePrimary,
    textSelectionColor: firePrimaryLight,
    errorColor: fireErrorRed,
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.accent,
    ),
    primaryIconTheme: base.iconTheme.copyWith(color: firePrimary),
    textTheme: _buildFireFightersTextTheme(base.textTheme, fireGray, fireWhite),
    primaryTextTheme: _buildFireFightersTextTheme(base.primaryTextTheme, firePrimary, firePrimary),
    accentTextTheme: _buildFireFightersTextTheme(base.accentTextTheme, fireGray, fireGray),
    iconTheme: _customIconTheme(base.iconTheme),
  );
}

TextTheme _buildFireFightersTextTheme(TextTheme base, Color displayColor, Color bodyColor) {
  return base.copyWith(
    headline: base.headline.copyWith(
      fontWeight: FontWeight.w500,
    ),
    title: base.title.copyWith(
        fontSize: 18.0
    ),
    caption: base.caption.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
    ),
    body2: base.body2.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 16.0,
    ),
  ).apply(
    fontFamily: 'Rubik',
    displayColor: displayColor,
    bodyColor: bodyColor,
  );
}
