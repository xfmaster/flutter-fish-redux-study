import 'package:fish_redux/fish_redux.dart';
import 'package:redux_demo/home/home/component/list/adapter.dart';
import 'package:redux_demo/home/home/effect.dart';
import 'package:redux_demo/home/home/reducer.dart';
import 'package:redux_demo/home/home/state.dart';
import 'package:redux_demo/home/home/view.dart';

class HomePage extends Page<HomeState, Map<String, dynamic>> {
  HomePage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<HomeState>(
              adapter:NoneConn<HomeState>()+ HomeListAdapter(),
              slots: <String, Dependent<HomeState>>{
//          "index": IndexComponent().asDependent(indexConnector()),
//          "appBar": AppBarComponent().asDependent(appBarConnector()),
              }),
          middleware: <Middleware<HomeState>>[],
        );
}
