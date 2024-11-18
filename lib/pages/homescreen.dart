
import 'package:device_control_app/bar_graph/bar_graph.dart';
import 'package:device_control_app/pages/home_tab_sreen.dart';
import 'package:flutter/material.dart';
import 'control_screen.dart';
import 'device_screen.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List<double> deviceSummary = [
    50.0,
    50.0,
    50.0,
    50.0,
    50.0,
  ];

  final List<Widget> _screens = [];

  @override
  void initState() {
    super.initState();
    _screens.addAll([
      HomeTabScreen(deviceSummary: deviceSummary),
      DeviceScreen(),
      ControlScreen(),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: _selectedIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text('Trang chủ'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.perm_device_information),
            title: Text('Thông tin thiết bị'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.settings),
            title: Text('Điều khiển thiết bị'),
          ),
        ],
      ),
    );
  }
}
