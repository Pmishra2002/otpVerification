

import 'package:flutter/material.dart';
import 'package:myvideo/otp.dart';
import 'package:myvideo/phone.dart';

import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'phone',
    routes: {
      'phone': (context) =>MyPhone(),
      'otp' : (context) =>MyOtp()

    },
  ));
}

