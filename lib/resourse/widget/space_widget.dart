import 'package:flutter/material.dart';
import 'package:project_structure/resourse/style/size_manager.dart';

class Space extends StatelessWidget {
  final double? times;

  const Space({Key? key, this.times}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double space = times != null ? times! * SizeManager.SPACE : SizeManager.SPACE;

    return SizedBox(height: space);
  }
}
