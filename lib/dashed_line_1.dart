import 'package:flutter/material.dart';

/// 破線
class DashedLine1 extends StatelessWidget {
  const DashedLine1({
    Key? key,
    this.dashedWidth = 5,
    this.dashedHeight = 5,
    this.color = Colors.black,
  }) : super(key: key);

  /// 破線単体の幅
  final double dashedWidth;

  /// 破線の高さ
  final double dashedHeight;

  /// 破線の色
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // 破線単体の数
        // 表示する領域の最大幅 / （破線の幅 * 2）
        // 破線同士の間隔は破線の幅と同じ幅となる
        final dashedCount = (constraints.maxWidth / (2 * dashedWidth)).floor();
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(dashedCount, (_) {
            return Container(
              width: dashedWidth,
              height: dashedHeight,
              color: color,
            );
          }),
        );
      },
    );
  }
}
