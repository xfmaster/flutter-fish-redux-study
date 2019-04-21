import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:redux_demo/home/home/component/list/HomeItemBean.dart';
import 'package:redux_demo/home/home/state.dart';

import 'effect.dart';
import 'reducer.dart';

class HomeListAdapter extends Adapter<HomeState> {
  HomeListAdapter()
      : super(
          adapter: buildAdapter,
          effect: buildEffect(),
          reducer: buildReducer(),
        );
}

ListAdapter buildAdapter(
    HomeState state, Dispatch dispatch, ViewService service) {
  final List<IndexedWidgetBuilder> builders = buildList(state);
  return ListAdapter(
    (BuildContext buildContext, int index) =>
        builders[index](buildContext, index),
    builders.length,
  );
}

final List<IndexedWidgetBuilder> builders = new List();

List<IndexedWidgetBuilder> buildList(HomeState state) {
  print("buildList");
  builders.clear();
  for (int index = 0; index < state.list.length; index++) {
    var item = state.list[index].hashCode;
    builders.add((context, index) {
      return Dismissible(
        key: new Key("$item"),
        onDismissed: (direction) {
          state.list.removeAt(index);
          //这个和Android的SnackBar差不多
          Scaffold.of(context).showSnackBar(
              new SnackBar(content: new Text("$index dismissed")));
        },
        child: Container(
            height: 120,
            child: Center(
              child: Text("hahahahhah>>>>$index"),
            )),
        background: new Container(
          color: Colors.red,
        ),
      );
    });
  }
  return builders;
}
