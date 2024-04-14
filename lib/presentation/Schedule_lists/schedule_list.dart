import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rayshardenov_s_devochki2/bottom_sheets/app_view_model.dart';
import 'package:rayshardenov_s_devochki2/presentation/Schedule_lists/calendar_page.dart';
import 'package:rayshardenov_s_devochki2/presentation/Schedule_lists/day.dart';
import 'package:rayshardenov_s_devochki2/presentation/Schedule_lists/school_monday_screen.dart';
import 'package:rayshardenov_s_devochki2/presentation/my_lists_screen/all.dart';
import 'package:rayshardenov_s_devochki2/presentation/my_lists_screen/life.dart';
import 'package:rayshardenov_s_devochki2/presentation/my_lists_screen/my_lists_screen.dart';
import 'package:rayshardenov_s_devochki2/presentation/my_lists_screen/study.dart';
import 'package:rayshardenov_s_devochki2/presentation/my_lists_screen/task_page.dart';
import 'package:rayshardenov_s_devochki2/core/app_export.dart';
import 'package:rayshardenov_s_devochki2/presentation/focus_break_skip_screen/focus_break_skip_screen.dart';
import 'package:rayshardenov_s_devochki2/presentation/my_lists_screen/work.dart';
import 'package:rayshardenov_s_devochki2/presentation/stats_monthly_march_screen/stats_monthly_march_screen.dart';
import 'package:table_calendar/table_calendar.dart';

class ScheduleList extends StatelessWidget {
  const ScheduleList({Key? key})
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
              _buildScheduleList(context),
              _buildSchool(context),
              _buildDay(context),
              _buildCalendar(context),
              
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
  Widget _buildScheduleList(BuildContext context) {
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
              "Schedule Lists:",
              style: CustomTextStyles.displayMediumMedium,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgNotification,
            height: 35.v,
            width: 25.h,
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
  Widget _buildSchool(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 43.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillGreen600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          GestureDetector(
  onTap: () {   Navigator.push( 
                                      context, 
                                      MaterialPageRoute( 
                                          builder: (context) => SchoolMondayScreen()));     },
  child: Text( "School",style: theme.textTheme.displayMedium,),
          )

        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDay(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 43.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillGreen500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          GestureDetector(
  onTap: () {   Navigator.push( 
                                      context, 
                                      MaterialPageRoute( 
                                          builder: (context) => StudyPage()));     },
  child: GestureDetector(
  onTap: () {   Navigator.push( 
                                      context, 
                                      MaterialPageRoute( 
                                          builder: (context) => DayPage()));     },
  child: Text( "Day",style: theme.textTheme.displayMedium,),
          )
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 43.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillGreen40001,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6.v),
          GestureDetector(
  onTap: () {   Navigator.push( 
                                      context, 
                                      MaterialPageRoute( 
                                          builder: (context) => LifePage()));     },
  child:GestureDetector(
  onTap: () {   Navigator.push( 
                                      context, 
                                      MaterialPageRoute( 
                                          builder: (context) => TableCalendar1()));     },
  child: Text( "Calendar",style: theme.textTheme.displayMedium,),
          )
          )
        ],
      ),
    );
  }

  

  /// Section Widget
  Widget _buildSixteen(BuildContext context) {
    return SizedBox(
      height: 120.v,
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
