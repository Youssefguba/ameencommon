import 'package:ameencommon/utils/constants.dart';
import 'package:flutter/material.dart';

class RefreshProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RefreshProgressIndicator(
        backgroundColor: Colors.white,
        valueColor: new AlwaysStoppedAnimation<Color>(AppColors.cGreen),
      ),
    );
  }
}
