import 'package:drags_race_app/modules/queens/domain/model/queen/queen_model.dart';
import 'package:drags_race_app/modules/queens/domain/repository/queen_repository.dart';
import 'package:drags_race_app/modules/queens/domain/use_case/get_all_queens_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_all_queens_use_case_impl_test.mocks.dart';

@GenerateMocks([QueenRepository])
void main() {
  late MockQueenRepository mockQueenRepository;
  late GetAllQueensUseCaseImpl getAllQueensUseCaseImpl;

  setUpAll(() {
    mockQueenRepository = MockQueenRepository();
    getAllQueensUseCaseImpl = GetAllQueensUseCaseImpl(
      queenRepository: mockQueenRepository,
    );
  });
  setUp(() => reset(mockQueenRepository));
  group('GIVEN a call on call', () {
    test(
        'WHEN request is successful'
        'THEN it should return a list of QueenModel', () async {
      when(mockQueenRepository.getAllQueens())
          .thenAnswer((_) async => _getSuccessfulQueenListModelMock());
      final queenModelList = await getAllQueensUseCaseImpl.call();
      final queenModelListExpected = _getSuccessfulQueenListModelMock();
      expect(queenModelList, queenModelListExpected);
    });
  });
}

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
