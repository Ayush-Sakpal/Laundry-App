import 'package:flutter/material.dart';

class DryCleanProvider extends ChangeNotifier{
  List<int> itemQuantities = [];
  List<String?> itemNames = [];

  void addItemName(String itemName){
    itemNames.add(itemName);
    notifyListeners();
  }

  void addItemQty(int itemQty){
    itemQuantities.add(itemQty);
    notifyListeners();
  }

  void stdWashIncrementQty(int index){
    itemQuantities[index]++;
    notifyListeners();
  }

  void stdWashDecrementQty(int index){
    if(itemQuantities[index] > 0){
      itemQuantities[index]--;
    }
    notifyListeners();
  }

  double getDryCleanCartTotal(){
    double dryCleanTotal = 0;
    double itemPrice = 0;

    for(int i = 0; i < itemNames.length; i++){
      switch(itemNames[i]){
        case "Tops":{
          itemPrice = 15;
        }
        break;
        case "Bottoms": {
          itemPrice = 17;
        }
        break;
        case "Coats": {
          itemPrice = 23;
        }
        break;
        case "Dress": {
          itemPrice = 40;
        }
      }
      dryCleanTotal += itemQuantities[i] * itemPrice;
    }

    return dryCleanTotal;
  }

}