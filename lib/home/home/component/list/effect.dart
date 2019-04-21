import 'package:fish_redux/fish_redux.dart';
import 'package:redux_demo/home/home/action.dart';
import 'package:redux_demo/home/home/state.dart';

Effect<HomeState> buildEffect() {
  return combineEffects(<Object, Effect<HomeState>>{
    HomeAction.action: _onAction,
  });
}

void _onAction(Action action, Context<HomeState> ctx) {
}
