import 'package:fish_redux/fish_redux.dart';

class ItemState implements Cloneable<ItemState> {
  bool isDelete = false;
  var index = 0;
  String uniqueId;

  ItemState({this.isDelete, this.index, this.uniqueId}) {
    uniqueId ??= DateTime.now().toIso8601String();
    isDelete=false;
  }

  @override
  ItemState clone() {
    print("isDelete=$isDelete");
    return ItemState()
      ..isDelete = isDelete
      ..index = index;
  }
}
