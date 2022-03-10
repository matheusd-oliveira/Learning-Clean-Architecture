import 'package:arquitetura/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:arquitetura/layers/data/dtos/carro_dto.dart';


class GetCarrosPorCorLocalDataSourceImp implements GetCarrosPorCorDataSource {
  final jsonVermelho = {
    'placa': 'ABC123',
    'quantidadeDePortas': 4,
    'valorFinal': 5000.00,
  };
  final jsonAny = {
    'placa': 'QWE',
    'quantidadeDePortas': 2,
    'valorFinal': 2000.00,
  };

  @override
  CarroDto call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroDto.fromMap(jsonVermelho);
    }
    return CarroDto.fromMap(jsonAny);
  }
}
