import 'package:flutter/material.dart';

import 'package:drawer/pages/gallery.dart';
import 'package:drawer/pages/import.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectDrawerItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Example'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Stack(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text('John Perez'),
                  accountEmail: Text('jperez@example.com'),
                  currentAccountPicture: CircleAvatar(
                    child: Text(
                      'JP',
                      style: TextStyle(fontSize: 40.0),
                    ),
                  ),
                ),
                Positioned(
                  right: 10.0,
                  top: 10.0,
                  child: GestureDetector(
                    child: Icon(
                      Icons.shield_moon,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    onTap: () => print('Change theme dark'),
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.camera_alt),
              selected: (0 == _selectDrawerItem),
              title: Text('Import'),
              onTap: () {
                _onSelectItem(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.photo),
              selected: (1 == _selectDrawerItem),
              title: Text('Gallery'),
              onTap: () {
                _onSelectItem(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.save),
              selected: (2 == _selectDrawerItem),
              title: Text('Export'),
              onTap: () {
                _onSelectItem(2);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_circle),
              selected: (3 == _selectDrawerItem),
              title: Text('Profile'),
              onTap: () {
                _onSelectItem(3);
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () {
                _onSelectItem(4);
              },
            ),
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectDrawerItem),
    );
  }

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return ImportPage();
      case 1:
        return GalleryPage();
    }
  }

  _onSelectItem(int pos) {
    Navigator.of(context).pop();
    setState(() {
      _selectDrawerItem = pos;
    });
  }
}
