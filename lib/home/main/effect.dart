import 'package:fish_redux/fish_redux.dart';
import 'package:redux_demo/home/appbar/action.dart';
import 'package:redux_demo/home/smart/action.dart';

import 'action.dart';
import 'state.dart';

Effect<MainPageState> buildEffect() {
  return combineEffects(<Object, Effect<MainPageState>>{
    MainPageAction.changeTitle: _changeTitle,
  });
}

void _switchIndex(Action action, Context<MainPageState> ctx) {
  print("MainPage switchIndex");
  ctx.dispatch(Action(MainPageAction.switchIndex,payload: action.payload));
}

void _changeTitle(Action action, Context<MainPageState> ctx) {
  print("MainPage changeTitle");
  ctx.dispatch(AppBarActionCreator.changeTitle(action.payload));
}
