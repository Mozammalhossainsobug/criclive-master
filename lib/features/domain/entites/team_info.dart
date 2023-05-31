class TeamInfo {
  final String? name;
  final String? shortName;
  final String? img;

  TeamInfo({
     this.name,
    this.shortName,
    this.img,
  });

  factory TeamInfo.fromJson(Map<String, dynamic> json) {
    return TeamInfo(
      name: json['name'] as String?,
      shortName: json['shortname'] as String?,
      img: json['img'] as String?,
    );
  }
}
