import 'package:criclive/features/domain/entites/score.dart';
import 'package:criclive/features/domain/entites/team_info.dart';
class ScoreBoard {
  final String? id;
  final String? name;
  final String? matchType;
  final String? status;
  final String? venue;
  final DateTime? dateTimeGMT;
  final List<String>? teams;
  final List<TeamInfo>? teamInfo;
  final bool matchStarted;
  final bool matchEnded;
  final List<Score>? score;

  ScoreBoard({
    this.id,
    this.name,
    this.matchType,
    this.status,
    this.venue,
    this.dateTimeGMT,
    this.teams,
    this.teamInfo,
    required this.matchStarted,
    required this.matchEnded,
    this.score,
  });
}
