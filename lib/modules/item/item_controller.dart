import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../domain/entities/entities.dart';
import '../../domain/usecase/super_heroes_usecase.dart';

part 'item_controller.g.dart';

class ItemController = _ItemController with _$ItemController;

abstract class _ItemController with Store {
  final SuperHeroesUseCase _superHeroesUsecase =
      Modular.get<SuperHeroesUseCase>();

  @observable
  Heroe? superHero;

  @action
  Future<void> getSuperHeroById(int id) async {
    try {
      final response = await _superHeroesUsecase.getSuperHeroById(id);
      superHero = response;
    } catch (e) {
      rethrow;
    }
  }
}
