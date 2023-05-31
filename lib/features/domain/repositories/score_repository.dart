import 'package:criclive/features/data/models/score_model.dart';

abstract class ScoreRepository {
  Future<List<ScoreModel>> getLatestScore();
}
