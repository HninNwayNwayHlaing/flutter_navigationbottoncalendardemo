import 'package:flutter/material.dart';
import 'package:tabbardemo/fragments/first_fragment.dart';
import 'package:tabbardemo/fragments/second_fragment.dart';
import 'package:tabbardemo/fragments/third_fragment.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  PageController _pageController;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).copyWith();
    return new MaterialApp(
      theme: new ThemeData(iconTheme: new IconThemeData(color: Colors.blue)),
      home: new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.white,
            bottom: new TabBar(
              tabs: [
                new Tab(text: 'Home'),
                new Tab(text: 'Health Education'),
              ],
              labelColor: Colors.orange,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.orange,
            ),
            title: new Text(
              'Tabs Demo',
              style: const TextStyle(color: Colors.orange),
            ),
            leading: new Icon(
              Icons.train,
              size: 20.0,
            ),
          ),
          body: new TabBarView(
            children: [
              new FirstFragment(),
              new SecondFragment(),
            ],
          ),
          bottomNavigationBar: new Container(
            child: new BottomNavigationBar(
              iconSize: 30.0,
              items: [
                new BottomNavigationBarItem(
                  icon: new Icon(
                    Icons.location_on,
                    color: Colors.black54,
                  ),
                  title: new Text(
                    'Address',
                    style: new TextStyle(
                        fontSize: 14.0,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                new BottomNavigationBarItem(
                  icon: new Icon(Icons.local_phone, color: Colors.black54),
                  title: new Text(
                    'Phone',
                    style: new TextStyle(
                        fontSize: 14.0,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                new BottomNavigationBarItem(
                  icon: new Icon(Icons.message, color: Colors.black54),
                  title: new Text(
                    'Phone',
                    style: new TextStyle(
                        fontSize: 14.0,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
              onTap: navigationTapped,
            ),
          ),
        ),
      ),
    );
  }

  /// page index
  void navigationTapped(int page) {
    switch (page) {
      case 0:
        print("This is Address Icon");
        break;
      case 1:
        print("This is Phone Icon");
        break;
      case 2:
        print("This is Message Icon");
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
