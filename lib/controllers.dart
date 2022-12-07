import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PixelControllers extends GetxController{

  Rx<TextEditingController >lastnameTextEditingController = TextEditingController().obs;
  Rx<TextEditingController >firstnameTextEditingController = TextEditingController().obs;
  Rx<TextEditingController >emailTextEditingController = TextEditingController().obs;
  Rx<TextEditingController >phoneTextEditingController = TextEditingController().obs;
  Rx<TextEditingController >passwordTextEditingController = TextEditingController().obs;
  Rx<TextEditingController >password2TextEditingController = TextEditingController().obs;
   Rx<TextEditingController >forgotpasswordTextEditingController = TextEditingController().obs;
}