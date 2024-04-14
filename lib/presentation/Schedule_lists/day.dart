import 'package:flutter/material.dart';
import 'package:rayshardenov_s_devochki2/core/app_export.dart';

class DayPage extends StatelessWidget {
  const DayPage({Key? key})
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
              _buildContrast(context),
              SizedBox(height: 20.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFavorite,
                    height: 12.v,
                    width: 15.h,
                    margin: EdgeInsets.only(
                      top: 9.v,
                      bottom: 7.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.h),
                    child: Text(
                      "MONDAY",
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgFavorite,
                    height: 12.v,
                    width: 15.h,
                    margin: EdgeInsets.only(
                      left: 15.h,
                      top: 9.v,
                      bottom: 7.v,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 19.v),
              _buildRussian(context),
              Spacer(),
              
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContrast(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.fillGreen600,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgContrast,
            height: 30.v,
            width: 25.h,
            margin: EdgeInsets.only(
              top: 75.v,
              bottom: 13.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 62.v,
              right: 87.h,
            ),
            child: Text(
              "School:",
              style: CustomTextStyles.displayMediumMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRussian(BuildContext context) {
    return SizedBox(
      height: 280.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
         
         
          Padding(
            padding: EdgeInsets.only(
              top: 0.v,
              bottom: 240.v,
            ),
            child: _buildFive(
              context,
              time: "8:15",
              breakVar: "  Russian",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 80.v,
              bottom: 160.v,
            ),
            child: _buildFive(
              context,
              time: "9:45",
              breakVar: "  World History",
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 120.v),
            child: _buildFive(
              context,
              time: "10:30",
              breakVar: "Break",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 160.v,
              bottom: 80.v,
            ),
            child: _buildFive(
              context,
              time: "11:15",
              breakVar: "IT",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 200.v,
              bottom: 40.v,
            ),
            child: _buildFive(
              context,
              time: "12:00",
              breakVar: "Art",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 240.v),
            child: _buildFive(
              context,
              time: "12:45",
              breakVar: "Chemistry",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 40.v,
              bottom: 200.v,
            ),
            child: _buildFive(
              context,
              time: "9:00",
              breakVar: "  Math",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  

  /// Common widget
  Widget _buildFive(
    BuildContext context, {
    required String time,
    required String breakVar,
  }) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 33.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.outlineBlack,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Text(
              time,
              style: theme.textTheme.headlineSmall!.copyWith(
                color: appTheme.black90001,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 41.h,
              bottom: 1.v,
            ),
            child: Text(
              breakVar,
              style: theme.textTheme.headlineSmall!.copyWith(
                color: appTheme.black90001,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
