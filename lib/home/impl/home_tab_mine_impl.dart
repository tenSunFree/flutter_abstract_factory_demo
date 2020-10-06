import 'package:flutter_abstract_factory_demo/home/abstract/home_tab_abstract_factory.dart';
import 'package:flutter_abstract_factory_demo/home/abstract/home_tab_view.dart';
import 'package:flutter_abstract_factory_demo/home/impl/tabView/home_tab_view_mine_impl.dart';

class HomeTabMineImpl implements HomeTabAbstractFactory {
  @override
  String getTabName() => 'Mine';

  @override
  HomeTabView createTabView() => HomeTabViewMineImpl();
}
