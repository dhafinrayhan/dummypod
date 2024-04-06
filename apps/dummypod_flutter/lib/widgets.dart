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

class DatePickerField extends StatelessWidget {
  const DatePickerField({
    super.key,
    required this.value,
    required this.onChanged,
    this.labelText,
  });

  final DateTime? value;
  final ValueChanged<DateTime?>? onChanged;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: () async {
        final result = await showDatePicker(
          context: context,
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
          initialDate: value,
        );

        if (result != null) {
          onChanged?.call(result.add(result.timeZoneOffset).toUtc());
        }
      },
      decoration: InputDecoration(
        labelText: labelText,
        hintText: value?.toIso8601String().substring(0, 10),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: const Icon(Icons.calendar_today),
        suffixIcon: value != null
            ? IconButton(
                onPressed: () => onChanged?.call(null),
                icon: const Icon(Icons.close),
              )
            : null,
      ),
      readOnly: true,
    );
  }
}

class ItemPickerField<T> extends StatelessWidget {
  const ItemPickerField({
    super.key,
    required this.value,
    required this.onChanged,
    required this.items,
    this.labelText,
  });

  final T? value;
  final ValueChanged<T?>? onChanged;
  final List<T> items;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: () async {
        final result = await showDialog<T>(
          context: context,
          builder: (_) => _ItemPickerFieldDialog<T>(
            items: items,
            selectedItem: value,
          ),
        );

        if (result != null) {
          onChanged?.call(result);
        }
      },
      decoration: InputDecoration(
        labelText: labelText,
        hintText: value?.toString(),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: value != null
            ? IconButton(
                onPressed: () => onChanged?.call(null),
                icon: const Icon(Icons.close),
              )
            : null,
      ),
      readOnly: true,
    );
  }
}

class _ItemPickerFieldDialog<T> extends StatelessWidget {
  const _ItemPickerFieldDialog({
    required this.items,
    this.selectedItem,
  });

  final List<T> items;
  final T? selectedItem;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      clipBehavior: Clip.antiAlias,
      children: [
        for (final item in items)
          ListTile(
            onTap: () => Navigator.of(context).pop(item),
            title: Text(
              item.toString(),
            ),
            trailing: item == selectedItem ? const Icon(Icons.check) : null,
          )
      ],
    );
  }
}
