class RewardsModel {
  String? sId;
  bool? completed;
  String? userId;
  String? endingAt;
  String? id;
  String? startingAt;
  List<Todos>? todos;
  String? createdAt;
  String? updatedAt;
  int? iV;

  RewardsModel(
      {this.sId,
        this.completed,
        this.userId,
        this.endingAt,
        this.id,
        this.startingAt,
        this.todos,
        this.createdAt,
        this.updatedAt,
        this.iV});

  RewardsModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    completed = json['completed'];
    userId = json['user_id'];
    endingAt = json['endingAt'];
    id = json['id'];
    startingAt = json['startingAt'];
    if (json['todos'] != null) {
      todos = <Todos>[];
      json['todos'].forEach((v) {
        todos!.add(new Todos.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['completed'] = this.completed;
    data['user_id'] = this.userId;
    data['endingAt'] = this.endingAt;
    data['id'] = this.id;
    data['startingAt'] = this.startingAt;
    if (this.todos != null) {
      data['todos'] = this.todos!.map((v) => v.toJson()).toList();
    }
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class Todos {
  bool? activeForGlobalServer;
  int? actualPoints;
  int? boostNumber;
  bool? boosted;
  String? buttonName;
  String? createdAt;
  String? description;
  bool? done;
  int? doneTimesNumber;
  int? estimatedPoints;
  String? extraDescription;
  String? featuredAppId;
  String? name;
  bool? oneTime;
  int? requiredTimesNumber;
  String? socialMediaUrlToFollow;
  String? type;
  String? sId;
  String? updatedAt;

  Todos(
      {this.activeForGlobalServer,
        this.actualPoints,
        this.boostNumber,
        this.boosted,
        this.buttonName,
        this.createdAt,
        this.description,
        this.done,
        this.doneTimesNumber,
        this.estimatedPoints,
        this.extraDescription,
        this.featuredAppId,
        this.name,
        this.oneTime,
        this.requiredTimesNumber,
        this.socialMediaUrlToFollow,
        this.type,
        this.sId,
        this.updatedAt});

  Todos.fromJson(Map<String, dynamic> json) {
    activeForGlobalServer = json['activeForGlobalServer'];
    actualPoints = json['actualPoints'];
    boostNumber = json['boostNumber'];
    boosted = json['boosted'];
    buttonName = json['buttonName'];
    createdAt = json['createdAt'];
    description = json['description'];
    done = json['done'];
    doneTimesNumber = json['doneTimesNumber'];
    estimatedPoints = json['estimatedPoints'];
    extraDescription = json['extraDescription'];
    featuredAppId = json['featuredAppId'];
    name = json['name'];
    oneTime = json['oneTime'];
    requiredTimesNumber = json['requiredTimesNumber'];
    socialMediaUrlToFollow = json['socialMediaUrlToFollow'];
    type = json['type'];
    sId = json['_id'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['activeForGlobalServer'] = this.activeForGlobalServer;
    data['actualPoints'] = this.actualPoints;
    data['boostNumber'] = this.boostNumber;
    data['boosted'] = this.boosted;
    data['buttonName'] = this.buttonName;
    data['createdAt'] = this.createdAt;
    data['description'] = this.description;
    data['done'] = this.done;
    data['doneTimesNumber'] = this.doneTimesNumber;
    data['estimatedPoints'] = this.estimatedPoints;
    data['extraDescription'] = this.extraDescription;
    data['featuredAppId'] = this.featuredAppId;
    data['name'] = this.name;
    data['oneTime'] = this.oneTime;
    data['requiredTimesNumber'] = this.requiredTimesNumber;
    data['socialMediaUrlToFollow'] = this.socialMediaUrlToFollow;
    data['type'] = this.type;
    data['_id'] = this.sId;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
