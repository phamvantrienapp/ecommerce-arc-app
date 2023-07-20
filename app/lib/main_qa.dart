import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ecommerce_app/app/my_app.dart';
import 'package:shared/shared.dart';

Future<void> main() async {
  await EnvContants.load(EnvType.qa);
  String foo = EnvContants.env;
  log(foo);
  runApp(const MyApp());
}
