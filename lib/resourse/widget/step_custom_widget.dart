import 'package:flutter/material.dart';
import 'package:project_structure/model/key_value_pair.dart';
import 'package:timelines/timelines.dart';

/**
 *  PROJECT_NAME:-  project_structure
 *  Project Created by AGM Khair Sabbir
 *  DATE:- 9/3/24
 */

class CustomStep extends StatelessWidget {
  List<KeyValuePair> data;
  bool alternating;
  Color connectorColor;
  Color titleColor;
  Color subTitleColor;

  CustomStep(
    this.data, {
    super.key,
    this.alternating = false,
    this.connectorColor = Colors.blue,
    this.titleColor = Colors.blue,
    this.subTitleColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
        FixedTimeline.tileBuilder(
          theme: TimelineTheme.of(context).copyWith(
            nodePosition: alternating ? 0.5 : 0.1,
            color: connectorColor,
          ),
          builder: TimelineTileBuilder.connectedFromStyle(
              contentsAlign: alternating ? ContentsAlign.alternating : ContentsAlign.basic,
              contentsBuilder: (context, index) => Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data[index].key,
                            style: TextStyle(color: titleColor),
                          ),
                          Text(
                            data[index].value,
                            style: TextStyle(fontSize: 10, color: subTitleColor),
                          )
                        ],
                      ),
                    ),
                  ),
              connectorStyleBuilder: (context, index) => (index % 2 == 0) ? ConnectorStyle.dashedLine : ConnectorStyle.solidLine,
              indicatorStyleBuilder: (context, index) => (index % 2 == 0) ? IndicatorStyle.outlined : IndicatorStyle.dot,
              itemCount: data.length),
        ),
      ]),
    );
  }
}
