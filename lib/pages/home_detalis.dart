import 'package:catalogapp/width/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class home_detalis extends StatelessWidget {
  final Item catalog;
  const home_detalis({Key? key, required this.catalog}) :assert(catalog!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar( alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,

          children: [

            "\$${catalog.price}".text.xl4.red800.bold.make(),
            ElevatedButton(onPressed: (){},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Mytheme.darkblue ),
                    shape: MaterialStateProperty.all(StadiumBorder())
                ),

                child: "Add to cart".text.make()).wh(120, 50)
          ],).p32(),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        right: false,
        child: Column(
          children: [
            Hero(
                tag:  Key(catalog.id.toString()) ,
                child: Image.network(catalog.img),
            ).h32(context),
            Expanded(child: VxArc(
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP ,
              height: 30.0,
              child: Container(
                color: Colors.white  ,
                width: context.screenWidth,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      catalog.name.text.bold.xl4.color(Mytheme.darkblue).make(),
                      catalog.desc.text.xl.textStyle(context.captionStyle).color(Mytheme.darkblue).make().p16(),
                      10.heightBox,
                      " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"
                          .text.textStyle(context.captionStyle).make().p16()
                    ],

                  ).py64(),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
