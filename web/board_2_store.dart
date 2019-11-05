import 'package:mobx/mobx.dart';

part 'board_2_store.g.dart';

class Board2Store = _Board2Store with _$Board2Store;

abstract class _Board2Store with Store {
  @observable
  ObservableList<String> squares = ObservableList.of(List.generate(9, (_) => "_"));

  @action
  void clearSquares() {
    squares = ObservableList.of(List.generate(9, (_) => "_"));
  }
}
