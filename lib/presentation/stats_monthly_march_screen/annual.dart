import 'package:flutter/cupertino.dart';
import 'package:rayshardenov_s_devochki2/core/utils/size_utils.dart';
import 'package:rayshardenov_s_devochki2/presentation/focus_break_skip_screen/focus_break_skip_screen.dart';
import 'package:rayshardenov_s_devochki2/presentation/my_lists_screen/my_lists_screen.dart';
import 'package:rayshardenov_s_devochki2/presentation/stats_monthly_march_screen/stats_monthly_march_screen.dart';
import 'package:rayshardenov_s_devochki2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:rayshardenov_s_devochki2/core/app_export.dart';

class Annual extends StatelessWidget {
  const Annual({Key? key})
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
              SizedBox(height: 50.v),
              CustomImageView(
                imagePath: ImageConstant.imgTwitter,
                height: 31.v,
                width: 30.h,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 30.h),
              ),
              SizedBox(height: 18.v),
              _buildFourteen(context),
              SizedBox(height: 34.v),
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
                    padding: EdgeInsets.only(left: 13.h),
                    child: Text(
                      "2024",
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgFavorite,
                    height: 12.v,
                    width: 15.h,
                    margin: EdgeInsets.only(
                      left: 13.h,
                      top: 9.v,
                      bottom: 7.v,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 9.v),
              _buildThirteen(context),
              Spacer(),
              _buildTwelve(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFourteen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomElevatedButton(
              height: 40.v,
              text: "Monthly",
              margin: EdgeInsets.only(right: 16.h),
              buttonStyle: CustomButtonStyles.fillBlueGray,
              buttonTextStyle: CustomTextStyles.titleLargeRobotoBlack90001,
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>const StatsMonthlyMarchScreen())
                  );
              },
            ),
          ),
          Expanded(
            child: CustomElevatedButton(
              height: 40.v,
              text: "Annual",
              margin: EdgeInsets.only(left: 16.h),
              buttonStyle: CustomButtonStyles.fillGreen,
              buttonTextStyle: CustomTextStyles.titleLargeRobotoBlack90001,
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>const Annual())
                  );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThirteen(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 285.v,
        width: 500.h,
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup114,
              height: 250.v,
              width: 220.h,
              alignment: Alignment.centerLeft,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(left: 230.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 9.h),
                      child: Row(
                        children: [
                          Container(
                            height: 8.v,
                            width: 21.h,
                            margin: EdgeInsets.only(
                              top: 6.v,
                              bottom: 4.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.green300,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              "Hours focused: 00",
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 8.v,
                          width: 21.h,
                          margin: EdgeInsets.only(
                            top: 4.v,
                            bottom: 6.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.green400,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "Task completed: 00",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.v),
                    Row(
                      children: [
                        Container(
                          height: 8.v,
                          width: 21.h,
                          margin: EdgeInsets.only(
                            top: 6.v,
                            bottom: 4.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.green700,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "Real trees: 00",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwelve(BuildContext context) {
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
          SizedBox(        
   height: 190.v,
   width: 270.h,
         child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => StatsMonthlyMarchScreen()));
                    },
                    icon: const Icon(
                      CupertinoIcons.circle_righthalf_fill,
                      
                      color: Colors.grey,
                     
                    ),
                    alignment: Alignment.bottomLeft,
                     padding: EdgeInsets.only(bottom: 49.v),
                     
                  ),
          ),
           SizedBox(        
   height: 190.v,
   width: 270.h,
         child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyListsScreen()));
                    },
                    icon: const Icon(
                      CupertinoIcons.doc,
                      
                      color: Colors.grey,
                     
                    ),
                    alignment: Alignment.bottomRight,
                     padding: EdgeInsets.only(bottom: 49.v),
                     
                  ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgTree081,
            height: 86.v,
            width: 70.h,
            alignment: Alignment.topCenter,
            onTap: () { 
                                  Navigator.push( 
                                      context, 
                                      MaterialPageRoute( 
                                          builder: (context) => FocusBreakSkipScreen())); 
                                }, 
          ),
         
        ],
      ),
    );
  }
}