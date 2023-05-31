part of 'score_bloc.dart';

abstract class ScoreState extends Equatable {
  const ScoreState();

  @override
  List<Object> get props => [];
}

class ScoreInitial extends ScoreState {}

class ScoreLoading extends ScoreState {}

class ScoreLoaded extends ScoreState {
  final List<ScoreModel> score;

  const ScoreLoaded({required this.score});

  @override
  List<Object> get props => [score];
}

class ScoreError extends ScoreState {}
