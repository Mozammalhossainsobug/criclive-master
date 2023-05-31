import 'package:criclive/features/data/models/score_model.dart';
import 'package:criclive/features/presentation/widgets/match_card_widget.dart';
import 'package:flutter/material.dart';

class ScoreDetailsPage extends StatelessWidget {
  final ScoreModel score;

  const ScoreDetailsPage({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Match Details')),
      body: MatchCard(score),
    );
  }
}
