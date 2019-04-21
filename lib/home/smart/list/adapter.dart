import 'package:fish_redux/fish_redux.dart';
import 'package:redux_demo/home/smart/item/component.dart';
import 'package:redux_demo/home/smart/item/state.dart';
import 'package:redux_demo/home/smart/state.dart';

import 'reducer.dart';

class SmartListAdapter extends DynamicFlowAdapter<SmartState> {
  SmartListAdapter()
      : super(
          pool: <String, Component<Object>>{"itemData":ItemComponent()},
          connector: _SmartListConnector(),
          reducer: buildReducer(),
        );
}

class _SmartListConnector extends ConnOp<SmartState, List<ItemBean>> {
  @override
  List<ItemBean> get(SmartState state) {
    if (state.itemState?.isNotEmpty == true) {
      return state.itemState.map<ItemBean>((ItemState data) {
        var isDelete = data.isDelete;
        print("_SmartListConnector get $isDelete");
        return ItemBean('itemData', data);
      }).toList(growable: true);
    } else {
      return <ItemBean>[];
    }
  }

  @override
  void set(SmartState state, List<ItemBean> items) {
    print("_SmartListConnector set");
    if (items?.isNotEmpty == true) {
      state.itemState =
          List<ItemState>.from(items.map<ItemState>((ItemBean bean) {
        print(bean.data);
        return bean.data;
      }).toList());
    } else {
      state.itemState = <ItemState>[];
    }
  }
}
