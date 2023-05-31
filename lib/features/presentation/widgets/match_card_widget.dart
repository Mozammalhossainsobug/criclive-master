import 'package:criclive/features/data/models/score_model.dart';
import 'package:flutter/material.dart';

Card MatchCard(ScoreModel score) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    elevation: 10,
    child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Match: ${score.name ?? "Not available"}', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blueAccent)),
          SizedBox(height: 10),
          Text('Venue: ${score.venue ?? "Not available"}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey[700])),
          Text('Date: ${score.date?.toString() ?? "Not available"}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey[700])),
          Text('Match Type: ${score.matchType ?? "Not available"}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey[700])),
          Text('Status: ${score.status ?? "Not available"}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.red)),
          SizedBox(height: 20),
          Text('Teams:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueAccent)),
          if (score.teams != null)
            for (var team in score.teams!) Text(team, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey[700])),
          SizedBox(height: 20),
          Text('Scores:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueAccent)),
          if (score.score != null)
            for (var scoreData in score.score!) 
              Column(
                children: [
                  Text('Innings: ${scoreData.inning ?? "Not available"}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey[700])),
                  Text('Runs: ${scoreData.runs ?? "Not available"}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey[700])),
                  Text('Overs: ${scoreData.overs?.toString() ?? "Not available"}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey[700])),
                  SizedBox(height: 10),
                ],
              ),
        ],
      ),
    ),
  );
}
