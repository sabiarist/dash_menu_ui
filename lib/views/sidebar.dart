import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              'Aristide Sabi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
              ),
            ),
            accountEmail: const Text('sabiarist@gmail.com'),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage('assets/kl.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.green[700],
            ),
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('Profil'),
          ),
          const ListTile(
            leading: Icon(Icons.vpn_key),
            title: Text('User Password'),
          ),
          const ListTile(
            leading: Icon(Icons.info),
            title: Text('Help Center'),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),
          ),
        ],
      ),
    );
  }
}
