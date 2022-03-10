// criando um contrato

import 'package:arquitetura/layers/data/dtos/carro_dto.dart';

abstract class GetCarrosPorCorDataSource {
  CarroDto call(String cor);
}
