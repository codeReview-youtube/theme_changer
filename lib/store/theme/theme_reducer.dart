import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:theme_changer_redux/store/theme/theme.dart';

class ChangeThemeAction {
  final ThemeTypes updateTheme;

  ChangeThemeAction(this.updateTheme);

  @override
  String toString() {
    return 'ChangeThemeAction ${this.updateTheme}';
  }
}

final themeReducer = combineReducers<ThemeData>([
  TypedReducer<ThemeData, ChangeThemeAction>(_changeTheme),
]);

ThemeData _changeTheme(ThemeData theme, ChangeThemeAction action) {
  return Themes.getTheme(action.updateTheme);
}
