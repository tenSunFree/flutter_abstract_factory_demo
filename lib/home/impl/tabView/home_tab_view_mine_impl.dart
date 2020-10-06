import 'package:flutter/material.dart';
import 'package:flutter_abstract_factory_demo/home/abstract/home_tab_view.dart';

class HomeTabViewMineImpl implements HomeTabView {
  @override
  Widget getView() => Image.asset('assets/icon_mine.png', fit: BoxFit.fill);
}
