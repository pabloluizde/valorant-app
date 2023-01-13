import 'package:mobx/mobx.dart';

part 'carrousel_store.g.dart';

class CarrouselStore = _CarrouselStore with _$CarrouselStore;

abstract class _CarrouselStore with Store {
  @observable
  int current = 0;
}
