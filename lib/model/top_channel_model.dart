class TopChannelModel {
  TopChannelModel({this.subtitle, this.profile, this.name, this.fellow});

  final subtitle;
  final profile;
  final name;
  final fellow;
}

List<TopChannelModel> topChannel = [
  TopChannelModel(
    name: "fannyharsandi",
    subtitle: "I have talent on Dancing and Singing",
    fellow: "Follow",
    profile: "assets/image 1 (2).png",
  ),
  TopChannelModel(
    name: "indahsumarn",
    subtitle: "I like to play guitar",
    fellow: "Follow",
    profile: "assets/image 1 (2).png",
  ),
  TopChannelModel(
    name: "umaimafuentas",
    subtitle: "I have talent on Dancing and Singing",
    fellow: "Follow",
    profile: "assets/image 1 (2).png",
  ),
  TopChannelModel(
    name: "Meredithkirkland",
    subtitle: "I have talent on Dancing and Singing",
    fellow: "Follow",
    profile: "assets/image 1 (2).png",
  ),
];

List<TopChannelModel> get topChannelList => topChannel;
