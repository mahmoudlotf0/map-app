import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mapapp/presentation/resources/color_manager.dart';
import 'package:mapapp/presentation/resources/font_manager.dart';
import 'package:mapapp/presentation/resources/style_manager.dart';
import 'package:mapapp/presentation/resources/values_manager.dart';
import 'package:mapapp/presentation/screens/register/register_view_model.dart';

class NextButton extends StatelessWidget {
  NextButton({Key? key}) : super(key: key);
  final RegisterViewModel viewModel = RegisterViewModel();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(110.w, 50.h),
          primary: ColorManager.black,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s6.r)),
        ),
        onPressed: () {},
        child: AutoSizeText(viewModel.buttonName,
            style: regularTextStyle(
              color: ColorManager.white,
              fontSize: FontSize.s16,
            )),
      ),
    );
  }
}
