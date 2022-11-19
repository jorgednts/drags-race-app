import 'package:drags_race_app/modules/queens/domain/model/details/lipsync_model.dart';
import 'package:drags_race_app/modules/queens/domain/model/details/queen_details_model.dart';
import 'package:drags_race_app/modules/queens/domain/model/details/season_model.dart';
import 'package:drags_race_app/modules/queens/domain/repository/queen_repository.dart';
import 'package:drags_race_app/modules/queens/domain/use_case/get_queen_by_id_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_all_queens_use_case_impl_test.mocks.dart';

@GenerateMocks([QueenRepository])
void main() {
  late MockQueenRepository mockQueenRepository;
  late GetQueenByIdUseCaseImpl getQueenByIdUseCaseImpl;

  setUpAll(() {
    mockQueenRepository = MockQueenRepository();
    getQueenByIdUseCaseImpl = GetQueenByIdUseCaseImpl(
      queenRepository: mockQueenRepository,
    );
  });
  setUp(() => reset(mockQueenRepository));
  group('GIVEN a call on call', () {
    test(
        'WHEN request is successful'
        'THEN it should return a QueenDetailsModel', () async {
      when(mockQueenRepository.getQueenByID(1))
          .thenAnswer((_) async => _getSuccessfulQueenDetailsModelMock());
      final queenDetailsModel = await getQueenByIdUseCaseImpl.call(1);
      final queenDetailsModelsExpected = _getSuccessfulQueenDetailsModelMock();
      expect(queenDetailsModel, queenDetailsModelsExpected);
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
