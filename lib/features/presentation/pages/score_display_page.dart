import 'package:criclive/features/data/models/score_model.dart';
import 'package:criclive/features/domain/entites/team_info.dart';
import 'package:criclive/features/presentation/pages/score_details_page.dart';
import 'package:criclive/features/presentation/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class ScoreDisplay extends StatelessWidget {
  final List<ScoreModel> scores;

  ScoreDisplay({required this.scores});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: scores.length,
        itemBuilder: (context, index) {
          ScoreModel score = scores[index];
          List<TeamInfo> teams = score.teamInfo ?? [];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScoreDetailsPage(score: score),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScoreCard(
                teams.isNotEmpty ? teams[0].img : '',
                teams.isNotEmpty ? teams[0].shortName : '',
                teams.length > 1 ? teams[1].img : '',
                teams.length > 1 ? teams[1].shortName : '',
                score.matchType ?? '',
                score.venue ?? '',
                score.dateTimeGMT?.toString() ?? '',
              ),
            ),
          );
        },
      ),
    );
  }
}
