import 'package:flutter/material.dart';

/// 破線
class DashedLine2 extends StatelessWidget {
  const DashedLine2({
    Key? key,
    this.dashedWidth = 10,
    this.dashedHeight = 5,
    this.dashedSpace = 5,
    this.color = Colors.black,
  }) : super(key: key);

  /// 破線単体の幅
  final double dashedWidth;

  /// 破線の高さ
  final double dashedHeight;

  /// 破線の間隔
  final double dashedSpace;

  /// 破線の色
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: dashedHeight,
      child: CustomPaint(
        painter: _DashedLinePainter(
          dashedWidth: dashedWidth,
          dashedHeight: dashedHeight,
          dashedSpace: dashedSpace,
          color: color,
        ),
      ),
    );
  }
}

class _DashedLinePainter extends CustomPainter {
  const _DashedLinePainter({
    required this.dashedWidth,
    required this.dashedHeight,
    required this.dashedSpace,
    required this.color,
  });

  /// 破線単体の幅
  final double dashedWidth;

  /// 破線の高さ
  final double dashedHeight;

  /// 破線の間隔
  final double dashedSpace;

  /// 破線の色
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    var dashedStartX = 0.0;
    final paint = Paint()
      ..color = color
      ..strokeWidth = dashedHeight;
    while (dashedStartX < size.width) {
      // 始点
      final startOffset = Offset(dashedStartX, 0);
      // 終点
      final endOffset = Offset(dashedStartX + dashedWidth, 0);
      // 始点から終点にかけて描画
      canvas.drawLine(startOffset, endOffset, paint);
      // 始点のX座標を更新
      dashedStartX = dashedStartX + dashedWidth + dashedSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
