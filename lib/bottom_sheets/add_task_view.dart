import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import 'package:rayshardenov_s_devochki2/bottom_sheets/add_task_bottom_sheet.dart';
import 'package:rayshardenov_s_devochki2/bottom_sheets/app_view_model.dart';
import 'package:rayshardenov_s_devochki2/core/app_export.dart';
import 'package:rayshardenov_s_devochki2/core/utils/image_constant.dart';
import 'package:rayshardenov_s_devochki2/widgets/custom_image_view.dart';


class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, viewModel, child) {
      return SizedBox(
        
        height: 70,
        width: 60,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: viewModel.clrLvl3,
                foregroundColor: viewModel.clrLvl1,
                
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    
                    )
                    ),
                    
            onPressed: () {
              HapticFeedback.heavyImpact();
              viewModel.bottomSheetBuilder(
                  const AddTaskBottomSheetView(), context);
            },
            child: CustomImageView(
                imagePath: ImageConstant.imgClose,
                height: 60.v,
                width: 60.h,
              ),),
      );
    });
  }
}