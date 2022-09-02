import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveLoadingScreen extends StatelessWidget {
  String os;

  AdaptiveLoadingScreen(this.os);

  @override
  Widget build(BuildContext context) {
    if (os == 'android') {
      return const Center(child: CircularProgressIndicator());
    }
    return const Center(child: CupertinoActivityIndicator());
  }
}
