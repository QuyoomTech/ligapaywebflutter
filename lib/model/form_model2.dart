class FormModel2 {
  String name;
  String email;

  FormModel2(this.name, this.email, );

  factory FormModel2.fromJson(dynamic json) {
    return FormModel2("${json['name']}", "${json['email']}",
       );
  }

  // Method to make GET parameters.
  Map toJson() => {
        'name': name,
        'email': email,
        
      };
}
