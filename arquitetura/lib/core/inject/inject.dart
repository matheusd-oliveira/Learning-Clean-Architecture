// Faz a injeção de dependências de forma automatizada.
// O init faz a inicialização do get_it
// O GetIt controla dependências, ou seja , os nossos objetos.
// O GetIt é um container, logo é guarda muitas coisas dentro dele.

import 'package:arquitetura/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:arquitetura/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:arquitetura/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:arquitetura/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:arquitetura/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:arquitetura/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:arquitetura/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:arquitetura/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:arquitetura/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:arquitetura/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:arquitetura/layers/presentations/controllers/carro_controller.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    // datasources
    getIt.registerLazySingleton<GetCarrosPorCorDataSource>(
      () => GetCarrosPorCorLocalDataSourceImp(),
    );

    // repositories
    getIt.registerLazySingleton<GetCarrosPorCorRepository>(
      () => GetCarrosPorCorRepositoryImp(getIt()),
    );
    getIt.registerLazySingleton<SalvarCarroFavoritoRepository>(
      () => SalvarCarroFavoritoRepositoryImp(),
    );

    // usecases
    getIt.registerLazySingleton<GetCarrosPorCorUseCase>(
      () => GetCarrosPorCorUseCaseImp(getIt()),
    );
    getIt.registerLazySingleton<SalvarCarroFavoritoUsecase>(
      () => SalvarCarroFavoritoUsecaseImp(getIt()),
    );
    // controllers
    getIt.registerFactory<CarroController>(
      () => CarroController(
        getIt(),
        getIt(),
      ),
    );
  }
}

  // CarroController controller = CarroController(
  //   GetCarrosPorCorUseCaseImp(  OK
  //     GetCarrosPorCorRepositoryImp( // OK
  //       GetCarrosPorCorLocalDataSourceImp(), // OK
  //     ),
  //   ),
  //   SalvarCarroFavoritoUsecaseImp( OK
  //      SalvarCarroFavoritoRepositoryImp(), // OK
  //    ),
  // );
