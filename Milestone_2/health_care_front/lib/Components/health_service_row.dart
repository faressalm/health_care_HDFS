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
    const SizedBox(width:20),
  ];
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Container(
        height: 50,
        width: 600,
        padding: const EdgeInsets.all(8.0),
         decoration: BoxDecoration(
            color: Color.fromARGB(132, 176, 235, 247),
            borderRadius: BorderRadius.circular(34),
          ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...serviceInfo("Service Name",healthService.serviceName),
              ...serviceInfo("Mean CPU",healthService.meanCPU),
              ...serviceInfo("Mean Disk",healthService.meanDisk),
              ...serviceInfo("Mean RAM",healthService.meanRAM),
              ...serviceInfo("Peak Time CPU",DateTime.fromMillisecondsSinceEpoch(healthService.peakTimeCPU.toInt() * 1000) ),
              ...serviceInfo("Peak Time RAM",DateTime.fromMillisecondsSinceEpoch(healthService.peakTimeRAM.toInt() * 1000) ),
              ...serviceInfo("Peak Time Disk",DateTime.fromMillisecondsSinceEpoch(healthService.peakTimeDisk.toInt() * 1000)),
              ...serviceInfo("Count Messages",healthService.countMessages),
            ],
          
          ),
        ),
      ),
    );
  }
}