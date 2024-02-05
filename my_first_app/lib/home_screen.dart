import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String mainTitle = "";
  List<String> items = [];

  void _getData() async {
    String urlString = "https://jsonplaceholder.typicode.com/albums/1/";
    Uri uri = Uri.parse(urlString);
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      var responseDecoded = jsonDecode(response.body) as Map<String, dynamic>;
      String title = responseDecoded["title"];
      setState(() {
        mainTitle = title;
      });
    } else {}
  }

  void _getListData() async {
    String urlString = "https://jsonplaceholder.typicode.com/albums/";
    Uri uriParsed = Uri.parse(urlString);
    var response = await http.get(uriParsed);
    if (response.statusCode == 200) {
      var responseDecoded = jsonDecode(response.body) as List<dynamic>;
      responseDecoded.forEach((item) {
        var id = item["id"];
        var userId = item["userId"];
        var title = item["title"];
        items.add(title);
      });

      setState(() {});
    } else {}
  }

  @override
  void initState() {
    _getData();
    _getListData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 160,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
          ],
          leading: Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
              const Text(
                "Bubble",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ],
          ),
        ),
        body: Center(
          child: ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 8,
                );
              },
              itemCount: items.length,
              itemBuilder: (BuildContext context, int pos) {
                return ListTile(
                  title: Text(
                    items[pos],
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  leading: ClipOval(
                    child: Container(
                      color: Colors.amber,
                      height: 48,
                      width: 48,
                      child: Center(
                        child: Text(
                            items[pos]
                                .characters
                                .first
                                .toString()
                                .toUpperCase(),
                            style: const TextStyle(
                                fontSize: 16, color: Colors.white)),
                      ),
                    ),
                  ),
                );
              }),
        ));
  }
}