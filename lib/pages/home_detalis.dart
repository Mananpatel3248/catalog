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

                child: "Buy".text.make()).wh(100, 50)
          ],).p32(),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: Column(
          children: [
            Hero(
                tag:  key!= catalog.id.toString() ,
                child: Image.network(catalog.img),
            ).h32(context),
            Expanded(child: VxArc(
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP ,
              height: 30.0,
              child: Container(
                color: Colors.white  ,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.bold.xl4.color(Mytheme.darkblue).make(),
                    catalog.desc.text.xl.textStyle(context.captionStyle).color(Mytheme.darkblue).make(),
                    10.heightBox,
                  ],
                ).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
