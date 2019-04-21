import 'package:fish_redux/fish_redux.dart';
import 'package:redux_demo/home/main/action.dart';
import 'action.dart';
import 'state.dart';

Effect<AppBarState> buildEffect() {
  return combineEffects(<Object, Effect<AppBarState>>{
    AppBarAction.action: _onAction,
    AppBarAction.changeTitle: _changeTitle,
  });
}

void _onAction(Action action, Context<AppBarState> ctx) {
  print("AppBarState Effect _onAction");
  ctx.dispatch(MainPageActionCreator.onAction("switch"));
}

void _changeTitle(Action action, Context<AppBarState> ctx) {
  print("AppBarState Effect");
}

