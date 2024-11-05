// Import Flutter package
import 'package:flutter/material.dart';
// You can keep this import if you plan to implement Firestore features later.
// ignore: unused_import
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  runApp(InventoryApp());
}

// ignore: use_key_in_widget_constructors
class InventoryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inventory Management App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InventoryHomePage(title: 'Inventory Home Page', key: Key('inventory_home')),
    );
  }
}

class InventoryHomePage extends StatefulWidget {
  const InventoryHomePage({required Key key, required this.title}) : super(key: key);
  final String title;
  
  @override
  _InventoryHomePageState createState() => _InventoryHomePageState();
}

class _InventoryHomePageState extends State<InventoryHomePage> {
  // TODO: Implement Firestore integration

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Inventory Management System',
            ),
            // TODO: Implement inventory list view
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement add inventory item
        },
        tooltip: 'Add Item',
        child: const Icon(Icons.add),
      ),
    );
  }
}