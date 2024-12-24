class FormModel3 {
  String name;
  String email;
  String phone;
  String role;
  String message;

  FormModel3(this.name, this.email, this.phone, this.role, this.message);

  factory FormModel3.fromJson(dynamic json) {
    return FormModel3("${json['name']}", "${json['email']}",
        "${json['phone']}", "${json['role']}", "${json['message']}");
  }

  // Method to make GET parameters.
  Map toJson() => {
        'name': name,
        'email': email,
        'phone': phone,
        'role': role,
        'message': message,
      };
}
