import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum SmartAction { action, isDelete,delete}

class SmartActionCreator {
  static Action isDelete() {
    print("SmartActionCreator isDelete");
    return const Action(SmartAction.isDelete);
  }
  static Action delete(index) {
    print("SmartListActionCreator delete");
    return  Action(SmartAction.delete,payload: index);
  }
}
