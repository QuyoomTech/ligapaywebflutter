class FormModel2 {
  String name;
  String email;
  String phone;

  FormModel2(
    this.name,
    this.email,
    this.phone,
  );

  factory FormModel2.fromJson(dynamic json) {
    return FormModel2(
      "${json['name']}",
      "${json['email']},",
      "${json['phone']},",
    );
  }

  // Method to make GET parameters.
  Map toJson() => {
        'name': name,
        'email': email,
        'phone': phone,
      };
}
