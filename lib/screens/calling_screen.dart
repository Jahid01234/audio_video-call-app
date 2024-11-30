import 'dart:math';
import 'package:flutter/material.dart';
import 'package:video_audio_call_app/constants/app_info.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';


class CallingScreen extends StatefulWidget {
  final String callId;

  const CallingScreen({
    super.key,
    required this.callId,
  });

  @override
  State<CallingScreen> createState() => _CallingScreenState();
}

class _CallingScreenState extends State<CallingScreen> {
  // here random create user id...
  final userId= Random().nextInt(1000);


  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
        appID:AppInfo.appId,
        appSign: AppInfo.appSign,
        callID: widget.callId,
        userID: userId.toString(),
        userName: 'userName$userId',
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );

  }
}
