import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:ligapay/model/form_model2.dart';


class FormController2 {
  static const String URL =
      "https://script.google.com/macros/s/AKfycbzm8Y7H40zvhFIip_ucV2MO479U3pW5E7SP5ntZID_O_ZjfUzujqbfq3feFj5Lcdbkj/exec";

  static const STATUS_SUCCESS = "SUCCESS";

  void submitForm(FormModel2 formModel2, void Function(String) callback) async {
    try {
      // Convert URL to Uri
      var uri = Uri.parse(URL);

      // Post data to Google App Script
      await http.post(uri, body: formModel2.toJson()).then((response) async {
        if (response.statusCode == 302) {
          // Handle redirection
          var locationUrl = response.headers['location'];
          if (locationUrl != null) {
            var redirectUri = Uri.parse(locationUrl);
            await http.get(redirectUri).then((redirectResponse) {
              callback(convert.jsonDecode(redirectResponse.body)['status']);
            });
          } else {
            throw Exception("Redirect location is null.");
          }
        } else {
          // Normal response handling
          callback(convert.jsonDecode(response.body)['status']);
        }
      });
    } catch (e) {
      print("Error occurred: $e");
    }
  }
}
