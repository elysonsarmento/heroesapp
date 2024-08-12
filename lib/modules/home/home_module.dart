import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../data/repositories/super_horoes_repo.dart';
import '../../data/source/remote/super_heroe_remote.dart';
import '../../domain/repositories/super_heroes_repo.dart';
import '../../domain/usecase/super_heroes_usecase.dart';
import '../../util/requester.dart';
import '../item/item_controller.dart';
import '../item/item_page.dart';
import 'home_controller.dart';
import 'home_page.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
    i.addInstance(Dio());

    i.addInstance<ISuperHeroesRepo>(
      SuperHeroes(
        superHeroeRemote: SuperHeroeRemote(
          requester: Requester(dio: i.get<Dio>()),
        ),
      ),
    );

    i.addInstance<SuperHeroesUseCase>(
        SuperHeroesUseCase(superHeroesRepo: i.get<ISuperHeroesRepo>()));

    i.addLazySingleton(HomeController.new);
    i.addLazySingleton(ItemController.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
    r.child('/item/:id',
        child: (context) => ItemPage(
              id: int.parse(r.args.params['id']),
            ));
  }
}
