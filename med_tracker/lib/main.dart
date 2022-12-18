import 'package:flutter/material.dart';
import 'package:med_tracker/history.dart';
import 'package:med_tracker/home.dart';
import 'package:med_tracker/inventory.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepPurple,
              title: const Text('Med Tracker'),
            ),
            bottomNavigationBar: menu(),
            body: TabBarView(
              children: [
                InventoryPage(),
                HomePage(),
                HistoryPage(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget menu() {
    return Container(
      color: Colors.deepPurple,
      child: const TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white70,
        padding: EdgeInsets.only(bottom: 20),
        indicatorColor: Colors.deepOrangeAccent,
        labelPadding: EdgeInsets.only(top: 10, bottom: 0),
        indicatorWeight: 5,
        tabs: [
          Tab(
            text: "Inventory",
            icon: Icon(
              Icons.inventory_outlined,
              size: 30,
            ),
          ),
          Tab(
            text: "Home",
            icon: Icon(
              Icons.home_outlined,
              size: 36,
            ),
          ),
          Tab(
            text: "History",
            icon: Icon(
              Icons.history_outlined,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
