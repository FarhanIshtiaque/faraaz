class AwardModel {
  int id;
  String title;
  String subTitle;
  String description;
  String image;
  String place;
  DateTime date;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic slug;

  AwardModel({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.image,
    required this.place,
    required this.date,
    required this.createdAt,
    required this.updatedAt,
    required this.slug,
  });

  factory AwardModel.fromJson(Map<String, dynamic> json) => AwardModel(
    id: json["id"],
    title: json["title"],
    subTitle: json["sub_title"],
    description: json["description"],
    image: json["image"],
    place: json["place"],
    date: DateTime.parse(json["date"]),
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    slug: json["slug"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "sub_title": subTitle,
    "description": description,
    "image": image,
    "place": place,
    "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "slug": slug,
  };
}
