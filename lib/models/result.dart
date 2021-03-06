List<String> my_pric = [];

class ReserchResult {
  ReserchResult({
    required this.time,
    required this.elements,
  });
  late final String time;
  late final List<Element> elements;

  ReserchResult.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    elements =
        List.from(json['element']).map((e) => Element.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['time'] = time;
    _data['elements'] = elements.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Element {
  Element({
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
  
  Element.fromJson(Map<String, dynamic> json){
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