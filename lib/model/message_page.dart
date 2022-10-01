class UnReadMessageModel {
  UnReadMessageModel({
    this.image,
    this.time,
    this.name,
    this.message,
  });

  final image;
  final name;
  final message;
  final time;
}

List<UnReadMessageModel> unRead = [
  UnReadMessageModel(
    name: "Big Family Group",
    time: "17:12",
    image: "assets/image 42.png",
    message: "Hello, anybody know who Sarry is. She try ....",
  ),
];

List<UnReadMessageModel> get unReadList => unRead;

// read message model

class ReadMessageModel {
  ReadMessageModel({
    this.image,
    this.time,
    this.name,
    this.message,
  });

  final image;
  final name;
  final message;
  final time;
}

List<ReadMessageModel> Read = [
  ReadMessageModel(
    name: "Girl Band 2022",
    time: "17:12",
    image: "assets/image 42.png",
    message: "Hello, Did you guys give the information to ...",
  ),
  ReadMessageModel(
    name: "Girl Band 2022",
    time: "17:12",
    image: "assets/image 42.png",
    message: "Hello, Did you guys give the information to ...",
  ),
  ReadMessageModel(
    name: "Girl Band 2022",
    time: "17:12",
    image: "assets/image 42.png",
    message: "Hello, Did you guys give the information to ...",
  ),
  ReadMessageModel(
    name: "Girl Band 2022",
    time: "17:12",
    image: "assets/image 42.png",
    message: "Hello, Did you guys give the information to ...",
  ),
  ReadMessageModel(
    name: "Girl Band 2022",
    time: "17:12",
    image: "assets/image 42.png",
    message: "Hello, Did you guys give the information to ...",
  ),
];

List<ReadMessageModel> get ReadList => Read;
