import 'package:fish_redux/fish_redux.dart';
import 'package:redux_demo/home/appbar/component.dart';
import 'package:redux_demo/home/component/component.dart';
import 'package:redux_demo/home/home/page.dart';
import 'package:redux_demo/home/smart/page.dart';
import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class MainPage extends Page<MainPageState, Map<String, dynamic>> {
  MainPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<MainPageState>(
              adapter: null,
              slots: <String, Dependent<MainPageState>>{
                "index": indexConnector() + IndexComponent(),
                "smart": smartConnector() + SmartPage(),
//                "appBar": AppBarComponent().asDependent(appBarConnector()),
              }),
          middleware: <Middleware<MainPageState>>[],
        );
}
