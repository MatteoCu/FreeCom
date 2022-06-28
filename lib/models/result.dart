class ReserchResult {
  late String time;
  late List<Elements> elements;

  ReserchResult({required this.time,required this.elements});

  ReserchResult.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    if (json['elements'] != null) {
      json['elements'].forEach((v) {
        elements.add(Elements.fromJson(v));
      });
    }
  }
}

class Elements {
  late String descriptiom;
  late List<String> price;
  late int value;
  late List<Comments> comments;

  Elements({required this.descriptiom,required this.price,required this.value,required this.comments});

  Elements.fromJson(Map<String, dynamic> json) {
    descriptiom = json['descriptiom'];
    price = json['price'].cast<String>();
    value = json['value'];
    if (json['comments'] != null) {
      json['comments'].forEach((v) {
        comments.add(Comments.fromJson(v));
      });
    }
  }

}

class Comments {
  late String name;
  late String text;

  Comments({required this.name,required this.text});

  Comments.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    text = json['text'];
  }

}
