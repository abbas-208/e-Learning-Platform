import 'dart:convert';

import 'package:courseriver/Services/Api.dart';
import 'package:http/http.dart' as http;

class Authentication {
  final client = http.Client();

  Future loginUser(String email, String password) async {
    final http.Response response = await http.post(
        Uri.parse("${API().api}/login"),
        body: {'email': email, 'password': password});
    return response.body;
  }

  Future verifyEmail(String email, String otp) async {
    final http.Response response = await http.post(
        Uri.parse("${API().api}/verifyOTP"),
        body: {'email': email, 'otp': otp});
    return response.body;
  }

  Future resetPassword(String email, String password, String otp) async {
    final http.Response response = await http.post(
        Uri.parse("${API().api}/resetPassword"),
        body: {'email': email, 'otp': otp, 'password': password});
    return response.body;
  }

  Future sendforgotPasswordOTP(String email) async {
    final http.Response response = await http.post(
        Uri.parse("${API().api}/sendforgotpasswordOTP"),
        body: {'email': email});
    return response.body;
  }

  Future signupUser(
      String email, String password, String name, String image) async {
    print("Signup");
    try {
      // var uri = Uri.https('my.apiurl.com', 'my/api/endopoint/path');
      // var response = await client.post(uri);
      final http.Response response =
          await http.post(Uri.parse("${API().api}/routes/user/signup"),
              body: jsonEncode(<String, String>{
                'email': email,
                'password': password,
                'name': name,
                'image': image != ""
                    ? image
                    : "https://image.shutterstock.com/image-vector/avatar-vector-male-profile-gray-260nw-538707355.jpg"
              }),
              headers: {
            "Accept": "application/json",
            "Access-Control-Allow-Origin": "*"
            //"Access-Control-Allow-Headers": "Origin, Content-Type, X-Amz-Date, Authorization, X-Api-Key, X-Amz-Security-Token, locale"
            //"Access-Control-Allow-Methods": "POST, OPTIONS"
            //"Access-Control-Allow-Credentials":true,
          });
      return response.body;
    } catch (error) {
      print(error);
    }
  }
}
