import 'package:flutter_abstract_factory_demo/home/abstract/home_tab_view.dart';

abstract class HomeTabAbstractFactory {
  String getTabName();

  HomeTabView createTabView();
}
