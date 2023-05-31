import 'package:criclive/features/domain/entites/team_info.dart';

class ScoreBoard {
  final String id;
  final String name;
  final String matchType;
  final String status;
  final String venue;
  final DateTime dateTimeGMT;
  final List<String> teams;
  final List<TeamInfo> teamInfo;
  final bool matchStarted;
  final bool matchEnded;

  ScoreBoard({
    required this.id,
    required this.name,
    required this.matchType,
    required this.status,
    required this.venue,
    required this.dateTimeGMT,
    required this.teams,
    required this.teamInfo,
    required this.matchStarted,
    required this.matchEnded,
  });
}