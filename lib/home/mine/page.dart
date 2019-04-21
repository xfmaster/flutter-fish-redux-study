import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class MinePage extends Page<MinePageState, Map<String, dynamic>> {
  MinePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<MinePageState>(
                adapter: null,
                slots: <String, Dependent<MinePageState>>{
                }),
            middleware: <Middleware<MinePageState>>[
            ],);

}
