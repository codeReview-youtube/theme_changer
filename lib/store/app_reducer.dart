import 'package:theme_changer_redux/store/app_state.dart';
import 'package:theme_changer_redux/store/theme/theme_reducer.dart';

AppState appReducer(AppState state, action) {
  return AppState(
    activeTheme: themeReducer(state.activeTheme, action),
  );
}
