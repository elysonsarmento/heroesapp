import '../../domain/entities/heroes.dart';
import '../../domain/repositories/super_heroes_repo.dart';
import '../source/remote/super_heroe_remote.dart';

class SuperHeroes implements ISuperHeroesRepo {
  final SuperHeroeRemote superHeroeRemote;

  SuperHeroes({required this.superHeroeRemote});

  @override
  Future<List<Heroe>> getSuperHeroes() async {
    try {
      final response = await superHeroeRemote.getSuperHeroes();
      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Heroe> getSuperHeroeById(int id) {
    try {
      final response = superHeroeRemote.getSuperHeroeById(id);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
