import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mapapp/presentation/resources/color_manager.dart';
import 'package:mapapp/presentation/resources/font_manager.dart';
import 'package:mapapp/presentation/resources/style_manager.dart';
import 'package:mapapp/presentation/resources/values_manager.dart';
import 'package:mapapp/presentation/screens/register/register_view_model.dart';

class PhoneFormField extends StatelessWidget {
  PhoneFormField({Key? key}) : super(key: key);
  final RegisterViewModel viewModel = RegisterViewModel();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildContainerFlag(),
        SizedBox(width: AppSize.s16.w),
        _buildPhoneField(),
      ],
    );
  }

  Widget _buildPhoneField() {
    return Expanded(
      flex: 2,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
            horizontal: AppPadding.p12.h, vertical: AppPadding.p2.w),
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorManager.blue,
          ),
          borderRadius: BorderRadius.circular(AppSize.s6.r),
        ),
        child: TextFormField(
          autofocus: true,
          style: regularTextStyle(
            color: ColorManager.black,
            fontSize: FontSize.s18.sp,
            letterSpacing: 2.0,
          ),
          decoration: const InputDecoration(border: InputBorder.none),
          cursorColor: ColorManager.black,
          keyboardType: TextInputType.phone,
          validator: (String? value) {
            if (value!.isEmpty) {
              return viewModel.validStringIsEmpty;
            } else if (value.length < 11) {
              return viewModel.validStringIsShort;
            }
          },
          onSaved: (value) {
            viewModel.phoneNumber = value!;
          },
        ),
      ),
    );
  }

  Widget _buildContainerFlag() {
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppPadding.p12.h,
          vertical: AppPadding.p16.w,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorManager.lightGrey,
          ),
          borderRadius: BorderRadius.circular(AppSize.s6.r),
        ),
        child: AutoSizeText(
          viewModel.generateCountryFlag() + viewModel.codePhone,
          style: const TextStyle(
            fontSize: FontSize.s18,
            letterSpacing: 2.0,
          ),
        ),
      ),
    );
  }
}
