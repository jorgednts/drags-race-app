import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../constants/queens_constants_routes.dart';
import '../data/remote/data_source/drags_race_remote_data_source.dart';
import '../data/repository/queen_repository_impl.dart';
import '../domain/repository/queen_repository.dart';
import '../domain/use_case/get_all_queens_use_case.dart';
import '../domain/use_case/get_queen_by_id_use_case.dart';
import '../domain/use_case/get_queen_by_name_use_case.dart';
import '../external/remote_data_source/drags_race_remote_data_source_impl.dart';
import '../presentation/controller/queen_details_controller.dart';
import '../presentation/controller/queen_list_page_controller.dart';
import '../presentation/controller/search_queen_page_controller.dart';
import '../presentation/page/queen_details_page.dart';
import '../presentation/page/queen_list_page.dart';
import '../presentation/page/search_queen_page.dart';

class QueensModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => Dio()),
        Bind.lazySingleton<DragsRaceRemoteDataSource>(
          (i) => DragsRaceRemoteDataSourceImpl(dio: i()),
        ),
        Bind.lazySingleton<QueenRepository>(
          (i) => QueenRepositoryImpl(dragsRaceRemoteDataSource: i()),
        ),
        Bind.lazySingleton<GetAllQueensUseCase>(
          (i) => GetAllQueensUseCaseImpl(queenRepository: i()),
        ),
        Bind.lazySingleton<GetQueenByIdUseCase>(
          (i) => GetQueenByIdUseCaseImpl(queenRepository: i()),
        ),
        Bind.lazySingleton<GetQueenByNameUseCase>(
          (i) => GetQueenByNameUseCaseImpl(queenRepository: i()),
        ),
        Bind.factory(
          (i) => QueenListPageController(getAllQueensUseCase: i()),
        ),
        Bind.factory(
          (i) => QueenDetailsController(getQueenByIdUseCase: i()),
        ),
        Bind.factory(
          (i) => SearchQueenPageController(getQueenByNameUseCase: i()),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          QueensConstantsRoutes.queenListPage,
          child: (context, args) => const QueenListPage(),
        ),
        ChildRoute(
          QueensConstantsRoutes.queenDetailsPage,
          child: (context, args) => QueenDetailsPage(queenID: args.data),
        ),
        ChildRoute(
          QueensConstantsRoutes.queenSearchPage,
          child: (context, args) => const SearchQueenPage(),
        ),
      ];
}
