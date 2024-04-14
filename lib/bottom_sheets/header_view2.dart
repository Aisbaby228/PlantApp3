import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import 'package:rayshardenov_s_devochki2/bottom_sheets/app_view_model.dart';
import 'package:rayshardenov_s_devochki2/bottom_sheets/delete_bottom.dart';
import 'package:rayshardenov_s_devochki2/bottom_sheets/settings_bottom.dart';



class HeaderView2 extends StatelessWidget {
  const HeaderView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, viewModel, child) {
        return Row(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Column(children: [
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: FittedBox(
                          fit: BoxFit.fitHeight,
                          child: Text(" Study,",
                              style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w400,
                                  color: viewModel.clrLvl4)),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: FittedBox(
                          fit: BoxFit.fitHeight,
                          child: Text(viewModel.username,
                              style: TextStyle(
                                  fontSize: 42,
                                  fontWeight: FontWeight.bold,
                                  color: viewModel.clrLvl4)),
                        ),
                      ),
                    )
                  ]),
                )),
            // Trash Icon
            Expanded(
                flex: 1,
                child: InkWell(
                    onTap: () {
                      HapticFeedback.mediumImpact();
                      viewModel.bottomSheetBuilder(
                          DeleteBottomSheetView(), context);
                    },
                    child: Icon(Icons.delete,
                        color: viewModel.clrLvl3, size: 40))),
            // Settings Icon
            Expanded(
                flex: 1,
                child: InkWell(
                    onTap: () {
                      HapticFeedback.mediumImpact();
                      viewModel.bottomSheetBuilder(
                          SettingsBottomSheetView(), context);
                    },
                    child: Icon(Icons.settings,
                        color: viewModel.clrLvl3, size: 40))),
          ],
        );
      },
    );
  }
}