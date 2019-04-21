import 'package:fish_redux/fish_redux.dart';

class MinePageState implements Cloneable<MinePageState> {

  @override
  MinePageState clone() {
    return MinePageState();
  }
}

MinePageState initState(Map<String, dynamic> args) {
  return MinePageState();
}
