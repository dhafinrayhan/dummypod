import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json_view/flutter_json_view.dart';

class ResultView extends StatelessWidget {
  const ResultView(this.result, {super.key});

  final String result;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final backgroundColor = theme.colorScheme.primaryContainer;
    final textStyle = theme.textTheme.bodySmall!;

    if (!_canConverToObject(result)) {
      return Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        color: backgroundColor,
        child: Text(result, style: textStyle),
      );
    }

    return JsonView.string(
      result,
      theme: JsonViewTheme(
        backgroundColor: backgroundColor,
        defaultTextStyle: textStyle,
        viewType: JsonViewType.base,
      ),
    );
  }
}

/// The same conversion check used by [JsonView].
bool _canConverToObject(String jsonString) {
  try {
    if (json.decode(jsonString) is Map<String, dynamic>) {
      return true;
    } else if (json.decode(jsonString) is List) {
      return true;
    }
    return false;
  } catch (_) {
    return false;
  }
}
