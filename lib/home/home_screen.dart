import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_abstract_factory_demo/home/abstract/home_tab_abstract_factory.dart';
import 'package:flutter_abstract_factory_demo/home/abstract/home_tab_view.dart';
import 'package:flutter_abstract_factory_demo/home/impl/home_tab_edit_impl.dart';
import 'package:flutter_abstract_factory_demo/home/impl/home_tab_house_impl.dart';
import 'package:flutter_abstract_factory_demo/home/impl/home_tab_mine_impl.dart';
import 'package:flutter_abstract_factory_demo/home/impl/home_tab_notification_impl.dart';
import 'package:flutter_abstract_factory_demo/home/impl/home_tab_search_impl.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<HomeTabAbstractFactory> _tabList = [
    HomeTabHouseImpl(),
    HomeTabSearchImpl(),
    HomeTabEditImpl(),
    HomeTabNotificationImpl(),
    HomeTabMineImpl()
  ];
  int _selectedFactoryIndex = 0;
  HomeTabView _tabView;

  @override
  void initState() {
    super.initState();
    _tabView = _tabList[_selectedFactoryIndex].createTabView();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
      _tabView.getView(),
      Container(
          padding: EdgeInsets.all(8),
          color: Color(0x50000000),
          child: Text(_tabList[_selectedFactoryIndex].getTabName(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  decoration: TextDecoration.none))),
      Column(children: <Widget>[
        Expanded(child: SizedBox(), flex: 105),
        _buildBottomTabExpanded()
      ])
    ]));
  }

  Expanded _buildBottomTabExpanded() {
    return Expanded(
        child: Row(children: <Widget>[
          _buildBottomTabChildExpanded(0),
          _buildBottomTabChildExpanded(1),
          _buildBottomTabChildExpanded(2),
          _buildBottomTabChildExpanded(3),
          _buildBottomTabChildExpanded(4)
        ]),
        flex: 10);
  }

  Expanded _buildBottomTabChildExpanded(int index) {
    return Expanded(
        child: Container(
            child:
                GestureDetector(onTap: () => _setSelectedFactoryIndex(index))),
        flex: 1);
  }

  void _setSelectedFactoryIndex(int index) {
    setState(() {
      _selectedFactoryIndex = index;
      _tabView = _tabList[_selectedFactoryIndex].createTabView();
    });
  }
}
