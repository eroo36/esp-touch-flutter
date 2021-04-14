import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:wifi/models/wifi_info/wifi_info_model.dart';
// import controller
import 'package:wifi/controllers/wifi_info/wifi_info_controller.dart';
import 'package:wifi/views/wifi_info/components/wifi_info_list.dart';

class WifiInfoView extends StatefulWidget {
  static const routeName = '/wifi-info';

  @override
  _WifiInfoViewState createState() => _WifiInfoViewState();
}

class _WifiInfoViewState extends State<WifiInfoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WifiInfo'),
      ),
      body: Consumer<WifiInfoModel>(
        builder: (context, wifiInfoModel, child) {
          var wifiInfoList = [
            wifiInfoModel.wifiName,
            wifiInfoModel.wifiBSSID,
            wifiInfoModel.wifiIP
          ];
          return WifiInfoList(
            wifiInfoList: wifiInfoList,
          );
        },
      ),
    );
  }
}