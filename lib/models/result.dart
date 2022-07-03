List<String> my_pric = [];

class ReserchResult {
  ReserchResult({
    required this.time,
    required this.elements,
  });
  late final String time;
  late final List<Elements> elements;

  ReserchResult.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    elements =
        List.from(json['elements']).map((e) => Elements.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['time'] = time;
    _data['elements'] = elements.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Elements {
  Elements({
    required this.name,
    required this.imgUrl,
    required this.description,
    required this.value,
    required this.price,
    required this.services,
    required this.comments,
  });
  late final String name;
  late final String imgUrl;
  late final String description;
  late final int value;
  late final List<String> price;
  late final List<Services> services;
   List<Services> servicesPrice0 = [];
  List<Services> servicesPrice1 = [];
  List<Services> servicesPrice2  = [];
  late final List<Comments> comments;

  Elements.fromJson(Map<String, dynamic> json) {
    
    name = json['name'];
    imgUrl = json['imgUrl'];
    description = json['description'];
    value = json['value'];
    price = List.castFrom<dynamic, String>(json['price']);
    my_pric = price;
    services =
        List.from(json['services']).map((e) => Services.fromJson(e)).toList();
    comments =
        List.from(json['comments']).map((e) => Comments.fromJson(e)).toList();
   
    for(var elem in services){
      if (elem.pric == price[0]) servicesPrice0.add(elem);
      if (elem.pric == price[1]) servicesPrice1.add(elem);
      if (elem.pric == price[2]) servicesPrice2.add(elem);
    }
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['imgUrl'] = imgUrl;
    _data['description'] = description;
    _data['value'] = value;
    _data['price'] = price;
    _data['services'] = services.map((e) => e.toJson()).toList();
    _data['comments'] = comments.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Services {
  Services({this.pric, required this.service});
  late final String? service;
  late final String? pric;

  Services.fromJson(Map<String, dynamic> json) {
    for (int i = 0; i < 3; i++) {
      if (json['price$i'] != null) {
        pric = my_pric[i];
        service = json["price$i"];
      }
      ;
    }
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['price'] = pric;
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

  Comments.fromJson(Map<String, dynamic> json) {
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
