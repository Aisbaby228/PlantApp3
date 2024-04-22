import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:rayshardenov_s_devochki2/presentation/month_march_screen/month_march_screen.dart';
import 'package:rayshardenov_s_devochki2/presentation/my_lists_screen/my_lists_screen.dart';
import 'package:rayshardenov_s_devochki2/presentation/stats_monthly_march_screen/annual.dart';
import 'package:rayshardenov_s_devochki2/presentation/stats_monthly_march_screen/stats_monthly_march_screen.dart';
import 'package:rayshardenov_s_devochki2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:rayshardenov_s_devochki2/core/app_export.dart';
import 'package:slide_countdown/slide_countdown.dart';



class FocusBreakSkipScreen extends StatelessWidget {
  const FocusBreakSkipScreen({Key? key})
      : super(
          key: key,
        );
        

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            SizedBox(height: 80.v),
            CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 29.v,
              width: 95.h,
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(right: 35.h),
            ),
            SizedBox(height: 89.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 59.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFavorite,
                    height: 16.v,
                    width: 20.h,
                    margin: EdgeInsets.only(
                      top: 21.v,
                      bottom: 18.v,
                    ),
                  ),
                  SlideCountdown(
                    duration: Duration(days: 2),
                    countUp: true,
                   
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    separator: ":",
                    slideDirection: SlideDirection.up,
                    textStyle:TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgFavorite,
                    height: 16.v,
                    width: 20.h,
                    margin: EdgeInsets.only(
                      left: 19.h,
                      top: 21.v,
                      bottom: 18.v,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 37.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgArrowUp,
                  height: 8.v,
                  width: 18.h,
                  margin: EdgeInsets.only(
                    top: 13.v,
                    bottom: 7.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "associated task",
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.v),
            CustomImageView(
              imagePath: ImageConstant.imgTree081,
              height: 227.v,
              width: 194.h,
            ),
            SizedBox(height: 50.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomElevatedButton(
                  width: 100.h,
                  text: "Break",
                ),
                CustomElevatedButton(
                  width: 100.h,
                  text: "Skip",
                  onPressed: (){
                    
                  },
                  margin: EdgeInsets.only(left: 35.h),
                  buttonStyle: CustomButtonStyles.fillRed,
                ),
              ],
            ),
            Spacer(),
              _buildTwelve(context),
          ],
        ),
      ),
    );
  }
  Widget _buildTwelve(BuildContext context) {
    return SizedBox(
      height: 162.v,
      
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100.v,
              
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
                          MaterialPageRoute(builder: (context) => MyListsScreen()));
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
                          MaterialPageRoute(builder: (context) => StatsMonthlyMarchScreen()));
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

