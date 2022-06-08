
import 'package:flutter/cupertino.dart';

class ListProvider with ChangeNotifier{

  List<String> list=[];

  void addItem(String item){
    list.add(item);
    notifyListeners();
  }
  void removeItem(int index){
    list.removeAt(index);
    notifyListeners();
  }
}