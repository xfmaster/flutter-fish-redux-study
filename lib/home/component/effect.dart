import 'package:fish_redux/fish_redux.dart';
import 'package:redux_demo/home/home/action.dart';
import 'action.dart';
import 'state.dart';

Effect<IndexState> buildEffect() {
  return combineEffects(<Object, Effect<IndexState>>{
    indexAction.action: _onAction,
  });
}

void _onAction(Action action, Context<IndexState> ctx) {
  print(action.payload);
  ctx.dispatch(HomeActionCreator.onAction(action.payload));
}
