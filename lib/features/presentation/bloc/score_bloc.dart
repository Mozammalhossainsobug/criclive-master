import 'package:bloc/bloc.dart';
import 'package:criclive/features/data/models/score_model.dart';
import 'package:criclive/features/domain/usecases/get_latest_score.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'score_event.dart';
part 'score_state.dart';

class ScoreBloc extends Bloc<ScoreEvent, ScoreState> {
  final GetLatestScore getLatestScore;

  ScoreBloc({required this.getLatestScore}) : super(ScoreInitial()) {
    on<GetScoreEvent>((event, emit) async {
      emit(ScoreLoading());
      try {
        final List<ScoreModel> score = await getLatestScore();
        emit(ScoreLoaded(score: score));
      } catch (_) {
        emit(ScoreError());
      }
    });
    add(GetScoreEvent());
  }
}

