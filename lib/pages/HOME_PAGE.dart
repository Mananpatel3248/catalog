import 'dart:convert';

import 'package:catalogapp/models/catalog.dart';
import 'package:catalogapp/pages/home_detalis.dart';
import 'package:catalogapp/utiles/modules.dart';
import 'package:catalogapp/width/drawer.dart';
import 'package:catalogapp/width/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';


class homepage extends StatefulWidget {

  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

  @override
  Widget build(BuildContext context) {
    return Container();
  }
class catalogheader extends StatelessWidget {
  const catalogheader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl4.bold.color(context.theme.accentColor).make(),
        "Trending Products".text.xl2.color(context.theme.accentColor).make(),
      ],
    );
  }
}

class Cataloglist extends StatelessWidget {
  const Cataloglist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      shrinkWrap: true,
      itemCount: catalogmodel.items.length,
        itemBuilder: (context,index){
        final catalog =   catalogmodel.items[index];
         return InkWell(child: catalogitem(catalog: catalog),
         onTap: ()=> Navigator.push(context,
             MaterialPageRoute(
                 builder: (Context)=>home_detalis(
               catalog:catalog

         ))),
         );
        }

    );
  }
}
class catalogimg extends StatelessWidget {
  final String image;
  const catalogimg({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Image.network(image,)
        .box.rounded.p8
        .color(context.canvasColor).
    make().p16().w40(context);
  }
}

 class catalogitem extends StatelessWidget {
   final Item catalog;

  const catalogitem({Key? key, required this.catalog})
      :assert(catalog!=null),
        super(key: key);
   @override
   Widget build(BuildContext context) {
     return SingleChildScrollView(
       child: VxBox(child: Row(
         children: [
           Hero(
             tag:  Key(catalog.id.toString()) ,
              child: catalogimg(
                image: catalog.img,
              ),
           ),
           Expanded(child: SingleChildScrollView(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 catalog.name.text.bold.xl.color(context.theme.accentColor).make(),
                 catalog.desc.text.textStyle(context.captionStyle).color(context.theme.accentColor).make(),
                 10.heightBox,
                 ButtonBar(
                   alignment: MainAxisAlignment.spaceBetween,
                   buttonPadding: EdgeInsets.zero,

                   children: [

                   "\$${catalog.price}".text.xl.bold.make(),
                   _addtocart(),
                 ],).pOnly(right: 8.0)
               ],
             ),
           ))

         ],
       )

       ).color(context.cardColor).rounded.square(150).make().py16(),
     );
   }
 }

class _addtocart extends StatefulWidget {

  const _addtocart({Key? key}) : super(key: key);

  @override
  State<_addtocart> createState() => _addtocartState();
}

class _addtocartState extends State<_addtocart> {
   bool isadded = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          final catalog = catalogmodel();
      isadded = isadded.toggle();
      setState((){});
    },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Mytheme.darkblue ),
            shape: MaterialStateProperty.all(StadiumBorder())
        ),

        child: isadded ? Icon(Icons.done):"Add to cart".text.make());
  }
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

    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Scaffold(
        backgroundColor: context.cardColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, module.cartpageroute),

          child: Icon(CupertinoIcons.cart),
          backgroundColor: context.theme.buttonColor,
        ),

        body: SafeArea(

          
            child: SingleChildScrollView(

              child: Container(
                padding: Vx.m32,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        catalogheader(),
                        if(catalogmodel.items!=null && catalogmodel.items.isNotEmpty)
                             Cataloglist().expand().py16()

                        else
                         CircularProgressIndicator().centered().expand()

                      ],
                    ),
                  

              ),
            ),
         
        ),

        drawer: mydrawer()

      ),
    );
  }
  
}
