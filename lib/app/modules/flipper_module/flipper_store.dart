import 'package:mobx/mobx.dart';
part 'flipper_store.g.dart';

class FlipperStore = _FlipperStoreBase with _$FlipperStore;

abstract class _FlipperStoreBase with Store {}
