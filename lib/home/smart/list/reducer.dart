import 'package:fish_redux/fish_redux.dart';
import 'package:redux_demo/home/smart/item/action.dart';
import 'package:redux_demo/home/smart/item/state.dart';
import 'package:redux_demo/home/smart/state.dart';

import 'action.dart';

Reducer<SmartState> buildReducer() {
  return asReducer(
    <Object, Reducer<SmartState>>{
      SmartListAction.action: _onAction,
      SmartListAction.onDelete: _onDelete,
      ItemAction.delete: _delete,
    },
  );
}

SmartState _onAction(SmartState state, Action action) {
  final SmartState newState = state.clone();
  return newState;
}

SmartState _onDelete(SmartState state, Action action) {
  //这个方法不能刷新当前显示的item，当前屏幕划出时候才会更新，找不到原因
  var length = state.itemState.length;

  List<ItemState> list = new List();
  for (var item in state.itemState) {
    item.isDelete = !item.isDelete;
    print("SmartState _onDelete length=$length");
    list.add(item);
  }
  final SmartState newState = state.clone()..itemState = list;
  return newState;
}

SmartState _delete(SmartState state, Action action) {
  final String unique = action.payload;
  final SmartState newState = state.clone();
  newState.itemState.removeWhere((ItemState state) => state.uniqueId == unique);
  return newState;
}
