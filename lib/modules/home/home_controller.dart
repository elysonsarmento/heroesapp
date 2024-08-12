import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../domain/entities/entities.dart';
import '../../domain/usecase/super_heroes_usecase.dart';

part 'home_controller.g.dart';

class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  final SuperHeroesUseCase _superHeroesUsecase =
      Modular.get<SuperHeroesUseCase>();

  @observable
  bool loading = false;

  @observable
  ObservableList<Heroe> responseList = ObservableList();

  @action
  void setLoading(bool value) => loading = value;

  @action
  void setResponseList(List<Heroe> value) =>
      responseList = ObservableList.of(value);

  @action
  Future<void> getHeroes() async {
    setLoading(true);

    final response = await _superHeroesUsecase.getAllSuperHeroes();
    setResponseList(response);

    setLoading(false);
  }
}
