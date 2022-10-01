class LiveCallModel {
  LiveCallModel({this.video, this.profile, this.name, this.livePerson});

  final video;
  final profile;
  final name;
  final livePerson;
}

List<LiveCallModel> liveCall = [
  LiveCallModel(
    video: "assets/image 1 (2).png",
    profile: "assets/image 2 (1).png",
    name: "@fannyharsandi",
    livePerson: "1.6K",
  ),
  LiveCallModel(
    video: "assets/image 3 (2).png",
    profile: "assets/image 2 (1).png",
    name: "@fannyharsandi",
    livePerson: "1.6K",
  ),
  LiveCallModel(
    video: "assets/image 1 (2).png",
    profile: "assets/image 2 (1).png",
    name: "@fannyharsandi",
    livePerson: "1.6K",
  ),
];

List<LiveCallModel> get liveCallList => liveCall;

// recomanded

class LiveCallRecomandedModel {
  LiveCallRecomandedModel(
      {this.video, this.profile, this.name, this.livePerson});

  final video;
  final profile;
  final name;
  final livePerson;
}

List<LiveCallRecomandedModel> recomanded = [
  LiveCallRecomandedModel(
    video: "assets/image 13.png",
    profile: "assets/image 2 (1).png",
    name: "@fannyharsandi",
    livePerson: "1.6K",
  ),
  LiveCallRecomandedModel(
    video: "assets/image 11 (1).png",
    profile: "assets/image 2 (1).png",
    name: "@fannyharsandi",
    livePerson: "1.6K",
  ),
  LiveCallRecomandedModel(
    video: "assets/image 1 (2).png",
    profile: "assets/image 2 (1).png",
    name: "@fannyharsandi",
    livePerson: "1.6K",
  ),
];

List<LiveCallRecomandedModel> get recomandedList => recomanded;
