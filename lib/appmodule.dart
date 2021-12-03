import 'package:flip_card/app/modules/flipper_module/flipper.dart';
import 'package:flip_card/app/modules/home_module/home.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app/modules/swipe_module/swipe_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Modular.initialRoute, module: HomeModule()),
        ModuleRoute('/flip', module: FlipperModule()),
        ModuleRoute('/swipe', module: SwipeModule()),
      ];
}
