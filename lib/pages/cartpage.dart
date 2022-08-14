import 'package:catalogapp/models/cart.dart';
import 'package:catalogapp/pages/HOME_PAGE.dart';
import 'package:catalogapp/width/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class cartpage extends StatelessWidget {
  const cartpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.canvasColor,
        title: "Cart".text.color(context.accentColor).xl3.make(),

      ),

      backgroundColor: context.canvasColor,
      body: Column(children: [
        cartList().p32().expand(),
        Divider(),
        carttotal(),
      ],),

    );
  }
}

class carttotal extends StatelessWidget {
  final _cart = cartmodel();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalprice}".text.xl5.color(context.theme.accentColor).make(),
          30.widthBox,
          ElevatedButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: "Buying not supported  yet.".text.make())
                );
              },
             style: ButtonStyle(
               backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
                 shape: MaterialStateProperty.all(StadiumBorder())
             ) ,

              child: "Buy".text.xl.make()).w32(context)
        ],
      ),
    );
  }
}

class cartList extends StatelessWidget {

final _cart = cartmodel();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context,index)=>ListTile(
          leading: Icon(Icons.done),
          trailing: IconButton(
            icon: Icon(Icons.remove_circle_outline),
            onPressed: (){},

          ),
          title: _cart.items[index].name.text.color(context.theme.accentColor).make(),
        ),
      itemCount: _cart.items.length,
    );
  }
}

