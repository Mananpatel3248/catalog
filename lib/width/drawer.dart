import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class mydrawer extends StatelessWidget {
  const mydrawer({Key? key}) : super(key: key);
  final imguri="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLwWl2h9_v3BhyS5bMqxgN7aRLSOZYHNJSuw&usqp=CAU";

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(

        padding: const EdgeInsets.all(0.0),
        children: [
          DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(

            accountName: Text("Manan Patel Welcome "),
            accountEmail: Text("Mannapatel@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(imguri),

            ),
          )),
           ListTile(

            leading: Icon(CupertinoIcons.home),
            title: Text("Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),

            ),
          ),

          ListTile(

            leading: Icon(CupertinoIcons.add_circled_solid),
            title: Text("Watchlist",
              textScaleFactor: 1.2,
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),

            ),
          ),

          ListTile(

            leading: Icon(CupertinoIcons.settings),
            title: Text("Setting",
              textScaleFactor: 1.2,
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),

            ),
          ),

          const ListTile(

            leading: Icon(CupertinoIcons.minus_circle),
            title: Text("remove",
              textScaleFactor: 1.2,
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),

            ),
          )

        ],
      ),
    );

  }
}
