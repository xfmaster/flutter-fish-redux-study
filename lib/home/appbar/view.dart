import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:redux_demo/home/appbar/action.dart';
import 'package:redux_demo/home/base/BasePlatform.dart';
import 'package:redux_demo/home/main/action.dart';
import 'package:redux_demo/home/smart/action.dart';
import 'package:redux_demo/home/smart/item/action.dart';

import 'state.dart';

class AppBarWrap {
  static PlatformAppBar buildView(
      AppBarState state, Dispatch dispatch, ViewService viewService) {
    print("buildView>>>" + state.title);
    return PlatformAppBar(
      title: Text(state.title),
      action: new PlatformButton(
          child: Text(
            state.rightText,
          ),
          onPressed: () {
            dispatch(MainPageActionCreator.onAction("color"));
            dispatch(ItemActionCreator.onDelete());
          }),
    );
  }
}
