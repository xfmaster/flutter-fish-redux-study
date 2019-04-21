import 'package:fish_redux/fish_redux.dart';
import 'package:redux_demo/home/smart/item/state.dart';

class SmartState implements Cloneable<SmartState> {
  List<ItemState> itemState;

  @override
  SmartState clone() {
    var length = itemState.length;
    print("itemState clone =$length");
    return SmartState()..itemState = itemState;
  }
}

SmartState initState(Map<String, dynamic> args) {
  SmartState smartState = SmartState();
  smartState.itemState = new List();
  for (int i = 0; i < 50; i++) {
    smartState.itemState.add(new ItemState(isDelete: false, index: i));
  }
  return smartState;
}

class AppbarConnector extends ConnOp<SmartState, ItemState> {
  @override
  void set(SmartState state, ItemState subState) {
    print("set>>>");
    super.set(state, subState);
  }

  @override
  ItemState get(SmartState state) {
    print("AppbarConnector get");
    final ItemState reportState = ItemState();
    reportState.index = state.itemState.length;
    reportState..isDelete;
    return reportState;
  }
}
