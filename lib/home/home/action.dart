import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum HomeAction { action }

class HomeActionCreator {
  static Action onAction(String name) {
    return  Action(HomeAction.action,payload: name);
  }
}
