import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlatformSvg {
  static Widget asset(
    String assetName, {
    num width,
    num height,

    /// Overrides width & height
    num size,
    BoxFit fit = BoxFit.contain,
    Color color,
    alignment = Alignment.center,
    String semanticsLabel,
  }) {
    if (size != null) {
      width = height = size;
    }
    if (kIsWeb) {
      return Image.network(
        'assets/assets/$assetName',
        width: width.toDouble(),
        height: height.toDouble(),
        fit: fit,
        color: color,
        alignment: alignment,
        semanticLabel: semanticsLabel,
      );
    }
    return SvgPicture.asset(
      'assets/$assetName',
      width: width.toDouble(),
      height: height.toDouble(),
      fit: fit,
      color: color,
      alignment: alignment,
      semanticsLabel: semanticsLabel,
    );
  }
}
