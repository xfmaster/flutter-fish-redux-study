import 'package:fish_redux/fish_redux.dart';

class IndexState implements Cloneable<IndexState> {
  String colorName;

  @override
  IndexState clone() {
    return IndexState()..colorName;
  }
}

IndexState initState(Map<String, dynamic> args) {
  return IndexState()..colorName;
}
