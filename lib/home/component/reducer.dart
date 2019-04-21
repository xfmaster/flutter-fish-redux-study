import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<IndexState> buildReducer() {
  return asReducer(
    <Object, Reducer<IndexState>>{
      indexAction.action: _onAction,
    },
  );
}

IndexState _onAction(IndexState state, Action action) {
  String name= action.payload;
  final IndexState newState = state.clone()..colorName=name;
  return newState;
}
