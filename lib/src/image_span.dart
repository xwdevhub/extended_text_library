import 'dart:ui' as ui show PlaceholderAlignment;

import 'package:flutter/material.dart';

import 'extended_widget_span.dart';

class ImageSpan extends ExtendedWidgetSpan {
  ImageSpan(
    ImageProvider image, {
    Key? key,
    required double imageWidth,
    required double imageHeight,
    EdgeInsets? margin,
    int start = 0,
    ui.PlaceholderAlignment alignment = ui.PlaceholderAlignment.middle,
    String? actualText,
    TextBaseline? baseline,
    BoxFit fit = BoxFit.scaleDown,
    ImageLoadingBuilder? loadingBuilder,
    ImageFrameBuilder? frameBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    Color? color,
    BlendMode? colorBlendMode,
    AlignmentGeometry imageAlignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    FilterQuality filterQuality = FilterQuality.low,
    GestureTapCallback? onTap,
    HitTestBehavior behavior = HitTestBehavior.deferToChild,
    MouseCursor cursor = SystemMouseCursors.text,
  })  : width = imageWidth + (margin == null ? 0 : margin.horizontal),
        height = imageHeight + (margin == null ? 0 : margin.vertical),
        super(
          child: MouseRegion(
            cursor: cursor,
            child: Container(
              padding: margin,
              child: GestureDetector(
                onTap: onTap,
                behavior: behavior,
                child: Image(
                  key: key,
                  image: image,
                  width: imageWidth,
                  height: imageHeight,
                  fit: fit,
                  loadingBuilder: loadingBuilder,
                  frameBuilder: frameBuilder,
                  semanticLabel: semanticLabel,
                  excludeFromSemantics: excludeFromSemantics,
                  color: color,
                  colorBlendMode: colorBlendMode,
                  alignment: imageAlignment,
                  repeat: repeat,
                  centerSlice: centerSlice,
                  matchTextDirection: matchTextDirection,
                  gaplessPlayback: gaplessPlayback,
                  filterQuality: filterQuality,
                ),
              ),
            ),
          ),
          baseline: baseline,
          alignment: alignment,
          start: start,
          deleteAll: true,
          actualText: actualText,
        );
  final double width;
  final double height;
}
