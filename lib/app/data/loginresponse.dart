class LoginResponseModel {
  String? token;
  String? currentUser;
  String? full_name;

  LoginResponseModel({this.token, this.currentUser, this.full_name});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    full_name = json["full_name"];
    currentUser = json["user"];
    print(json);
  }
}
