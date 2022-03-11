import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:dartz/dartz.dart';

abstract class GetCarrosPorCorRepository {
  Either<Exception, CarroEntity> call(String cor);
}
