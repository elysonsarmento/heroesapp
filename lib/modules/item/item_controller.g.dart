// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ItemController on _ItemController, Store {
  late final _$superHeroAtom =
      Atom(name: '_ItemController.superHero', context: context);

  @override
  Heroe? get superHero {
    _$superHeroAtom.reportRead();
    return super.superHero;
  }

  @override
  set superHero(Heroe? value) {
    _$superHeroAtom.reportWrite(value, super.superHero, () {
      super.superHero = value;
    });
  }

  late final _$getSuperHeroByIdAsyncAction =
      AsyncAction('_ItemController.getSuperHeroById', context: context);

  @override
  Future<void> getSuperHeroById(int id) {
    return _$getSuperHeroByIdAsyncAction.run(() => super.getSuperHeroById(id));
  }

  @override
  String toString() {
    return '''
superHero: ${superHero}
    ''';
  }
}
