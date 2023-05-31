import 'package:criclive/features/domain/entites/team_info.dart';

class ScoreModel {
  late String id;
  late String name;
  late String matchType;
  late String status;
  late String venue;
  late String date;
  late String dateTimeGMT;
  late List<String> teams;
  late List<TeamInfo> teamInfo;
  late List<Map<String, dynamic>> score; // Update the score property type
  late String seriesId;
  late bool fantasyEnabled;
  late bool bbbEnabled = false;
  late bool hasSquad = false;
  late bool matchStarted = false;
  late bool matchEnded = false;

  ScoreModel({
    required this.id,
    required this.name,
    required this.matchType,
    required this.status,
    required this.venue,
    required this.date,
    required this.dateTimeGMT,
    required this.teams,
    required this.teamInfo,
    required this.score,
    required this.seriesId,
    required this.fantasyEnabled,
  });

  ScoreModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    matchType = json['matchType'];
    status = json['status'];
    venue = json['venue'];
    date = json['date'];
    dateTimeGMT = json['dateTimeGMT'];
    teams = List<String>.from(json['teams']);
    if (json['teamInfo'] != null) {
      teamInfo = List<TeamInfo>.from(json['teamInfo'].map((team) => TeamInfo.fromJson(team)));
    }
    score = List<Map<String, dynamic>>.from(json['score']); // Update the score assignment
    seriesId = json['series_id'];
    fantasyEnabled = json['fantasyEnabled'];
  }
}
