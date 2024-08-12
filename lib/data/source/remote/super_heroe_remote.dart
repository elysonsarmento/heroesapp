import '../../../util/requester.dart';
import '../../models/heroe.dart';

class SuperHeroeRemote {
  final Requester _requester;

  SuperHeroeRemote({required Requester requester}) : _requester = requester;

  Future<List<HeroeModel>> getSuperHeroes() async {
    final response = await _requester
        .getWithHttp('https://akabab.github.io/superhero-api/api/all.json');

    return (response.data as List).map((e) => HeroeModel.fromJson(e)).toList();
  }

  Future<HeroeModel> getSuperHeroeById(int id) async {
    final response = await _requester
        .getWithHttp('https://akabab.github.io/superhero-api/api/id/$id.json');

    return HeroeModel.fromJson(response.data);
  }
}
