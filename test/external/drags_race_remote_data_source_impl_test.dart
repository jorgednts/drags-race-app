import 'package:dio/dio.dart';
import 'package:drags_race_app/modules/queens/constants/queens_constants_url_api.dart';
import 'package:drags_race_app/modules/queens/domain/model/details/lipsync_model.dart';
import 'package:drags_race_app/modules/queens/domain/model/details/queen_details_model.dart';
import 'package:drags_race_app/modules/queens/domain/model/details/season_model.dart';
import 'package:drags_race_app/modules/queens/domain/model/queen/queen_model.dart';
import 'package:drags_race_app/modules/queens/external/remote_data_source/drags_race_remote_data_source_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../utils/json_extensions.dart';
import 'drags_race_remote_data_source_impl_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  late MockDio mockDio;
  late DragsRaceRemoteDataSourceImpl dragsRaceRemoteDataSourceImpl;

  setUpAll(() {
    mockDio = MockDio();
    dragsRaceRemoteDataSourceImpl = DragsRaceRemoteDataSourceImpl(dio: mockDio);
  });
  setUp(() => reset(mockDio));
  group('GIVEN a call on getAllQueens', () {
    const getAllQueensSuccessfulResponsePath =
        'test_resources/get_all_queens_successful_response.json';
    test('THEN verify if correct URL is called', () async {
      final json = await getAllQueensSuccessfulResponsePath.getJsonFromPath();
      when(mockDio.get(any))
          .thenAnswer((_) async => _getSuccessfulResponseMock(json));
      await dragsRaceRemoteDataSourceImpl.getAllQueens();
      verify(mockDio.get('${QueensConstantsUrlApi.queenBaseUrl}/all/'))
          .called(1);
    });
    test(
        'WHEN request is successful'
        'THEN it should return a List of QueenModel', () async {
      final json = await getAllQueensSuccessfulResponsePath.getJsonFromPath();
      when(mockDio.get(any))
          .thenAnswer((_) async => _getSuccessfulResponseMock(json));
      final queenListModel = await dragsRaceRemoteDataSourceImpl.getAllQueens();
      final queenListModelExpected = _getSuccessfulQueenListModelMock();
      expect(queenListModel, queenListModelExpected);
    });
  });
  group('GIVEN a call on getQueenbyID', () {
    const getQueenByIDSuccessfulResponsePath =
        'test_resources/get_queen_by_id_successful_response.json';
    test('THEN verify if correct URL is called', () async {
      final json = await getQueenByIDSuccessfulResponsePath.getJsonFromPath();
      when(mockDio.get(any))
          .thenAnswer((_) async => _getSuccessfulResponseMock(json));
      await dragsRaceRemoteDataSourceImpl.getQueenByID(1);
      verify(mockDio.get('${QueensConstantsUrlApi.queenBaseUrl}/1')).called(1);
    });
    test(
        'WHEN request is successful'
        'THEN it should return a QueenDetailsModel', () async {
      final json = await getQueenByIDSuccessfulResponsePath.getJsonFromPath();
      when(mockDio.get(any))
          .thenAnswer((_) async => _getSuccessfulResponseMock(json));
      final queenDetailsModel =
          await dragsRaceRemoteDataSourceImpl.getQueenByID(1);
      final queenDetailsModelExpected = _getSuccessfulQueenDetailsModelMock();
      expect(queenDetailsModel, queenDetailsModelExpected);
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

Response<dynamic> _getSuccessfulResponseMock(json) => Response(
      data: json,
      statusCode: 200,
      requestOptions: RequestOptions(path: ''),
    );
