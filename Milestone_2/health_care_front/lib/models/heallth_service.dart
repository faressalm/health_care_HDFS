import 'dart:convert';

HealthService healthServiceJson(String str) =>
    HealthService.fromJson(json.decode(str));

String healthServiceToJson(HealthService data) => json.encode(data.toJson());

class HealthService {
  String serviceName;
  num meanCPU;
  num meandisk;
  num meanRAM;
  String peakTime;
  num countMessages;

  HealthService({
    required this.serviceName,
    required this.meanCPU,
    required this.meandisk,
    required this.meanRAM,
    required this.peakTime,
    required this.countMessages,
  });

  factory HealthService.fromJson(Map<String, dynamic> json) => HealthService(
        serviceName: json["serviceName"],
        meanCPU: json["meanCPU"],
        meandisk: json["meandisk"],
        meanRAM: json["meanRAM"],
        peakTime: json["peakTime"],
        countMessages: json["countMessages"],
      );

  Map<String, dynamic> toJson() => {
        "serviceName": serviceName,
        "meanCPU": meanCPU,
        'meandisk': meandisk,
        'meanRAM': meanRAM,
        'peakTime': peakTime,
        'countMessages': countMessages,
      };
}
