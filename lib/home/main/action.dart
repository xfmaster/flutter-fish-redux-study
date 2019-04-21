import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MainPageAction { switchTheme, switchIndex, changeTitle }

class MainPageActionCreator {
  static Action onAction(String action) {
    return Action(MainPageAction.switchTheme, payload: action);
  }

  static Action switchIndex(int index) {
    return Action(MainPageAction.switchIndex, payload: index);
  }

  static Action changeTitle(String title) {
    print("MainPageActionCreator changeTitle");
    return Action(MainPageAction.changeTitle, payload: title);
  }

}
