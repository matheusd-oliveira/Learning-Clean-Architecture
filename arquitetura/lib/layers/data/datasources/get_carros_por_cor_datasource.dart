// criando um contrato

import 'package:arquitetura/layers/data/dtos/carro_dto.dart';
import 'package:dartz/dartz.dart';

abstract class GetCarrosPorCorDataSource {
  Either<Exception, CarroDto> call(String cor);
}
