class JourneyModel {
  String slug;
  String title;
  String sub;
  String url;
  String project;

  JourneyModel({
    required this.slug,
    required this.title,
    required this.sub,
    required this.url,
    required this.project,
  });

  factory JourneyModel.fromJson(Map<String, dynamic> json) => JourneyModel(
    slug: json["slug"],
    title: json["title"],
    sub: json["sub"],
    url: json["url"],
    project: json["project"],
  );

  Map<String, dynamic> toJson() => {
    "slug": slug,
    "title": title,
    "sub": sub,
    "url": url,
    "project": project,
  };
}