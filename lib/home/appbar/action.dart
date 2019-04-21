import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum AppBarAction { action,changeTitle }

class AppBarActionCreator {
  static Action onAction() {
    return const Action(AppBarAction.action);
  }

  static Action changeTitle(String title) {
    return Action(AppBarAction.changeTitle, payload: title);
  }
}
