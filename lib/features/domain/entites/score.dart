class Score {
  final int runs;
  final int wickets;
  final int overs;
  final String inning;

  Score({
    required this.runs,
    required this.wickets,
    required this.overs,
    required this.inning,
  });

  factory Score.fromJson(Map<String, dynamic> json) {
    return Score(
      runs: json['r'],
      wickets: json['w'],
      overs: json['o'],
      inning: json['inning'],
    );
  }
}
