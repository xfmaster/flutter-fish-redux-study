import 'package:fish_redux/fish_redux.dart';
import 'package:redux_demo/home/home/action.dart';
import 'package:redux_demo/home/home/state.dart';

Reducer<HomeState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeState>>{
      HomeAction.action: _onAction,
    },
  );
}

HomeState _onAction(HomeState state, Action action) {
  final HomeState newState = state.clone();
  return newState;
}
