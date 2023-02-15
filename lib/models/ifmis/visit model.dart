class VisitModel {
  late int id;
  late String title;
  late String image;

  VisitModel({
    required this.id,
    required this.title,
    required this.image,
  });

  factory VisitModel.fromJSON(Map<String, dynamic> json) {
    return VisitModel(
      id: json['id'],
      title: json['title'],
      image: json['image'],
    );
  }
}
