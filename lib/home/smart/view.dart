import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(SmartState state, Dispatch dispatch, ViewService viewService) {
  var buildAdapter = viewService.buildAdapter();
  return ListView.builder(
    itemBuilder: buildAdapter.itemBuilder,
    itemCount: buildAdapter.itemCount,
  );
}
