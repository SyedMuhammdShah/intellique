class LeaderboardModel {
  final int id;
  final String userName;
  final int userScore;
  final String userImage;

  LeaderboardModel({
    required this.id,
    required this.userName,
    required this.userScore,
    required this.userImage,
  });

  factory LeaderboardModel.fromJson(Map<String, dynamic> json) {
    return LeaderboardModel(
      id: json['id'],
      userName: json['userName'],
      userScore: json['userScore'],
      userImage: json['userImage'],
    );
  }
}
