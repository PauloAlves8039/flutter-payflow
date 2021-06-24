import 'package:flutter/material.dart';

import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/widgets/set_label_buttons/set_label_buttons.dart';

class BottomSheetWidget extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;
  final String title;
  final String subtitle;
  const BottomSheetWidget({
    Key? key,
    required this.primaryLabel,
    required this.primaryOnPressed,
    required this.secondaryLabel,
    required this.secondaryOnPressed,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: AppColors.shape,
        child: Column(
          children: [
            Expanded(
                child: Container(
              color: Colors.black.withOpacity(0.6),
            )),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: Text.rich(
                    TextSpan(
                        text: title,
                        style: TextStyles.buttonBoldHeading,
                        children: [
                          TextSpan(
                            text: "\n$subtitle",
                            style: TextStyles.buttonHeading,
                          ),
                        ]),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  children: [
                    Divider(
                      thickness: 1,
                      color: AppColors.stroke,
                      endIndent: 0,
                    ),
                  ],
                ),
                Container(
                  height: 1,
                  color: AppColors.stroke,
                ),
                SetLabelButtons(
                    primaryLabel: primaryLabel,
                    primaryOnPressed: primaryOnPressed,
                    secondaryLabel: secondaryLabel,
                    secondaryOnPressed: secondaryOnPressed),
                SizedBox(height: 2),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
