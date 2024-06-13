import 'package:flutter/foundation.dart';

class InventoryNotifier extends ChangeNotifier{

  List<InventoryModel> _inventoryList = [];

  List<InventoryModel> get inventoryList => _inventoryList;

  // set inventoryList(List<InventoryModel> inventoryList){
  //   _inventoryList = inventoryList;
  //   notifyListeners();
  // }

  addInventory(InventoryModel inventory){
    _inventoryList.add(inventory);
    notifyListeners();
  }

  // deleteInventory(InventoryModel inventory){
  //   _inventoryList.remove(inventory);
  //   notifyListeners();
  // }

  // updateInventory(InventoryModel inventory){
  //   _inventoryList.removeWhere((element) => element.name == inventory.name);
  //   _inventoryList.add(inventory);
  //   notifyListeners();
  // }

}

class InventoryModel{
  final String name;
  final String description;
  final String price;
  final String quantity;
  

  InventoryModel({
    required this.name,
    required this.description,
    required this.price,
    required this.quantity,
  });
}