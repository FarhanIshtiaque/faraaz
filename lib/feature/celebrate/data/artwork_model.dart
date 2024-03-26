class ArtWorkModel {
  bool error;
  String message;
  List<ArtWork> data;

  ArtWorkModel({
    required this.error,
    required this.message,
    required this.data,
  });

  factory ArtWorkModel.fromJson(Map<String, dynamic> json) => ArtWorkModel(
    error: json["error"],
    message: json["message"],
    data: List<ArtWork>.from(json["data"].map((x) => ArtWork.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "error": error,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}




class ArtWork {
  String uid;
  String url;

  ArtWork({
    required this.uid,
    required this.url,
  });

  factory ArtWork.fromJson(Map<String, dynamic> json) => ArtWork(
    uid: json["uid"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "uid": uid,
    "url": url,
  };
}