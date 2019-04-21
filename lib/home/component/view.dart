import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(IndexState state, Dispatch dispatch, ViewService viewService) {
  return Center(
    child: FloatingActionButton(
      onPressed: () {
        dispatch(IndexActionCreator.onAction("component"));
      },
      child: Icon(Icons.add),
    ),
  );
}
