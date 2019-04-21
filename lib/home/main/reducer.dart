import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Reducer<MainPageState> buildReducer() {
  return asReducer(
    <Object, Reducer<MainPageState>>{
      MainPageAction.switchTheme: _onAction,
      MainPageAction.switchIndex: _switchIndex,
      MainPageAction.changeTitle: _changeTitle,
//      MainPageAction.onDelete: _isDelete,
    },
  );
}

MainPageState _onAction(MainPageState state, Action action) {
  MaterialColor color = state.color == Colors.red ? Colors.blue : Colors.red;
  final MainPageState newState = state.clone()..color = color;
  return newState;
}

MainPageState _changeTitle(MainPageState state, Action action) {
  final MainPageState newState = state.clone()..title = action.payload;
  return newState;
}

MainPageState _switchIndex(MainPageState state, Action action) {
  var index = action.payload;
  print("_switchIndex>>>$index");
  String title;
  if (index == 0) {
    title = "首页";
  } else if (index == 1) {
    title = "Smart";
  } else {
    title = "我的";
  }

  MainPageState newState = state.clone()
    ..index = index
    ..title = title;
  newState.appBarState = state.appBarState.clone()..title = title;
  var title2 = newState.title;
  print("_switchIndex>>>$title2");
  return newState;
}
//MainPageState _isDelete(MainPageState state, Action action) {
//  final MainPageState newState = state.clone();
//  print("Reducer _isDelete ");
//  return newState;
//}
