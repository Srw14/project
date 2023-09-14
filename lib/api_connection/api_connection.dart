import "dart:convert";
import "package:http/http.dart" as http;

class API {
  static const hostConnect = "http://172.20.10.2/api_final_project";
  static const hostConnectUser = "$hostConnect/user";
  static const signUp = "$hostConnect/user/signup.php";
  static const login = "$hostConnect/user/login.php";
}

Future<bool> registerUser(String username, String firstName, String lastName, String email, String password) async {
  final response = await http.post(
    Uri.parse(API.signUp),
    body: {
      'username': username,
      'firstname': firstName,
      'lastname': lastName,
      'email': email,
      'password': password,
    },
  );

  if (response.statusCode == 200) {
      print("tt ${response.body}");
    final responseData = json.decode(response.body);
    
    return responseData['success'];
  } else {
    return false;
  }
}
Future<bool> loginUser(String username, String firstName, String lastName, String email, String password) async {
  final response = await http.post(
    Uri.parse(API.signUp),
    body: {
      'username': username,
      'password': password,
    },
  );

  if (response.statusCode == 200) {
      print("tt ${response.body}");
    final responseData = json.decode(response.body);
    
    return responseData['success'];
  } else {
    return false;
  }
}
