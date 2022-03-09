import 'package:ayush_app/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'authenticate/authenticate.dart';
import 'home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<UserCls?>(context) ;

    if(user == null)
    {
      return const Authenticate();
    }else {
      return const Home();
    }

  }
}
