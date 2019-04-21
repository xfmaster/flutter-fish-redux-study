import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 会根据平台，去适配所在平台的小部件
 * Flutter中包含了适用于IOS和Android的两套原生小部件，名为Cupertino和Material
 */
abstract class BasePlatformWidget<A extends Widget, I extends Widget>
    extends StatelessWidget {
  A createAndroidWidget(BuildContext context);

  I createIosWidget(BuildContext context);

  @override
  Widget build(BuildContext context) {
    /**如果是IOS平台，返回ios风格的控件
     * Android和其他平台都返回materil风格的控件
     */
    if (Platform.isIOS) {
      return createIosWidget(context);
    }
    return createAndroidWidget(context);
  }
}

/**
 * 脚手架
 */
class PlatformScaffold extends BasePlatformWidget<Scaffold, Scaffold> {
  PlatformScaffold({this.appBar, this.bottomNavigationBar, this.body});

  final PlatformAppBar appBar;
  final Widget body;
  final Widget bottomNavigationBar;

  @override
  Scaffold createAndroidWidget(BuildContext context) {
    return Scaffold(
      appBar: appBar.createAndroidWidget(context),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  @override
  Scaffold createIosWidget(BuildContext context) {
    return Scaffold(
      appBar: appBar.createIosWidget(context),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}

/**
 * AppBar
 */
class PlatformAppBar extends BasePlatformWidget<AppBar, CupertinoNavigationBar> {
  final Widget title;
  final Widget action;
  final bool centerTitle;

  PlatformAppBar({this.title, this.centerTitle, this.action});

  @override
  AppBar createAndroidWidget(BuildContext context) {
    return new AppBar(
      key: Key("appbar"),
      title: title,
      centerTitle: centerTitle ?? true,
      actions: <Widget>[action],
    );
  }

  @override
  CupertinoNavigationBar createIosWidget(BuildContext context) {
    return new CupertinoNavigationBar(
      middle: title,
      trailing: action,
    );
  }
}

/**
 * 对话框
 */
class PlatformAlertDialog
    extends BasePlatformWidget<AlertDialog, CupertinoAlertDialog> {
  final Widget title;
  final Widget content;
  final List<Widget> actions;

  PlatformAlertDialog({this.title, this.content, this.actions});

  @override
  AlertDialog createAndroidWidget(BuildContext context) {
    return new AlertDialog(
      title: title,
      content: content,
      actions: actions,
    );
  }

  @override
  CupertinoAlertDialog createIosWidget(BuildContext context) {
    return new CupertinoAlertDialog(
      title: title,
      content: content,
      actions: actions,
    );
  }
}

/**
 * Switch
 */

class PlatformSwicth extends BasePlatformWidget<Switch, CupertinoSwitch> {
  final bool value;
  final ValueChanged<bool> onChanged;

  PlatformSwicth({this.value, this.onChanged});

  @override
  Switch createAndroidWidget(BuildContext context) {
    return new Switch(value: value, onChanged: onChanged);
  }

  @override
  CupertinoSwitch createIosWidget(BuildContext context) {
    return new CupertinoSwitch(value: value, onChanged: onChanged);
  }
}

/**
 * Button
 */
class PlatformButton
    extends BasePlatformWidget<MaterialButton, CupertinoButton> {
  final VoidCallback onPressed;
  final Widget child;

  PlatformButton({this.onPressed, this.child});

  @override
  MaterialButton createAndroidWidget(BuildContext context) {
    return new MaterialButton(onPressed: onPressed, child: child);
  }

  @override
  CupertinoButton createIosWidget(BuildContext context) {
    return new CupertinoButton(child: child, onPressed: onPressed);
  }
}
