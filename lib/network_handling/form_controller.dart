import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import '../model/form_model.dart';

class FormController {
  // Google App Script Web URL
  // ignore: constant_identifier_names10
  static const String URL =
      "https://script.google.com/macros/s/AKfycbxsu7dYdd0l23FxF5Nv3ZdIgtOYXHZC3idNZrB5bH1fNd7FsCOhBI9Vy5drK7ZNhANR/exec";

  static const STATUS_SUCCESS = "SUCCESS";

  void submitForm(FormModel formModel, void Function(String) callback) async {
    try {
      // Convert URL to Uri
      var uri = Uri.parse(URL);

      // Post data to Google App Script
      await http.post(uri, body: formModel.toJson()).then((response) async {
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
