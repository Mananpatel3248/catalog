import 'dart:convert';

import 'package:catalogapp/models/catalog.dart';
import 'package:catalogapp/width/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../width/item_width.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    super.initState();
    loaddata();
  }
loaddata() async{

  final catalogjson = await rootBundle.loadString("assets/files/catalog.json");
  final decodedata = jsonDecode(catalogjson);
  var productdata = decodedata["products"];

  catalogmodel.items =List.from(productdata).map<Item>((item) => Item.fromjson(item)).toList();
  setState(() {});
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        shadowColor: Colors.amber,
        title: Text("catalog"),) ,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: ),
            itemBuilder: itemBuilder,
          itemCount: catalogmodel.items.length,
        )
      ),
      drawer: mydrawer(),
    );
  }
}
