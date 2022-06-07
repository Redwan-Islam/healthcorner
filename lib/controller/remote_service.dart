import 'package:healthcorner/model/SensorData.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<SensorData>?> getPosts() async {
    var client = http.Client();

    var uri = Uri.parse("http://192.168.0.4/");
    final response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return sensorDataFromJson(json);
    }
    return null;
  }
}
