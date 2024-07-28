import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  const AppLayoutBuilderWidget(
      {super.key, required this.randomDivider, this.width = 3, this.isColor});
  final double randomDivider, width;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
            (constraints.maxWidth / randomDivider).floor(),
            (index) => SizedBox(
              width: width.w,
              height: 1.h,
              child:  DecoratedBox(
                decoration: BoxDecoration(color: isColor ==null ? Colors.white : Colors.grey.shade300),
              ),
            ),
          ),
        );
      },
    );
  }
}
