

class User {
  Data data;
  Support support;

  User({this.data, this.support});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
    data : json['data'] != null ? new Data.fromJson(json['data']) : null,
    support : json['support'] != null ? new Support.fromJson(json['support']) : null,
    );
  }
}

class Data {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  Data({this.id, this.email, this.firstName, this.lastName, this.avatar});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
    id : json['id'],
    email : json['email'],
    firstName : json['first_name'],
    lastName : json['last_name'],
    avatar : json['avatar']
    );
  }

}

class Support {
  String url;
  String text;

  Support({this.url, this.text});

  factory Support.fromJson(Map<String, dynamic> json) {
    return Support(
    url : json['url'],
    text : json['text']
    );
  }

}