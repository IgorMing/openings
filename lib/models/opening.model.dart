class OpeningModel {
  final String eco;
  final String name;
  final String parent;
  final Map<String, String> aka;
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

  factory OpeningModel.fromJson(Map<String, dynamic> body) {
    return OpeningModel(
      eco: body["eco"],
      name: body["name"],
      // parent: body["parent"],
      // aka: body["aka"],
      // history: body["history"],
      // description: body["description"],
      // image: body["image"],
      // origin: body["origin"],
    );
  }

  Map<String, dynamic> toJson() => {
        "eco": eco,
        "name": name,
        "parent": parent,
        "aka": aka,
        "history": history,
        "description": description,
        "image": image,
        "origin": origin
      };
}
