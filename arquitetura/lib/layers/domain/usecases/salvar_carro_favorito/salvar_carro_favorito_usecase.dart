import 'package:arquitetura/layers/domain/entities/carro_entity.dart';

abstract class SalvarCarroFavoritoUsecase {
  Future<bool> call(CarroEntity carroEntity);
}
