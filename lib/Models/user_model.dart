class UserModel {
  User? user;
  bool? status;

  UserModel({this.user, this.status});

  UserModel.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['status'] = this.status;
    return data;
  }
}

class User {
  Streaks? streaks;
  String? sId;
  String? emailAddress;
  String? fullName;
  String? fullNameInLowerChars;
  String? id;
  bool? isAdmin;
  bool? isBlocked;
  String? notificationToken;
  String? createdAt;
  String? updatedAt;
  int? iV;

  User(
      {this.streaks,
        this.sId,
        this.emailAddress,
        this.fullName,
        this.fullNameInLowerChars,
        this.id,
        this.isAdmin,
        this.isBlocked,
        this.notificationToken,
        this.createdAt,
        this.updatedAt,
        this.iV});

  User.fromJson(Map<String, dynamic> json) {
    streaks =
    json['streaks'] != null ? new Streaks.fromJson(json['streaks']) : null;
    sId = json['_id'];
    emailAddress = json['emailAddress'];
    fullName = json['fullName'];
    fullNameInLowerChars = json['fullNameInLowerChars'];
    id = json['id'];
    isAdmin = json['isAdmin'];
    isBlocked = json['isBlocked'];
    notificationToken = json['notificationToken'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.streaks != null) {
      data['streaks'] = this.streaks!.toJson();
    }
    data['_id'] = this.sId;
    data['emailAddress'] = this.emailAddress;
    data['fullName'] = this.fullName;
    data['fullNameInLowerChars'] = this.fullNameInLowerChars;
    data['id'] = this.id;
    data['isAdmin'] = this.isAdmin;
    data['isBlocked'] = this.isBlocked;
    data['notificationToken'] = this.notificationToken;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class Streaks {
  int? count;
  String? lastLoginString;
  String? lastLogin;

  Streaks({this.count, this.lastLoginString, this.lastLogin});

  Streaks.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    lastLoginString = json['lastLoginString'];
    lastLogin = json['lastLogin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['lastLoginString'] = this.lastLoginString;
    data['lastLogin'] = this.lastLogin;
    return data;
  }
}
