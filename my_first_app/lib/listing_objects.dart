import 'package:flutter/material.dart';

class ListingObjects extends StatefulWidget {
  const ListingObjects({super.key});


  @override
  State<ListingObjects> createState() => _ListingObjectsState();
}

class _ListingObjectsState extends State<ListingObjects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 60,
        // actions: [IconButton(onPressed: (), icon: icon)],
      ),

      );
 
  }
}