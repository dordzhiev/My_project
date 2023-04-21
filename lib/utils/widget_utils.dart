import 'package:flutter/material.dart';

List<Widget> separateWidgets(List<Widget> originalList, Widget separator) {
  List<Widget> separatedList = [];
  for (var i = 0; i < originalList.length; i++) {
    separatedList.add(originalList[i]);
    if (i < originalList.length - 1) {
      separatedList.add(separator);
    }
  }
  return separatedList;
}
