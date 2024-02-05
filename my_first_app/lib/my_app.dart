import 'package:flutter/material.dart';
import 'package:my_first_app/list_sample.dart';

import 'package:my_first_app/listing_objects.dart';
import 'package:my_first_app/music_list_page.dart';
import 'package:my_first_app/schedule.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
        initialRoute: '/',
      routes: <String, WidgetBuilder> {
        "/": (context)=> const ListingObjects(),
        "/": (context)=> const Schedule(),
     
  }
  );
  }
}
