import 'package:flutter_abstract_factory_demo/home/abstract/home_tab_abstract_factory.dart';
import 'package:flutter_abstract_factory_demo/home/abstract/home_tab_view.dart';
import 'package:flutter_abstract_factory_demo/home/impl/tabView/home_tab_view_house_impl.dart';

class HomeTabHouseImpl implements HomeTabAbstractFactory {
  @override
  String getTabName() => 'House';

  @override
  HomeTabView createTabView() => HomeTabViewHouseImpl();
}
