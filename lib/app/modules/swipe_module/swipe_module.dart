import 'package:flip_card/app/modules/swipe_module/swipe.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SwipeModule extends Module {
  @override
  List<Bind<Object>> get binds => [Bind.lazySingleton((i) => SwipeStore())];
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => const SwipperPage()),
      ];
}
