import 'package:flip_card/app/modules/flipper_module/flipper.dart';
import 'package:flip_card/app/modules/flipper_module/flipper_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FlipperModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.lazySingleton((i) => FlipperStore()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: (_, args) => const FlipperPage()),
      ];
}
