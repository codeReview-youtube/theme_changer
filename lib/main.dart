import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:theme_changer_redux/app.dart';
import 'package:theme_changer_redux/store/app_reducer.dart';
import 'package:theme_changer_redux/store/app_state.dart';
import 'package:theme_changer_redux/store/theme/theme.dart';

void main() {
  runApp(
    App(
      appKey: Key('__app__'),
      store: Store<AppState>(
        appReducer,
        initialState: AppState(
          activeTheme: Themes.defaultTheme,
        ),
      ),
    ),
  );
}
