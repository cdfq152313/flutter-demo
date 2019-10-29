import 'package:mobx/mobx.dart';

part 'store_1.g.dart';

class Store1 = _Store1 with _$Store1;

abstract class _Store1 with Store {
  @observable
  List<int> list = [];


  @action
  void addItem(int item) {
    print("Add Item: $item");
    list.add(item);
  }
}
