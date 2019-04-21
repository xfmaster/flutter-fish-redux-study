import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:redux_demo/home/appbar/state.dart';
import 'package:redux_demo/home/component/state.dart';
import 'package:redux_demo/home/smart/item/state.dart';
import 'package:redux_demo/home/smart/state.dart';

class MainPageState implements Cloneable<MainPageState> {
  MaterialColor color;
  AppBarState appBarState;
  IndexState indexState;
  var index = 0;
  SmartState smartState;
  String title;

  @override
  MainPageState clone() {
    MainPageState newState = MainPageState()
      ..color = color
      ..title = title
      ..index = index
      ..appBarState = appBarState
      ..smartState = smartState;
    return newState;
  }
}

MainPageState initState(Map<String, dynamic> args) {
  SmartState smartState = SmartState();
  smartState.itemState = new List();
  for (int i = 0; i < 50; i++) {
    smartState.itemState.add(new ItemState()
      ..index = i
      ..isDelete);
  }
  return MainPageState()
    ..color = Colors.blue
    ..appBarState = AppBarState(title: "首页", rightText: "完成")
    ..index = 0
    ..title = "首页"
    ..smartState = smartState;
}

//ConnOp<MainPageState, AppBarState> themeConnector() {
//  return ConnOp<MainPageState, AppBarState>(
//    get: (MainPageState state) => state.appBarState,
//    set: (MainPageState state, AppBarState appbarState) =>
//        state.color = Colors.red,
//  );
//}

ConnOp<MainPageState, IndexState> indexConnector() {
  return ConnOp<MainPageState, IndexState>(
      get: (MainPageState state) => state.indexState,
      set: (MainPageState state, IndexState indexState) => {});
}

ConnOp<MainPageState, SmartState> smartConnector() {
  return ConnOp<MainPageState, SmartState>(
      get: (MainPageState state) => state.smartState,
      set: (MainPageState state, SmartState smartState) {
        state.smartState = smartState;
      });
}

ConnOp<MainPageState, AppBarState> appBarConnector() {
  print("appBarConnector");
  return ConnOp<MainPageState, AppBarState>(
    get: (MainPageState state) => state.appBarState,
    set: (MainPageState state, AppBarState appbarState) =>
        appbarState.title = state.title,
  );
}
