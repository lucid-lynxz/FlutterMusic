import 'package:http/http.dart' as http;

Future<String> sayHello() async {
  var response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    return response.body.toString();
  }
  throw Exception("http error:${response.statusCode}");
}
