import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:dartz/dartz.dart';

abstract class SalvarCarroFavoritoUsecase {
  Future<Either<Exception, bool>> call(CarroEntity carroEntity);
}
