import 'dart:async';

import 'package:constant/constant.dart';
import 'package:demo/src/app/router/router_constant.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/provider/asset_flare.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/services.dart';

/// Splash screen
class SplashScreen extends StatefulWidget {
  /// Constructor
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance?.addPostFrameCallback((_) {
      Timer(const Duration(seconds: 3), () {
        context.router.replaceNamed(RouterConstant.productScreen);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlareActor.asset(
          AssetFlare(
            bundle: rootBundle,
            name: ImageConstant.flareAnimation,
          ),
          animation: 'welcome',
        ),
      ),
    );
  }
}
