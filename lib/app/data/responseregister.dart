class RegisterResponseModel {
  bool? loggedIn;
  String? token;
  var data;
  String? currentUser;
  String? full_name;

  RegisterResponseModel(
      {this.token, this.loggedIn, this.currentUser, this.full_name});

  RegisterResponseModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    loggedIn = json["loggedIn"];
    full_name = json["full_name"];
    currentUser = json["currentUser"];
  }
}
