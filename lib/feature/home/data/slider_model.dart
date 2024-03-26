class SliderModel {
  String text;
  String? textTwo;
  String url;

  SliderModel({
    required this.text,
    required this.textTwo,
    required this.url,
  });

  factory SliderModel.fromJson(Map<String, dynamic> json) => SliderModel(
    text: json["text"],
    textTwo: json["text_two"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "text": text,
    "text_two": textTwo,
    "url": url,
  };
}