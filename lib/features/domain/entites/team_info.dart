class TeamInfo {
  final String name;
  final String shortName;
  final String img;

  TeamInfo({
    required this.name,
    required this.shortName,
    required this.img,
  });

  factory TeamInfo.fromJson(Map<String, dynamic> json) {
    return TeamInfo(
      name: json['name'],
      shortName: json['shortname'],
      img: json['img'],
    );
  }
}