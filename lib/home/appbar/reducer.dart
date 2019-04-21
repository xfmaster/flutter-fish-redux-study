import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<AppBarState> buildReducer() {
  return asReducer(
    <Object, Reducer<AppBarState>>{
      AppBarAction.action: _onAction,
      AppBarAction.changeTitle: _changeTitle,
    },
  );
}

AppBarState _onAction(AppBarState state, Action action) {
  print(" Reducer AppBarState _onAction");
  final AppBarState newState = state.clone();
  return newState;
}

AppBarState _changeTitle(AppBarState state, Action action) {
  AppBarState newState = state.clone()
    ..title = action.payload;
  print(newState.title+">>>>Reducer AppBarState");
  return newState;
}
