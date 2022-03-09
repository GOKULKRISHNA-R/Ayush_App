import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Container(
            color: Colors.amber,
            child: SpinKitPumpingHeart(
              color: Colors.brown,
              size: 50 ,
            )
        ),
      ),
    );
  }
}
