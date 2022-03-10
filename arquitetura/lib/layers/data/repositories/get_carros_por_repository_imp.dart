import 'package:arquitetura/layers/data/dtos/carro_dto.dart';
import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura/layers/domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    // Chamamos a api e ela respondeu um json;
    var json = {
      'placa': 'ABC123',
      'quantidadeDePortas': 4,
      'valorFinal': 1000.00,
    };
    return CarroDto.fromMap(json);
  }
}