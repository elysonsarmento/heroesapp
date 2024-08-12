// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on _HomeController, Store {
  late final _$loadingAtom =
      Atom(name: '_HomeController.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$responseListAtom =
      Atom(name: '_HomeController.responseList', context: context);

  @override
  ObservableList<Heroe> get responseList {
    _$responseListAtom.reportRead();
    return super.responseList;
  }

  @override
  set responseList(ObservableList<Heroe> value) {
    _$responseListAtom.reportWrite(value, super.responseList, () {
      super.responseList = value;
    });
  }

  late final _$getHeroesAsyncAction =
      AsyncAction('_HomeController.getHeroes', context: context);

  @override
  Future<void> getHeroes() {
    return _$getHeroesAsyncAction.run(() => super.getHeroes());
  }

  late final _$_HomeControllerActionController =
      ActionController(name: '_HomeController', context: context);

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setResponseList(List<Heroe> value) {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.setResponseList');
    try {
      return super.setResponseList(value);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
responseList: ${responseList}
    ''';
  }
}
