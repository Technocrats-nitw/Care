import 'package:http/http.dart' as http;
import 'package:technocrats/constants.dart';
import 'dart:convert';
import 'package:technocrats/model/hospital_info.dart';

class API_hospital {
  Future<HospitalModel> getHospital() async {
    var client = http.Client();
    var hospitalModel = null;

    var response = await client.get(Uri.parse(Strings.hospital_url));
    try {
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        hospitalModel = HospitalModel.fromJson(jsonMap);
      }
    } catch (Exception) {
      //catch all exception=> here we can be specific though yet it's better this way
      return hospitalModel;
    }

    return hospitalModel;
  }
}