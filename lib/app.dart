import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:theme_changer_redux/containers/theme_container.dart';
import 'package:theme_changer_redux/screens/home_screen.dart';
import 'package:theme_changer_redux/screens/settings_screen.dart';
import 'package:theme_changer_redux/store/app_state.dart';

class App extends StatelessWidget {
  final Store<AppState> store;
  final Key appKey;

  App({this.appKey, this.store});
  // render
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: ThemeContainer(builder: (_, ThemeData activeTheme) {
        return MaterialApp(
          theme: activeTheme != null ? activeTheme : ThemeData.dark(),
          routes: {
            '/': (_) => HomeScreen(),
            '/settings': (_) => SettingsScreen(),
          },
        );
      }),
    );
  }
}
