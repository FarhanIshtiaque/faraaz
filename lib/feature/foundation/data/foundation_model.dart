class FoundationModel {
  bool error;
  String message;
  List<Foundation> data;

  FoundationModel({
    required this.error,
    required this.message,
    required this.data,
  });

  factory FoundationModel.fromJson(Map<String, dynamic> json) => FoundationModel(
    error: json["error"],
    message: json["message"],
    data: List<Foundation>.from(json["data"].map((x) => Foundation.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "error": error,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Foundation {
  int id;
  String slug;
  String title;
  String url;
  String details;
  String sub;
  String location;
  DateTime createdAt;
  DateTime updatedAt;

  Foundation({
    required this.id,
    required this.slug,
    required this.title,
    required this.url,
    required this.details,
    required this.sub,
    required this.location,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Foundation.fromJson(Map<String, dynamic> json) => Foundation(
    id: json["id"],
    slug: json["slug"],
    title: json["title"],
    url: json["url"],
    details: json["details"],
    sub: json["sub"],
    location: json["location"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "slug": slug,
    "title": title,
    "url": url,
    "details": details,
    "sub": sub,
    "location": location,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}