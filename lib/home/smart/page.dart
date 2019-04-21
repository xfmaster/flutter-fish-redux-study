import 'package:fish_redux/fish_redux.dart';
import 'package:redux_demo/home/smart/item/component.dart';
import 'package:redux_demo/home/smart/list/adapter.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class SmartPage extends Page<SmartState, Map<String, dynamic>> {
  SmartPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<SmartState>(
              adapter: SmartListAdapter(),
              slots: <String, Dependent<SmartState>>{
              }),
          middleware: <Middleware<SmartState>>[
            logMiddleware(tag:"SmartPage")
          ],
        );
}
