  import 'dart:convert';

import 'package:health_care_front/models/heallth_service.dart';
import 'package:http/http.dart' as http;

Future<List<HealthService>> getheallthServicesList() async {
    var data = await http.get(Uri.parse('http://localhost:8080/getallservices'));
    var jsonData = json.decode(data.body);
    List<HealthService> heallthServicesList = jsonData.map((data)=>HealthService.fromJson(data)).toList();
    // List<HealthService> heallthServicesLis =[];
    // for (var data in jsonData) {
    //   HealthService heallthService = HealthService.fromJson(data);
    //   heallthServicesList.add(heallthService);
    // }
    return heallthServicesList;
  }