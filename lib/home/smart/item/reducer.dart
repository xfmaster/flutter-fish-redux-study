import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ItemState> buildReducer() {
  return asReducer(
    <Object, Reducer<ItemState>>{
      ItemAction.isDelete: _onDelete,
    },
  );
}

ItemState _onDelete(ItemState state, Action action) {
  var isDelete = !state.isDelete;
  print("ItemState isDelete=$isDelete");
  final ItemState newState = state.clone()..isDelete = isDelete;
  return newState;
}
