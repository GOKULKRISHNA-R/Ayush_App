import 'package:flutter/material.dart';
import 'package:customize/customize.dart';

const textInputDecoration = InputDecoration(
  prefixIconColor: Colors.black,
  fillColor: FxColors.amber50,
  enabledBorder:  OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: FxColors.amber50 ,width: 2 )
  ),
  focusedBorder:  OutlineInputBorder(
      borderSide: BorderSide(color: Colors.amber ,width: 2 )
  ),
  filled: true,
);