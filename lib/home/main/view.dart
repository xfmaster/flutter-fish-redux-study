import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:redux_demo/home/appbar/view.dart';
import 'package:redux_demo/home/base/BasePlatform.dart';
import 'package:redux_demo/home/home/page.dart';
import 'package:redux_demo/home/main/action.dart';
import 'package:redux_demo/home/mine/page.dart';

import 'state.dart';

Widget buildView(
    MainPageState state, Dispatch dispatch, ViewService viewService) {
  return MaterialApp(
    theme: ThemeData(
      primarySwatch: state.color,
    ),
    home: PlatformScaffold(
      appBar: AppBarWrap.buildView(state.appBarState,dispatch,viewService),
      body: IndexedStack(
        children: <Widget>[
          HomePage().buildPage(null),
          viewService.buildComponent("smart"),
          MinePage().buildPage(null),
        ],
        index: state.index,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('我的家')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.wb_sunny), title: new Text("智能")),
          BottomNavigationBarItem(
              icon: new Icon(Icons.account_circle), title: new Text("我")),
        ],
        fixedColor: state.color,
        currentIndex: state.index,
        onTap: (int index) {
          dispatch(MainPageActionCreator.switchIndex(index));
        },
      ),
    ),
  );
}
