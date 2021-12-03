import 'package:flutter/material.dart';
import './views/dashboard.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'dashboard',
      routes: {
        'dashboard': (context) => const DashbordPage(),
      },
    )
  );
}

