import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarWrap extends StatefulWidget
    implements ObstructingPreferredSizeWidget {
  final Widget child;
  final Widget title;
  final Color backgroundColor;
  final PreferredSizeWidget bottom;

  AppBarWrap(
      {@required this.child, this.backgroundColor, this.bottom, this.title});

  @override
  State<StatefulWidget> createState() {

    return AppBarWrapSate(child: child);
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottom?.preferredSize?.height ?? 0.0));

  @override
  bool get fullObstruction =>
      backgroundColor == null ? null : backgroundColor.alpha == 0xFF;
}

class AppBarWrapSate extends State<AppBarWrap> {
  StatefulWidget child;
  final Widget title;

  AppBarWrapSate({@required this.child, this.title});

  @override
  Widget build(BuildContext context) {
    ComponentWidget componentWidget=child;
    var createState = componentWidget.component.createState();
    var getter = componentWidget.getter();
    print("getter=$createState");
    return   child;
  }
}
