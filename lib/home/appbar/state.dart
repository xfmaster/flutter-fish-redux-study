import 'package:fish_redux/fish_redux.dart';

class AppBarState implements Cloneable<AppBarState> {
  String title ;
  bool isDone;
  bool rightVisible;
  String rightText ;

  AppBarState({this.title, this.isDone, this.rightVisible, this.rightText});

  @override
  AppBarState clone() {
    print(title+">>>AppBarState");
    return AppBarState()
      ..title = title
      ..isDone = isDone
      ..rightVisible = rightVisible
      ..rightText =  rightText;
  }
}
