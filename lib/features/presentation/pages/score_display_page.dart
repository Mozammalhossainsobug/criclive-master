import 'package:criclive/features/data/models/score_model.dart';
import 'package:criclive/features/domain/entites/team_info.dart';
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
          List<TeamInfo> teams = score.teamInfo;

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ScoreCard(
              teams[0].img,
              teams[0].shortName,
              teams[1].img,
              teams[1].shortName,
              score.matchType,
              score.venue,
              score.dateTimeGMT.toString(),
            ),
          );
        },
      ),
    );
  }
}
