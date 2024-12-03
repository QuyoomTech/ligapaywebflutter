class FormModel {
  String name;
  String email;
  String phone;
  String subject;
  String message;

  FormModel(this.name, this.email, this.phone, this.subject, this.message);

  factory FormModel.fromJson(dynamic json) {
    return FormModel("${json['name']}", "${json['email']}",
        "${json['phone']}", "${json['subject']}", "${json['message']}");
  }

  // Method to make GET parameters.
  Map toJson() => {
        'name': name,
        'email': email,
        'phone': phone,
        'subject': subject,
        'message': message,
      };
}
