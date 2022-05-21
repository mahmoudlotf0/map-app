import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mapapp/presentation/resources/color_manager.dart';
import 'package:mapapp/presentation/resources/values_manager.dart';
import 'package:mapapp/presentation/screens/register/components/intro_texts.dart';
import 'package:mapapp/presentation/screens/register/components/next_button.dart';
import 'package:mapapp/presentation/screens/register/components/phone_form_field.dart';
import 'package:mapapp/presentation/screens/register/register_view_model.dart';

// ignore: must_be_immutable
class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);
  RegisterViewModel viewModel = RegisterViewModel();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.white,
        body: SingleChildScrollView(
          child: Form(
            key: UniqueKey(),
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: AppMargin.m32.w,
                vertical: AppMargin.m88.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IntroTexts(),
                  SizedBox(height: AppSize.s110.h),
                  PhoneFormField(),
                  SizedBox(height: AppSize.s65.h),
                  NextButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
