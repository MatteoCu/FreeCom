class HomePageResult {
  HomePageResult({
    required this.categories,
    required this.element,
  });
  late final List<String> categories;
  late final List<Elements> element;

  HomePageResult.fromJson(Map<String, dynamic> json) {
    categories = List.castFrom<dynamic, String>(json['categories']);
    element =
        List.from(json['element']).map((e) => Elements.fromJson(e)).toList();
  }

  List<Elements> filter(String type) {
    List<Elements> elem = [];
    for (var e in element) {
      if (e.type == type)  elem.add(e);
    }
    return elem;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['categories'] = categories;
    _data['element'] = element.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Elements {
  Elements({
    required this.type,
    required this.photo,
    required this.variety,
    required this.description,
    required this.star,
    required this.user,
    required this.lat,
    required this.lon,
  });
  late final String type;
  late final String photo;
  late final String variety;
  late final String description;
  late final int star;
  late final String user;
  late final int lat;
  late final int lon;

  Elements.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    photo = json['photo'];
    variety = json['variety'];
    description = json['description'];
    star = json['star'];
    user = json['user'];
    lat = json['lat'];
    lon = json['lon'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['type'] = type;
    _data['photo'] = photo;
    _data['variety'] = variety;
    _data['description'] = description;
    _data['star'] = star;
    _data['user'] = user;
    _data['lat'] = lat;
    _data['lon'] = lon;
    return _data;
  }
}
