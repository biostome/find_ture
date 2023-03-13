import 'dart:convert';

import 'package:flutter/material.dart';

import 'user.dart';

class Global {
  //初始化全局信息，会在APP启动时执行
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
  }

  static Global share = Global();

  var isLogin = false;
}
