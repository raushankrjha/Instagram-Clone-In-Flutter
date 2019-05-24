import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/screens/HomePage.dart';
import 'package:instagram_clone/screens/ProfilePage.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
 
int _selectedIndex = 0;
  final _widgetOptions = [
    HomePage(),
    Text('Search'),
    Text(' Add Photo'),
     Text(' Like'),
    ProfilePage(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: new AppBar(
        leading: Builder(
    builder: (BuildContext context) {
      return IconButton(
        icon: const Icon(FontAwesomeIcons.camera),
        onPressed: () { Scaffold.of(context).openDrawer(); },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      );
    },
  ),
        title: new Text('Instagram', style: new TextStyle(color: Colors.white)),
        
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.live_tv),
            color: Colors.white,
            onPressed: (){},
          ),
          IconButton(
            icon: new Icon(Icons.send),
            color: Colors.white,
            onPressed: (){},
          ),
        ],
        
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        
           type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), title: Text('')),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.heart), title: Text('')),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user), title: Text('')),
      
          
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.black,
        onTap: _onItemTapped,
        
      ),
     
     
    );

  }
   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}