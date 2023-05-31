import 'package:flutter/material.dart';

Card ScoreCard(team1URL, team1ShortName, team2URL, team2ShortName, matchType, venue, dateTime) {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(team1URL),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                  team1ShortName,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ],
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(team2URL),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                  team2ShortName,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            matchType,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            venue,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 5),
          Text(
            dateTime,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    ),
  );
}
