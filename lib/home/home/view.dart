import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redux_demo/home/base/BasePlatform.dart';
import 'package:redux_demo/home/view/AppBar.dart';

import 'package:redux_demo/home/home/state.dart';

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  ListAdapter buildAdapter = viewService.buildAdapter();
  var itemCount = buildAdapter.itemCount;
  print(">>>>buildView>>>>>>>$itemCount");
  return ListView.builder(
    itemBuilder: buildAdapter.itemBuilder,
    itemCount: buildAdapter.itemCount,
  );
}
