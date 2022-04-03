  import 'dart:_http';
import 'dart:convert';

import 'package:health_care_front/models/heallth_service.dart';
import 'package:http/http.dart' as http;

Future<List<HealthService>> getheallthServicesList(DateTime start,DateTime end) async {
  final uri = Uri.parse('http://localhost:8080/getallservices').replace(queryParameters: {
      'start': start.millisecondsSinceEpoch/1000,
      'end': end.millisecondsSinceEpoch/1000,
    });
    var data = await http.get(uri);
    var jsonData = json.decode(data.body);
    List<HealthService> heallthServicesList = jsonData.map((data)=>HealthService.fromJson(data)).toList();
    // List<HealthService> heallthServicesLis =[];
    // for (var data in jsonData) {
    //   HealthService heallthService = HealthService.fromJson(data);
    //   heallthServicesList.add(heallthService);
    // }
    return heallthServicesList;
  }