import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resourcesr/components/loader.dart';
import 'package:resourcesr/data/User.dart';
import 'package:resourcesr/pages/dashboard_ui.dart';

class DashboardSplashUi extends StatefulWidget {
  DashboardSplashUi({@required this.user});
  User user;
  @override
  State<StatefulWidget> createState() => _DashboardSplashUi();
}

class _DashboardSplashUi extends State<DashboardSplashUi> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    // Todo: need to handle the deleted, disabled profiles.
    if (widget.user.klass != null) return route();
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => DashboardUi(widget.user)));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Loader(),
          ],
        ),
      ),
    );
  }
}
