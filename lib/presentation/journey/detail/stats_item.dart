import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pokemon/presentation/utils/size_constants.dart';

class StatesItem extends StatelessWidget {
  final String title;
  final int progressValue;
  final Color progressColor;

  const StatesItem(
      {Key? key,
      required this.title,
      required this.progressColor,
      required this.progressValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Sizes.dimen_20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 80,
            child: Text(title)),
          Expanded(
            child: LinearPercentIndicator(
              center: Text(
                '$progressValue',
                style: const TextStyle(color: Colors.white),
              ),
              progressColor: progressColor,
              percent: (progressValue / 100).toDouble() > 1
                  ? 1
                  : (progressValue / 100),
              animation: true,
              lineHeight: Sizes.dimen_20,
              barRadius: const Radius.circular(Sizes.dimen_10),
            ),
          )
        ],
      ),
    );
  }
}
