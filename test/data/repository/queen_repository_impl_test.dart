import 'package:drags_race_app/modules/queens/data/remote/cache/drags_race_cache_data_source.dart';
import 'package:drags_race_app/modules/queens/data/remote/data_source/drags_race_remote_data_source.dart';
import 'package:drags_race_app/modules/queens/data/repository/queen_repository_impl.dart';
import 'package:drags_race_app/modules/queens/domain/model/details/lipsync_model.dart';
import 'package:drags_race_app/modules/queens/domain/model/details/queen_details_model.dart';
import 'package:drags_race_app/modules/queens/domain/model/details/season_model.dart';
import 'package:drags_race_app/modules/queens/domain/model/queen/queen_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'queen_repository_impl_test.mocks.dart';

@GenerateMocks([DragsRaceRemoteDataSource, DragsRaceCacheDataSource])
void main() {
  late MockDragsRaceRemoteDataSource mockDragsRaceRemoteDataSource;
  late MockDragsRaceCacheDataSource mockDragsRaceCacheDataSource;
  late QueenRepositoryImpl queenRepositoryImpl;

  setUpAll(() {
    mockDragsRaceRemoteDataSource = MockDragsRaceRemoteDataSource();
    mockDragsRaceCacheDataSource = MockDragsRaceCacheDataSource();
    queenRepositoryImpl = QueenRepositoryImpl(
      dragsRaceRemoteDataSource: mockDragsRaceRemoteDataSource,
      dragsRaceCacheDataSource: mockDragsRaceCacheDataSource,
    );
  });
  setUp(() {
    reset(mockDragsRaceRemoteDataSource);
    reset(mockDragsRaceCacheDataSource);
  });
  group('GIVEN a call on getAllQueens', () {
    test(
        'WHEN request is successful'
        'THEN it should return a list of QueenModel', () async {
      when(mockDragsRaceRemoteDataSource.getAllQueens())
          .thenAnswer((_) async => _getSuccessfulQueenListModelMock());
      when(mockDragsRaceCacheDataSource
              .saveAllQueens(_getSuccessfulQueenListModelMock()))
          .thenAnswer((_) async => Null);
      when(mockDragsRaceCacheDataSource.getAllQueens())
          .thenAnswer((_) async => _getSuccessfulQueenListModelMock());
      final queenModelList = await queenRepositoryImpl.getAllQueens();
      final queenModelListExpected = _getSuccessfulQueenListModelMock();
      expect(queenModelList, queenModelListExpected);
      verify(mockDragsRaceRemoteDataSource.getAllQueens()).called(1);
    });
    test(
        'WHEN request fails'
        'THEN it should return a QueenModel from cache', () async {
      when(mockDragsRaceRemoteDataSource.getAllQueens()).thenThrow(Exception());
      when(mockDragsRaceCacheDataSource
              .saveAllQueens(_getSuccessfulQueenListModelMock()))
          .thenAnswer((_) async => Null);
      when(mockDragsRaceCacheDataSource.getAllQueens())
          .thenAnswer((_) async => _getSuccessfulQueenListModelMock());
      final queenCache = await queenRepositoryImpl.getAllQueens();
      final queenCacheExpected = _getSuccessfulQueenListModelMock();
      expect(queenCache, queenCacheExpected);
    });
  });
  group('GIVEN a call on getQueenByID', () {
    test(
        'WHEN request is successful'
        'THEN it should return a QueenDetailsModel', () async {
      when(mockDragsRaceRemoteDataSource.getQueenByID(1))
          .thenAnswer((_) async => _getSuccessfulQueenDetailsModelMock());
      when(mockDragsRaceCacheDataSource
              .saveQueenDetails(_getSuccessfulQueenDetailsModelMock()))
          .thenAnswer((_) async => Null);
      when(mockDragsRaceCacheDataSource.getQueenDetails(1))
          .thenAnswer((_) async => _getSuccessfulQueenDetailsModelMock());
      final queenDetailsModel = await queenRepositoryImpl.getQueenByID(1);
      final queenDetailsModelExpected = _getSuccessfulQueenDetailsModelMock();
      expect(queenDetailsModel, queenDetailsModelExpected);
      verify(mockDragsRaceCacheDataSource
          .saveQueenDetails(_getSuccessfulQueenDetailsModelMock()));
      verify(mockDragsRaceCacheDataSource.getQueenDetails(1));
    });
    test(
        'WHEN request fails'
        'THEN it should return a QueenDetailsModel from cache', () async {
      when(mockDragsRaceRemoteDataSource.getQueenByID(1))
          .thenThrow(Exception());
      when(mockDragsRaceCacheDataSource
              .saveQueenDetails(_getSuccessfulQueenDetailsModelMock()))
          .thenAnswer((_) async => Null);
      when(mockDragsRaceCacheDataSource.getQueenDetails(1))
          .thenAnswer((_) async => _getSuccessfulQueenDetailsModelMock());
      final movieDetailsCache = await queenRepositoryImpl.getQueenByID(1);
      final movieDetailsCacheExpected = _getSuccessfulQueenDetailsModelMock();
      expect(movieDetailsCache, movieDetailsCacheExpected);
    });
  });
}

QueenDetailsModel _getSuccessfulQueenDetailsModelMock() =>
    const QueenDetailsModel(
        id: 1,
        name: "Victoria 'Porkchop' Parker",
        winner: false,
        missCongeniality: false,
        imageUrl:
            "http://www.nokeynoshade.party/images/victoria-porkchop-parker.jpg",
        lipsyncsList: [
          LipsyncModel(id: 1, won: false, name: "Supermodel", artist: "RuPaul"),
        ],
        seasonsList: [
          SeasonModel(seasonNumber: "1", id: 1, place: 9),
        ]);

List<QueenModel> _getSuccessfulQueenListModelMock() => <QueenModel>[
      const QueenModel(
        id: 1,
        name: "Victoria 'Porkchop' Parker",
        imageUrl:
            "http://www.nokeynoshade.party/images/victoria-porkchop-parker.jpg",
      ),
      const QueenModel(
        id: 2,
        name: "Tammie Brown",
        imageUrl: "http://www.nokeynoshade.party/images/tammie-brown.jpg",
      )
    ];
