import 'package:arquitetura/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:arquitetura/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Espero que salve o carro com sucesso', () async {
    SalvarCarroFavoritoUsecase useCase =
        SalvarCarroFavoritoUsecaseImp(SalvarCarroFavoritoRepositoryImp());

    var carro = CarroEntity(placa: 'placa', qtdPortas: 2, valor: 1);

    var result = await useCase(carro);
    late bool resultExpect;

    result.fold((l) => null, (r) => resultExpect = r);
    expect(resultExpect, true);
  });
  test('Espero que não salve o carro quando valor for menor ou igual a 0',
      () async {
    SalvarCarroFavoritoUsecase useCase =
        SalvarCarroFavoritoUsecaseImp(SalvarCarroFavoritoRepositoryImp());

    var carro = CarroEntity(placa: 'placa', qtdPortas: 2, valor: 0);

    var result = await useCase(carro);
    late bool resultExpect;

    result.fold((l) => null, (r) => resultExpect = r);
    expect(resultExpect, false);
  });
}
