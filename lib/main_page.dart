import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:judou/index/index.dart';
import 'package:judou/discovery/discovery.dart';
import 'package:judou/profile/profile.dart';
import 'package:judou/utils/color_util.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final _widgetOptions = [IndexPage(), DiscoveryPage(), ProfilePage()];

  void _onItemTapped(int index) {
    debugPrint('$index');
    setState(() {
      _selectedIndex = index;
    });
  }

  // @override
  // void initState() {
  //   setState(() {
  //     _selectedIndex = 0;
  //   });
  //   super.initState();
  // }

  @override
  void didUpdateWidget(MainPage oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: _selectedIndex == 0
                  ? Icon(Icons.autorenew)
                  : Icon(Icons.adjust),
              onPressed: () => this._onItemTapped(0),
            ),
            IconButton(
              icon: _selectedIndex == 1
                  ? Icon(Icons.explore)
                  : ImageIcon(AssetImage('assets/descovery.png')),
              onPressed: () => this._onItemTapped(1),
            ),
            IconButton(
              icon: _selectedIndex == 2
                  ? Icon(Icons.person)
                  : Icon(Icons.person_outline),
              onPressed: () => this._onItemTapped(2),
            ),
          ],
        ),
      ),
    );
  }
}

/** 
 * BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/home.png')),
              title: Text(''),
              activeIcon: Icon(Icons.autorenew)),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/descovery.png')),
              title: Text(''),
              activeIcon: Icon(Icons.explore)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              title: Text(''),
              activeIcon: Icon(Icons.person))
        ],
        currentIndex: _selectedIndex,
        fixedColor: ColorUtils.textPrimaryColor,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
 * */
