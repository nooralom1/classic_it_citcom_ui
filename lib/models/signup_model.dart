class CitcomRegistrationModel {
  String? message;
  Errors? errors;

  CitcomRegistrationModel({this.message, this.errors});

  CitcomRegistrationModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    errors =
    json['errors'] != null ? new Errors.fromJson(json['errors']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.errors != null) {
      data['errors'] = this.errors!.toJson();
    }
    return data;
  }
}

class Errors {
  List<String>? email;
  List<String>? phone;

  Errors({this.email, this.phone});

  Errors.fromJson(Map<String, dynamic> json) {
    email = json['email'].cast<String>();
    phone = json['phone'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['phone'] = this.phone;
    return data;
  }
}
