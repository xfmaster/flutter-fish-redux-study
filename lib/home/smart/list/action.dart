import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum SmartListAction { action,onDelete,delete }

class SmartListActionCreator {
  static Action onAction() {
    return const Action(SmartListAction.action);
  }
  static Action onDelete() {
    print("SmartListActionCreator onDelete");
    return const Action(SmartListAction.onDelete);
  }

}
