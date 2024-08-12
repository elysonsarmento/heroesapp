import '../entities/entities.dart';

abstract class ISuperHeroesRepo {
  Future<List<Heroe>> getSuperHeroes();
  Future<Heroe> getSuperHeroeById(int id);
}
