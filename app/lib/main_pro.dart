import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ecommerce_app/app/my_app.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared/shared.dart';

Future<void> main() async {
  // await dotenv.load(fileName: 'define.pro.env');
  await EnvContants.load(EnvType.pro);
  String foo = EnvContants.env;
  log(foo);
  runApp(const MyApp());
}
