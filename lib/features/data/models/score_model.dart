import 'package:criclive/features/domain/entites/score.dart';
import 'package:criclive/features/domain/entites/scoreboard.dart';
import 'package:criclive/features/domain/entites/team_info.dart';

class ScoreModel extends ScoreBoard {
  final DateTime? date;
  final String? seriesId;
  final bool? fantasyEnabled;
  final bool? bbbEnabled;
  final bool? hasSquad;
  final List<Score>? score;

  ScoreModel({
    this.date,
    this.seriesId,
    this.fantasyEnabled,
    this.bbbEnabled,
    this.hasSquad,
    required String? id,
    required String? name,
    required String? matchType,
    required String? status,
    required String? venue,
    required DateTime dateTimeGMT,
    required List<String> teams,
    required List<TeamInfo>? teamInfo,
    required bool matchStarted,
    required bool matchEnded,
    this.score,
  }) : super(
          id: id ?? 'not found',
          name: name ?? 'not found',
          matchType: matchType ?? 'not found',
          status: status ?? 'not found',
          venue: venue ?? 'not found',
          dateTimeGMT: dateTimeGMT,
          teams: teams,
          teamInfo: teamInfo ?? [],
          matchStarted: false,
          matchEnded: false,
        );

  factory ScoreModel.fromJson(Map<String, dynamic> json) {
    return ScoreModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      matchType: json['matchType'] as String?,
      status: json['status'] as String?,
      venue: json['venue'] as String?,
      date: json['date'] != null ? DateTime.parse(json['date'] as String) : null,
      dateTimeGMT: json['dateTimeGMT'] != null ? DateTime.parse(json['dateTimeGMT'] as String) : DateTime.now(),
      teams: json['teams'] != null ? List<String>.from(json['teams'] as List<dynamic>) : [],
      teamInfo: (json['teamInfo'] as List<dynamic>?)
          ?.map((item) => TeamInfo.fromJson(item as Map<String, dynamic>))
          .toList(),
      seriesId: json['series_id'] as String?,
      fantasyEnabled: json['fantasyEnabled'] as bool?,
      bbbEnabled: json['bbbEnabled'] as bool?,
      hasSquad: json['hasSquad'] as bool?,
      matchStarted: json['matchStarted'] as bool? ?? false,
      matchEnded: json['matchEnded'] as bool? ?? false,
      score: (json['score'] as List<dynamic>?)
          ?.map((s) => Score.fromJson(s as Map<String, dynamic>))
          .toList(),
    );
  }
}
