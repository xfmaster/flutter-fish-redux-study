import 'package:fish_redux/fish_redux.dart';
import 'package:redux_demo/home/smart/item/action.dart';
import 'action.dart';
import 'state.dart';

Effect<SmartState> buildEffect() {
  return combineEffects(<Object, Effect<SmartState>>{
    SmartAction.isDelete: _isDelete,
  });
}

void _isDelete(Action action, Context<SmartState> ctx) {
  print("SmartState buildEffect");
  ctx.dispatch(ItemActionCreator.onDelete());
}
