import 'package:arquitetura/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:arquitetura/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:arquitetura/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Deve retornar uma instância de carro quando passado qualquer cor', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(
        GetCarrosPorCorLocalDataSourceImp(),
      ),
    );

    var result = useCase('Azul');

    expect(result, isInstanceOf<CarroEntity>());
  });

  test('Deve retornar um carro de 4 portas quando for vermelho', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(
        GetCarrosPorCorLocalDataSourceImp(),
      ),
    );

    var result = useCase('vermelho');

    expect(result.qtdPortas, 4);
  });

  test(
      'Deve retornar um carro de 2 portas quando for qualquer cor, exceto vermelho',
      () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(
        GetCarrosPorCorLocalDataSourceImp(),
      ),
    );

    var result = useCase('verde');

    expect(result.qtdPortas, 2);
  });
}
