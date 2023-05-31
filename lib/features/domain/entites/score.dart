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
      runs: json['r'] as int,
      wickets: json['w'] as int,
      overs: json['o'] as int,
      inning: json['inning'] as String,
    );
  }
}
