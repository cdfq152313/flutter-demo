import 'package:mobx/mobx.dart';

part 'store_2.g.dart';

class Store2 = _Store2 with _$Store2;

abstract class _Store2 with Store {
  @observable
  ObservableList<int> list = ObservableList.of([]);

  @action
  void addItem(int item) {
    print("Add Item: $item");
    list.add(item);
  }
}
