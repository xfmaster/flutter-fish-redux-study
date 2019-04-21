import 'package:fish_redux/fish_redux.dart';
import 'package:redux_demo/home/appbar/state.dart';
import 'package:redux_demo/home/component/state.dart';
import 'package:redux_demo/home/home/component/list/HomeItemBean.dart';

class HomeState implements Cloneable<HomeState> {
  String colorName = "";
  IndexState indexState;
  AppBarState appBarState;
  final List<HomeItemBean> list = new List();

  @override
  HomeState clone() {
    HomeState homeState = HomeState()
      ..colorName = colorName
      ..indexState
      ..appBarState = appBarState;
    print(homeState.appBarState.title + "------------------------>");
    return homeState;
  }
}

HomeState initState(Map<String, dynamic> args) {
  print("HomeState initState>>>>>>");
  HomeState homeState = HomeState()
    ..indexState
    ..appBarState = AppBarState(title: "标题", rightText: "完成");
  homeState.list.clear();
  for (int index = 0; index < 30; index++) {
    homeState.list.add(new HomeItemBean());
  }
  return homeState;
}
