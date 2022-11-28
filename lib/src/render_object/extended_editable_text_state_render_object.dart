import 'package:flutter/material.dart';

abstract class ExtendedEditableTextStateRenderObject<T extends StatefulWidget>
    extends State<T> with TextSelectionDelegate {}
