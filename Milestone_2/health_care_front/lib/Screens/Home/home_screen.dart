import 'package:flutter/material.dart';
import 'package:health_care_front/constant.dart';
import '../../Components/app_bar.dart';
import '../../Components/body.dart';
import '../../Components/loading_dialog.dart';
import '../../functions/http_req.dart';
import '../../models/heallth_service.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  List<HealthService> healthServiceList = [];
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    getAnalysis(DateTimeRange dateRange) async {
      loadingDialog(context);
      // var newList = await getheallthServicesList();
      Navigator.pop(context);
      setState(() {
      //  widget.healthServiceList= newList;
        widget.healthServiceList.add(HealthService(
            countMessages: 50,
            meanCPU: 0.3,
            meanRAM: 0,
            meandisk: 5,
            peakTimeCPU: 1647938696,
            peakTimeRAM:1647938696,
            peakTimeDisk: 1647938696,
            serviceName: "location"));
      });
    }

    return Scaffold(
      body: LayoutBuilder(builder: (context, c) {
        return Center(
          child: Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomAppBar(
                  getAnalysis: getAnalysis,
                ),
                Body(healthServiceList: widget.healthServiceList),
              ],
            ),
          ),
        );
      }),
    );
  }
}
