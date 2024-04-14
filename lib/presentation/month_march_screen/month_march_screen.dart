import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:rayshardenov_s_devochki2/core/app_export.dart';

class MonthMarchScreen extends StatelessWidget {
  MonthMarchScreen({Key? key})
      : super(
          key: key,
        );

  List<DateTime?> selectedDatesFromCalendar1 = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildContrast(context),
              SizedBox(height: 32.v),
              _buildCalendar(context),
              Spacer(),
              _buildEighteen(context),
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
              left: 58.h,
              top: 62.v,
            ),
            child: Text(
              "Calendar:",
              style: CustomTextStyles.displayMediumMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 38.h),
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 25.v,
            width: 167.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "March",
                        style: theme.textTheme.titleLarge,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "2024",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup153,
                  height: 12.v,
                  width: 167.h,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 21.v),
          SizedBox(
            height: 310.v,
            width: 337.h,
            child: CalendarDatePicker2(
              config: CalendarDatePicker2Config(
                calendarType: CalendarDatePicker2Type.single,
                firstDate: DateTime(DateTime.now().year - 5),
                lastDate: DateTime(DateTime.now().year + 5),
                firstDayOfWeek: 1,
                weekdayLabelTextStyle: TextStyle(
                  color: appTheme.black900,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
                dayTextStyle: TextStyle(
                  color: appTheme.black900,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
                disabledDayTextStyle: TextStyle(
                  color: appTheme.red500,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
                weekdayLabels: ["S", "M", "T", "W", "T", "F", "S"],
              ),
              value: selectedDatesFromCalendar1,
              onValueChanged: (dates) {},
            ),
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEighteen(BuildContext context) {
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
