import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier{
  String? _screenName='/dashboard';
  GlobalKey<NavigatorState> mainNavigation = GlobalKey();

  String? get screenName => _screenName;

  set screenName(String? value) {
    _screenName = value;
    notifyListeners();
  }
}