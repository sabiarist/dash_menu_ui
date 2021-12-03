import 'package:flutter/material.dart';
import 'sidebar.dart';

class DashbordPage extends StatefulWidget {
  const DashbordPage({Key? key}) : super(key: key);

  @override
  _DashbordPageState createState() => _DashbordPageState();
}

class _DashbordPageState extends State<DashbordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UTALMA MENU'),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green[100],

      drawer: const DrawerWidget(),

      body: Container(
        padding: const EdgeInsets.all(30),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            Menu('Academy', Icons.account_balance, Colors.brown),
            Menu('Information', Icons.info_outline, Colors.blue),
            Menu('School', Icons.school, Colors.orange),
            Menu('Teachers', Icons.person_pin, Colors.blueGrey),
            Menu('e-learning', Icons.local_library, Colors.red),
            Menu('Bibliotheque', Icons.library_books, Colors.teal),
          ],
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  Menu(this.title, this.icon, this.warna, {Key? key}) : super(key: key);
  final String title;
  final IconData icon;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.green,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 70,
                color: warna,
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
