class OpeningModel {
  final String eco;
  final String name;
  final String parent;
  final List<String> aka;
  final String history;
  final String description;
  final String image;
  final String origin;

  OpeningModel(
      {this.eco,
      this.name,
      this.parent,
      this.aka,
      this.history,
      this.description,
      this.image,
      this.origin});

  factory OpeningModel.fromJson(Map body) {
    return OpeningModel(
      eco: body["eco"],
      name: body["name"],
      parent: body["parent"],
      aka: (body["aka"]).cast<String>(),
      history: body["history"],
      description: body["description"],
      image: body["image"],
      origin: body["origin"],
    );
  }
}
