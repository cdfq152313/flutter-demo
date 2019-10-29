// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_2.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Store2 on _Store2, Store {
  final _$listAtom = Atom(name: '_Store2.list');

  @override
  ObservableList<int> get list {
    _$listAtom.context.enforceReadPolicy(_$listAtom);
    _$listAtom.reportObserved();
    return super.list;
  }

  @override
  set list(ObservableList<int> value) {
    _$listAtom.context.conditionallyRunInAction(() {
      super.list = value;
      _$listAtom.reportChanged();
    }, _$listAtom, name: '${_$listAtom.name}_set');
  }

  final _$_Store2ActionController = ActionController(name: '_Store2');

  @override
  void addItem(int item) {
    final _$actionInfo = _$_Store2ActionController.startAction();
    try {
      return super.addItem(item);
    } finally {
      _$_Store2ActionController.endAction(_$actionInfo);
    }
  }
}
