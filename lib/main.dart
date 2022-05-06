import 'package:dr_system/screens/add_patients.dart';
import 'package:dr_system/screens/dashboard.dart';
import 'package:dr_system/screens/forgot_password.dart';
import 'package:dr_system/screens/get_result.dart';
import 'package:dr_system/screens/home_screen.dart';
import 'package:dr_system/screens/patients_list.dart';
import 'package:dr_system/screens/privacy_policy.dart';
import 'package:dr_system/screens/profile.dart';
import 'package:dr_system/screens/registration.dart';
import 'package:dr_system/screens/capture_picture.dart';
import 'package:dr_system/screens/customer_care.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "patients_list",
    routes: {
      'login': (context) =>  HomeScreen(),
      'registration': (context) =>  Registration(),
      'dashboard': (context)  => Dashboard(),
      'add_patients': (context)  => AddPatients(),
      'capture_image': (context)  => CaptureImage(),
      'get_result': (context)  => GetResult(),
      'patients_list': (context)  => PatientsList(),
      'customer_care': (context)  => CustomerCare(),
      'forgot_password': (context)  => ForgotPassword(),
      'privacy_policy': (context)  => PrivacyPolicy(),
      'profile': (context)  => Profile(),

    }
  ));
}

