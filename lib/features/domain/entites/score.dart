class Score {
  final int? runs;
  final int? wickets;
  final double? overs;
  final String? inning;

  Score({
    this.runs,
    this.wickets,
    this.overs,
    this.inning,
  });

  factory Score.fromJson(Map<String, dynamic> json) {
    return Score(
      runs: json['r'] as int?,
      wickets: json['w'] as int?,
      overs: (json['o'] as num?)?.toDouble(),
      inning: json['inning'] as String?,
    );
  }
}
