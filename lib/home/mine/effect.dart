import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<MinePageState> buildEffect() {
  return combineEffects(<Object, Effect<MinePageState>>{
    MinePageAction.action: _onAction,
  });
}

void _onAction(Action action, Context<MinePageState> ctx) {
}
