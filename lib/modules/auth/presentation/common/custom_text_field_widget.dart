import 'package:flutter/material.dart';

import '../../../common/drag_race_constants/drag_race_constants_colors.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    required this.hintText,
    required this.textEditingController,
    Key? key,
    this.obscureText = false,
  }) : super(key: key);

  final String hintText;
  final bool obscureText;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 50,
        width: 280,
        child: TextField(
          controller: textEditingController,
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 10),
            hintText: hintText,
            hintStyle:
                const TextStyle(color: DragRaceConstantsColors.hintTextColor),
            border: const UnderlineInputBorder(),
          ),
        ),
      );
}
