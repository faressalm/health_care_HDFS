import 'dart:convert';
import 'package:intl/intl.dart';
HealthService healthServiceJson(String str) =>
    HealthService.fromJson(json.decode(str));

String healthServiceToJson(HealthService data) => json.encode(data.toJson());

class HealthService {
  String serviceName;
  num meanCPU;
  num meandisk;
  num meanRAM;
  num peakTimeCPU;
  num peakTimeRAM;
  num peakTimeDisk;
  num countMessages;
  

  HealthService({
    required this.serviceName,
    required this.meanCPU,
    required this.meandisk,
    required this.meanRAM,
    required this.peakTimeCPU,
    required this.peakTimeRAM,
    required this.peakTimeDisk,
    required this.countMessages,
  });

  factory HealthService.fromJson(Map<String, dynamic> json) => HealthService(
        serviceName: json["serviceName"],
        meanCPU: json["meanCPU"],
        meandisk: json["meandisk"],
        meanRAM: json["meanRAM"],
        peakTimeCPU: json["peakTimeCPU"],
        peakTimeRAM: json["peakTimeRAM"],
        peakTimeDisk: json["peakTimeDisk"],
        countMessages: json["countMessages"],
      );

  Map<String, dynamic> toJson() => {
        "serviceName": serviceName,
        "meanCPU": meanCPU,
        'meandisk': meandisk,
        'meanRAM': meanRAM,
        'peakTimeCPU': peakTimeCPU,
        'peakTimeRAM': peakTimeRAM,
        'peakTimeDisk': peakTimeDisk,
        'countMessages': countMessages,
      };
}
