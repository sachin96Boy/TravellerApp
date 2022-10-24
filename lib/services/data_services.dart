import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_traveller_app/model/data_modal.dart';

class DataServices {
  String baseUrl = "http://localhost:8080/api";

  Future<List<DataModel>> getInfo() async {
    var url = Uri.parse(baseUrl + "/info");
    http.Response res = await http.get(url);
    try {
      if (res.statusCode == 200) {
        // dart does't understand json
        // so we need to decode the json and
        // convert it to a map
        List<dynamic> list = json.decode(res.body);
        return list.map((e) => DataModel.fromJson(e)).toList();
      } else {
        return <DataModel>[]; // empty list
      }
    } catch (e) {
      print(e);
      return <DataModel>[]; // empty list
    }
  }
}
