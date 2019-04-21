import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ItemAction { isDelete ,delete}

class ItemActionCreator {
  static Action onDelete() {
    return Action(ItemAction.isDelete);
  }
  static Action delete(var uid) {
    return Action(ItemAction.delete,payload: uid);
  }
}
