import 'package:arquitetura/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:arquitetura/layers/data/dtos/carro_dto.dart';
import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:dartz/dartz.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  final GetCarrosPorCorDataSource _getCarrosPorCorDataSource;

  GetCarrosPorCorRepositoryImp(this._getCarrosPorCorDataSource);

  @override
  Either<Exception, CarroEntity> call(String cor) {
    // Chamamos a api e ela respondeu um json;

    return _getCarrosPorCorDataSource(cor);
  }
}
