
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Required for input formatters
import 'package:ligapay/model/form_model3.dart';



class CustomForm3 extends StatefulWidget {
  final Future<void> Function(FormModel3 formModel3)? onSubmit;
  final String submitButtonText;
  final Color buttonColor;
  final Color buttonTextColor;

  const CustomForm3({
    Key? key,
    required this.onSubmit,
    this.submitButtonText = "Submit Details",
    this.buttonColor = const Color.fromARGB(255, 0, 0, 0),
    this.buttonTextColor = Colors.white,
  }) : super(key: key);

  @override
  _CustomForm3State createState() => _CustomForm3State();
}

class _CustomForm3State extends State<CustomForm3> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController roleController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  bool isSubmitting = false;

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isSubmitting = true;
      });

      FormModel3 formModel3 = FormModel3(
        nameController.text.trim(),
        emailController.text.trim(),
        phoneController.text.trim(),
        roleController.text.trim(),
        messageController.text.trim(),
      );

      if (widget.onSubmit != null) {
        await widget.onSubmit!(formModel3);
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
    phoneController.clear();
    roleController.clear();
    messageController.clear();
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
            hintText: "Enter your full name",
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
          _buildTextField(
            controller: phoneController,
            hintText: "Enter your Phone Number",
            keyboardType: TextInputType.phone,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly, // Only numbers
              LengthLimitingTextInputFormatter(10),  // Max length 10 digits
            ],
            validator: (value) {
              if (value!.trim().isEmpty) {
                return "Phone number is required";
              }
              if (value.trim().length != 10) {
                return "Enter a valid 10-digit phone number";
              }
              return null;
            },
          ),
          _buildTextField(
            controller: roleController,
            hintText: "Flutter Developer,UX Designer, Blockchain,",
            validator: (value) =>
                value!.trim().isEmpty ? "Which role are you interested in ?" : null,
          ),
          _buildTextField(
            controller: messageController,
            hintText: "Enter your Message",
            validator: (value) =>
                value!.trim().isEmpty ? "Message is required" : null,
            maxLines: 16,
            minLines: 6,
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
