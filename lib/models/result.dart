

class ReserchResult {
  ReserchResult({
    required this.time,
    required this.elements,
  });
  late final String time;
  late final List<Elements> elements;
  
  ReserchResult.fromJson(Map<String, dynamic> json){
    time = json['time'];
    elements = List.from(json['elements']).map((e)=>Elements.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['time'] = time;
    _data['elements'] = elements.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Elements {
  Elements({
    required this.description,
    required this.value,
    required this.price,
    required this.comments,
  });
  late final String description;
  late final int value;
  late final List<String> price;
  late final List<Comments> comments;
  
  Elements.fromJson(Map<String, dynamic> json){
    description = json['description'];
    value = json['value'];
    price = List.castFrom<dynamic, String>(json['price']);
    comments = List.from(json['comments']).map((e)=>Comments.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['description'] = description;
    _data['value'] = value;
    _data['price'] = price;
    _data['comments'] = comments.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Comments {
  Comments({
    required this.name,
    required this.text,
  });
  late final String name;
  late final String text;
  
  Comments.fromJson(Map<String, dynamic> json){
    name = json['name'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['text'] = text;
    return _data;
  }
}