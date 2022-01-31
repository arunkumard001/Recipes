class RegisterRequestModel {
  String? email;
  String? password;
  String? firstname;
  String? lastname;

  RegisterRequestModel(
      {this.email, this.password, this.firstname, this.lastname});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    data["first_name"] = this.firstname;
    data["last_name"] = this.lastname;
    return data;
  }
}
