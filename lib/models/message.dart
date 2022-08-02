class Messages {
  List<Message>? message;

  Messages({this.message});

 

  Messages.fromJson(Map<String, dynamic> json) {
    if (json['message'] != null) {
      message = <Message>[];
      json['message'].forEach((v) {
        message!.add(Message.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (message != null) {
      data['message'] = message!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Message {
  String? name;
  String? text;
  String? time;
  String? photo;
  String? title;

  Message({this.name, this.text, this.time});

  Message.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    text = json['text'];
    time = json['time'];
    title = json['title'];
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['text'] = text;
    data['time'] = time;
    data['title'] = title;
    data['photo'] = photo;
    return data;
  }
}



