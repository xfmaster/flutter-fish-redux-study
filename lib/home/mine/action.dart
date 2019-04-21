import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MinePageAction { action }

class MinePageActionCreator {
  static Action onAction() {
    return const Action(MinePageAction.action);
  }
}
