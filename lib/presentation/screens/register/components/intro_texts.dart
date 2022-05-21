import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mapapp/presentation/resources/color_manager.dart';
import 'package:mapapp/presentation/resources/font_manager.dart';
import 'package:mapapp/presentation/resources/style_manager.dart';
import 'package:mapapp/presentation/resources/values_manager.dart';
import 'package:mapapp/presentation/screens/register/register_view_model.dart';

class IntroTexts extends StatelessWidget {
  IntroTexts({Key? key}) : super(key: key);
  final RegisterViewModel viewModel = RegisterViewModel();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTitle(),
        SizedBox(height: AppSize.s30.h),
        _buildSubTitle(),
      ],
    );
  }

  Widget _buildSubTitle() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppMargin.m2.w),
      child: AutoSizeText(
        viewModel.subTitle,
        style: regularTextStyle(
          color: ColorManager.black,
          fontSize: FontSize.s18,
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return AutoSizeText(
      viewModel.title,
      style: boldTextStyle(
        color: ColorManager.black,
        fontSize: FontSize.s24,
      ),
    );
  }
}
