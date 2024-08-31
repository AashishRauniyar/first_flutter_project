import 'package:first_project/pages/home_page.dart';
import 'package:first_project/pages/profile_page.dart';
import 'package:first_project/pages/settings_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // this keeps track of the current page to display
  int _selectedIndex = 0;

  // this method updates the new  selected index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // the pages we have in our app
  final List _pages = [HomePage(), ProfilePage(), SettingsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("first page"),
        backgroundColor: Colors.teal,
      ),
      body: _pages[_selectedIndex],
      // drawer: Drawer(
      //   backgroundColor: Color.fromARGB(255, 237, 236, 234),
      //   child: Column(
      //     children: [
      //       DrawerHeader(child: Icon(Icons.favorite, size: 48)),
      //       // home page list tile
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("H O M E"),
      //         onTap: () {
      //           // pop drawer first
      //           Navigator.pop(context);
      //           // go to home page
      //           Navigator.pushNamed(context, '/homePage');
      //         },
      //       ),
      //       //setting page list tile
      //       ListTile(
      //         leading: Icon(Icons.settings),
      //         title: Text("S E T T I N G S"),
      //         onTap: () {
      //           // pop drawer first
      //           Navigator.pop(context);
      //           // go to home page
      //           Navigator.pushNamed(context, '/settingsPage');
      //         },
      //       )
      //     ],
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: const [
          // home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          //profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),

          //settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
