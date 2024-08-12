import '../entities/entities.dart';
import '../repositories/super_heroes_repo.dart';

class SuperHeroesUseCase {
  final ISuperHeroesRepo _superHeroesRepo;

  SuperHeroesUseCase({required ISuperHeroesRepo superHeroesRepo})
      : _superHeroesRepo = superHeroesRepo;

  Future<List<Heroe>> getAllSuperHeroes() async {
    final superHeroes = await _superHeroesRepo.getSuperHeroes();
    return superHeroes;
  }

  // Método para obter um super-herói por ID
  Future<Heroe> getSuperHeroById(int id) async {
    final superHero = await _superHeroesRepo.getSuperHeroeById(id);
    return superHero;
  }
}
