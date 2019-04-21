import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum indexAction { action }

class IndexActionCreator {
  static Action onAction(String name) {
    return  Action(indexAction.action,payload: name);
  }
}
