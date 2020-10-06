import 'package:flutter/material.dart';
import 'package:flutter_abstract_factory_demo/home/abstract/home_tab_view.dart';

class HomeTabViewSearchImpl implements HomeTabView {
  @override
  Widget getView() => Image.asset('assets/icon_search.png', fit: BoxFit.fill);
}
