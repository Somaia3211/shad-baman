import 'package:flutter/material.dart';
import 'package:shad_baman/component/checkBoxModel.dart';
import 'package:shad_baman/constant.dart';

class BuildCheckBox extends StatelessWidget {
  CheckBoxModel checkbox;
  int index;
  List<CheckBoxModel> checkBoxes;
  final void Function(bool?) onPress;
  BuildCheckBox(this.checkbox, this.index,this.checkBoxes,this.onPress);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        unselectedWidgetColor: kDarkGreenColor,
      ),
      child: CheckboxListTile(
        contentPadding: EdgeInsets.only(left: 95,right: 60,top: 15),
        activeColor: kDarkGreenColor,
        value: checkbox.value,
        onChanged: onPress,
        title: Text(
          checkbox.title,
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        checkboxShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        dense: false,
        controlAffinity: ListTileControlAffinity.trailing,
      ),
    );

  }
}
