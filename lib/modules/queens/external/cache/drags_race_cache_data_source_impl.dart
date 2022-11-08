import 'package:hive/hive.dart';

import '../../data/mapper/cache_to_domain.dart';
import '../../data/mapper/domain_to_cache.dart';
import '../../data/remote/cache/drags_race_cache_data_source.dart';
import '../../domain/model/details/queen_details_cache.dart';
import '../../domain/model/details/queen_details_model.dart';
import '../../domain/model/queen/queen_cache.dart';
import '../../domain/model/queen/queen_model.dart';

class DragsRaceCacheDataSourceImpl implements DragsRaceCacheDataSource {
  DragsRaceCacheDataSourceImpl({required HiveInterface hiveInterface})
      : _hiveInterface = hiveInterface;

  final HiveInterface _hiveInterface;

  @override
  Future<List<QueenModel>> getAllQueens() async {
    final box = await _hiveInterface.openBox('queenlistbox');
    final queenListCache = List<QueenCache>.from(box.get('queenlistbox'));
    return queenListCache.toQueenListModel();
  }

  @override
  Future<QueenDetailsModel> getQueenDetails(int id) async {
    final box = await _hiveInterface.openBox('queendetailsbox');
    final QueenDetailsCache? queenDetailsCache = box.get(id);
    if (queenDetailsCache != null) {
      return queenDetailsCache.toQueenDetailsModel();
    }
    throw Exception();
  }

  @override
  Future<void> saveQueenDetails(QueenDetailsModel queenDetailsModel) async {
    final queenDetailsCache = queenDetailsModel.toQueenDetailsCache();
    final box = await _hiveInterface.openBox('queendetailsbox');
    await box.put(queenDetailsModel.id, queenDetailsCache);
  }

  @override
  Future<void> saveAllQueens(List<QueenModel> queenList) async {
    final queenListCache = queenList.toQueenListCache();
    final box = await _hiveInterface.openBox('queenlistbox');
    await box.putAll({'queenlistbox': queenListCache});
  }
}
