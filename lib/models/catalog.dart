class catalogmodel {
 static  List<Item> items=[];

}


class Item{
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String img;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.img});

  factory  Item.fromjson( Map<String,dynamic> map){
      return Item(
        id:map["id"],
        name: map["name"],
        desc:map["desc"],
        price:map["price"],
        img:map["img"],
        color:map["color"],
      );
  }
  tomap()=>{
    "id":id,
    "name":name,
    "desc":desc,
    "price":price,
    "img":img,
    "color":color,

  };
}