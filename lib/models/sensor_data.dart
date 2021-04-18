import 'dart:convert';

import 'package:http/http.dart' as http;

const String URL =
    'https://api.thingspeak.com/channels/1352845/fields/1.json?results=1000';

class SensorData {
  Future getSensorData() async {
    http.Response response = await http.get(Uri.parse(URL));

    if (response.statusCode == 200) {
      var data = response.body;
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
