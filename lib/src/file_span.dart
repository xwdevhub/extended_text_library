import 'dart:ui' as ui show PlaceholderAlignment;

import 'package:flutter/material.dart';

import 'extended_widget_span.dart';

class FileSpan extends ExtendedWidgetSpan {

  FileSpan({
    required double fileWidth,
    required double fileHeight,
    required String fileName,
    required String fileSize,
    required String filePic,
    required String picPackageSource,
    EdgeInsets? margin,
    int start = 0,
    ui.PlaceholderAlignment alignment = ui.PlaceholderAlignment.middle,
    String? actualText,
    TextBaseline? baseline,
    GestureTapCallback? onTap,
    GestureTapUpCallback? onSecondaryTap,
    HitTestBehavior behavior = HitTestBehavior.deferToChild,
    MouseCursor cursor = SystemMouseCursors.click,
  })  : width = fileWidth + (margin == null ? 0 : margin.horizontal),
        height = fileHeight + (margin == null ? 0 : margin.vertical),
        super(
        child: MouseRegion(
          cursor: cursor,
          child: Container(
            padding: margin,
            child: GestureDetector(
              onSecondaryTapUp: onSecondaryTap,
              onTap: onTap,
              behavior: behavior,
              child: Container(
                width: fileWidth,
                height: fileHeight,
                padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  border: Border.all(
                    color: const Color(0xFFD0D0D0),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            fileName,
                            maxLines: 1,
                            style: const TextStyle(
                              color: Color(0xFF1E1E1E),
                              fontSize: 14,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 4.0,
                              bottom: 4.0,
                            ),
                            child: Text(
                              fileSize,
                              style: const TextStyle(
                                color: Color(0xFFAAAAAA),
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 15),
                    Image.asset(
                      filePic,
                      package: picPackageSource,
                      height: 40,
                      width: 40,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
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
