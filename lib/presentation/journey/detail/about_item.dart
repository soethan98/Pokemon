import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pokemon/presentation/utils/size_constants.dart';

class AboutItem extends StatelessWidget {
  final String title;
  final String value;

  const AboutItem({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Sizes.dimen_20),
      child: Row(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          const SizedBox(
            width: Sizes.dimen_32,
          ),
          Expanded(
              child: Text(
            value,
            style: Theme.of(context).textTheme.subtitle1,
          ))
        ],
      ),
    );
  }
}
