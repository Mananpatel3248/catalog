import 'catalog.dart';

class cartmodel{
  late catalogmodel _catalog;
  //coletion of id  store all id
  final List<int> _itemid =[];

  //get catalog
  catalogmodel get catalog => _catalog;

  set catalog(catalogmodel newcatalog){
    assert(newcatalog != null);
    _catalog=newcatalog;


  }
  //get item in the cart

  List<Item> get  items =>  _itemid.map((id)=>_catalog.getByID(id)).toList();

  num get totalprice => items.fold(0,(total,current) => total+current.price);

  //add item
    void additem(Item item){
      _itemid.add(item.id);

    }
  //remove item
  void removeitem(Item item){
    _itemid.remove(item.id);

  }




}