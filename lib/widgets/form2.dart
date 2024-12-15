
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Required for input formatters
import 'package:ligapay/model/form_model2.dart';


class CustomForm2 extends StatefulWidget {
  final Future<void> Function(FormModel2 formModel2)? onSubmit;
  final String submitButtonText;
  final Color buttonColor;
  final Color buttonTextColor;

  const CustomForm2({
    Key? key,
    required this.onSubmit,
    this.submitButtonText = "Submit Details",
    this.buttonColor = const Color.fromARGB(255, 0, 0, 0),
    this.buttonTextColor = Colors.white,
  }) : super(key: key);

  @override
  _CustomForm2State createState() => _CustomForm2State();
}

class _CustomForm2State extends State<CustomForm2> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  
  bool isSubmitting = false;

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isSubmitting = true;
      });

      FormModel2 formModel2 = FormModel2(
        nameController.text.trim(),
        emailController.text.trim(),
        
      );

      if (widget.onSubmit != null) {
        await widget.onSubmit!(formModel2);
      }

      setState(() {
        isSubmitting = false;
      });
      _clearFields();
    }
  }

  void _clearFields() {
    nameController.clear();
    emailController.clear();
  
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          _buildTextField(
            controller: nameController,
            hintText: "Enter your Name",
            validator: (value) =>
                value!.trim().isEmpty ? "Name is required" : null,
          ),
          _buildTextField(
            controller: emailController,
            hintText: "Enter your Email",
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value!.trim().isEmpty) {
                return "Email is required";
              }
              if (!RegExp(
                      r"^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$")
                  .hasMatch(value.trim())) {
                return "Enter a valid email";
              }
              return null;
            },
          ),
         
         
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
            child: ElevatedButton(
              onPressed: isSubmitting ? null : _submitForm,
              style: ElevatedButton.styleFrom(
                backgroundColor: widget.buttonColor,
                foregroundColor: widget.buttonTextColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                minimumSize: const Size(double.infinity, 56),
              ),
              child: isSubmitting
                  ? const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                    )
                  : Text(widget.submitButtonText),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    TextInputType keyboardType = TextInputType.text,
    List<TextInputFormatter>? inputFormatters,
    required String? Function(String?) validator,
    int? maxLines,
    int? minLines,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: const Color.fromARGB(255, 0, 0, 0),
            width: 1,
          ),
        ),
        child: TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
          ),
          validator: validator,
          maxLines: maxLines,
          minLines: minLines,
        ),
      ),
    );
  }
}
