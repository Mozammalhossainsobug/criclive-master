import 'package:criclive/features/data/models/score_model.dart';
import 'package:criclive/features/domain/repositories/score_repository.dart';

class GetLatestScore {
  final ScoreRepository repository;

  GetLatestScore(this.repository);

  Future<List<ScoreModel>> call() async {
    return repository.getLatestScore();
  }
}
