import 'package:flutter/material.dart';
import 'package:health_care_front/constant.dart';

import '../models/heallth_service.dart';

class HealthServiceRow extends StatelessWidget {
  final HealthService healthService;
  const HealthServiceRow({ Key? key , required this.healthService}) : super(key: key);
  List serviceInfo(title,value){
  return [
    Text(title+": ",style:  TextStyle(color: kDarkButton.withOpacity(0.7))),
    Text(value.toString(),style: const TextStyle(color: kDarkButton, fontWeight: FontWeight.bold)),
    Spacer(),
  ];
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ...serviceInfo("Service Name",healthService.serviceName),
          ...serviceInfo("Mean CPU",healthService.meanCPU),
          ...serviceInfo("Mean Disk",healthService.meandisk),
          ...serviceInfo("Mean RAM",healthService.meanRAM),
          ...serviceInfo("Peak Time",healthService.peakTime),
          ...serviceInfo("Count Messages",healthService.countMessages),
        ],

      ),
    );
  }
}