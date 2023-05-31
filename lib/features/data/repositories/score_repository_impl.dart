import 'package:criclive/features/data/models/score_model.dart';
import 'package:criclive/features/data/sources/score_remote_datasource.dart';
import 'package:criclive/features/domain/repositories/score_repository.dart';

class ScoreRepositoryImpl implements ScoreRepository {
  final ScoreRemoteDataSource remoteDataSource;

  ScoreRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<ScoreModel>> getLatestScore() => remoteDataSource.getLatestScore();
}
