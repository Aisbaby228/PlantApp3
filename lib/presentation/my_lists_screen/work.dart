import 'package:flutter/material.dart';
import 'package:rayshardenov_s_devochki2/core/app_export.dart';
import 'package:rayshardenov_s_devochki2/presentation/my_lists_screen/my_list2.dart';

class MyListsScreenWork extends StatelessWidget {
  const MyListsScreenWork({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildMyListsWork(context),
              
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgClose,
                height: 47.v,
                width: 40.h,
              ),
              SizedBox(height: 42.v),
              _buildSixteen(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMyListsWork(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillGreen,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              top: 71.v,
            ),
            child: Text(
              "Work:",
              style: CustomTextStyles.displayMediumMedium,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgNotification,
            height: 35.v,
            width: 30.h,
            margin: EdgeInsets.only(
              top: 79.v,
              bottom: 13.v,
            ),
          ),
        ],
      ),
    );
  }



  /// Section Widget
  Widget _buildSixteen(BuildContext context) {
    return SizedBox(
      height: 162.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 100.adaptSize,
              width: 100.adaptSize,
              margin: EdgeInsets.only(top: 12.v),
              decoration: BoxDecoration(
                color: appTheme.gray200,
                borderRadius: BorderRadius.circular(
                  50.h,
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup97Green400,
            height: 33.v,
            width: 243.h,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 49.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPlay,
            height: 86.v,
            width: 70.h,
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }
}
