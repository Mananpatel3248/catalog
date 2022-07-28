
import 'package:catalogapp/models/catalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class  itemview extends StatelessWidget {
  final Item item;

  const itemview({super.key, required this.item}): assert(item != null);





  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(

        child: ListTile(
          onTap: (){
            Text(item.name);
          },
          leading: Image.network(item.img),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text("\$${item.price}",
                textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,

          ),
          ),
        ),
      ),
    );
  }
}
