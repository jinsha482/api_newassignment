import 'package:http/http.dart' as http;

import '../models/product_info.dart';

class HttpService {
  // static var client = http.Client();

  static Future<List<Welcome>> fetchProducts() async {
    var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

    if (response.statusCode == 200) {
      var data = response.body;
      return welcomeFromJson(data);
    } else {
      // throw Exception();
      var data = response.body;
      return welcomeFromJson(data);
    }
  }
}
