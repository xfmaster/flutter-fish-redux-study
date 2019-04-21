import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<SmartState> buildReducer() {
  return asReducer(
    <Object, Reducer<SmartState>>{
      SmartAction.action: _onAction,
      SmartAction.delete: _delete,
    },
  );
}

SmartState _onAction(SmartState state, Action action) {
  final SmartState newState = state.clone();
  return newState;
}

SmartState _delete(SmartState state, Action action) {
  print("SmartState _delete ");
  state.itemState.removeAt(action.payload);
  final SmartState newState = state.clone()..itemState;
  return newState;
}

