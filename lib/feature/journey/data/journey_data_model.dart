class JourneyDataModel {
  String slug;
  String title;
  String sub;
  String description;
  String url;
  String project;
  String category;
  String country;
  List<dynamic> gallery;

  JourneyDataModel({
    required this.slug,
    required this.title,
    required this.sub,
    required this.description,
    required this.url,
    required this.project,
    required this.category,
    required this.country,
    required this.gallery,
  });

  factory JourneyDataModel.fromJson(Map<String, dynamic> json) => JourneyDataModel(
    slug: json["slug"],
    title: json["title"],
    sub: json["sub"],
    description: json["description"],
    url: json["url"],
    project: json["project"],
    category: json["category"],
    country: json["country"],
    gallery: List<dynamic>.from(json["gallery"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "slug": slug,
    "title": title,
    "sub": sub,
    "description": description,
    "url": url,
    "project": project,
    "category": category,
    "country": country,
    "gallery": List<dynamic>.from(gallery.map((x) => x)),
  };
}
