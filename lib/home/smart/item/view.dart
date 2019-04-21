import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:redux_demo/home/smart/item/action.dart';

import 'state.dart';

Widget buildView(ItemState state, Dispatch dispatch, ViewService viewService) {
  var index = state.index;
  print("buildView>>>>$index");
  return Container(
      height: 80,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Text("smart>>>>>>$index"),
            ),
            Visibility(
              visible: state.isDelete,
              child: IconButton(
                icon: Icon(
                  Icons.delete,
                ),
                onPressed: () {
                  dispatch(ItemActionCreator.delete(state.uniqueId));
                },
              ),
            ),
          ],
        ),
      ));
}
