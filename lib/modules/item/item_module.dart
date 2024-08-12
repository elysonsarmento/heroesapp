import 'package:flutter_modular/flutter_modular.dart';
import 'item_controller.dart';
import 'item_page.dart';

class ItemModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton(ItemController.new);
  }

  @override
  void routes(r) {
    ChildRoute('/item', child: (_) => ItemPage(id: r.args.params['id']));
  }
}
