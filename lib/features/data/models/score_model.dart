import 'package:criclive/features/domain/entites/scoreboard.dart';
import 'package:criclive/features/domain/entites/team_info.dart';

class ScoreModel extends ScoreBoard {
  final DateTime date;
  final String seriesId;
  final bool fantasyEnabled;
  final bool bbbEnabled;
  final bool hasSquad;

  ScoreModel({
    required this.date,
    required this.seriesId,
    required this.fantasyEnabled,
    required this.bbbEnabled,
    required this.hasSquad,
    required String id,
    required String name,
    required String matchType,
    required String status,
    required String venue,
    required DateTime dateTimeGMT,
    required List<String> teams,
    required List<TeamInfo> teamInfo,
    required bool matchStarted,
    required bool matchEnded,
  }) : super(
          id: id,
          name: name,
          matchType: matchType,
          status: status,
          venue: venue,
          dateTimeGMT: dateTimeGMT,
          teams: teams,
          teamInfo: teamInfo,
          matchStarted: matchStarted,
          matchEnded: matchEnded,
        );

  factory ScoreModel.fromJson(Map<String, dynamic> json) {
  return ScoreModel(
    id: json['id'] as String? ?? 'not found',
    name: json['name'] as String? ?? 'not found',
    matchType: json['matchType'] as String? ?? 'not found',
    status: json['status'] as String? ?? 'not found',
    venue: json['venue'] as String? ?? 'not found',
    date: DateTime.parse(json['date'] as String? ?? ''),
    dateTimeGMT: DateTime.parse(json['dateTimeGMT'] as String? ?? ''),
    teams: List<String>.from(json['teams'] as List<dynamic>),
    teamInfo: (json['teamInfo'] as List<dynamic>)
        .map((item) => TeamInfo.fromJson(item as Map<String, dynamic>))
        .toList(),
    seriesId: json['series_id'] as String? ?? 'not found',
    fantasyEnabled: json['fantasyEnabled'] as bool? ?? false,
    bbbEnabled: json['bbbEnabled'] as bool? ?? false,
    hasSquad: json['hasSquad'] as bool? ?? false,
    matchStarted: json['matchStarted'] as bool? ?? false,
    matchEnded: json['matchEnded'] as bool? ?? false,
  );
}
}
