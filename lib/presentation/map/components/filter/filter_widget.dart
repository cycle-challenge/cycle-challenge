import 'package:flutter/material.dart';

class FilterWidget extends StatelessWidget {
  final bool _isSelected;

  final IconData? _iconData;

  final String _label;

  final void Function(bool) _onSelected;

  final bool _showCheckmark;

  const FilterWidget(
      {super.key,
        required bool isSelected,
        required IconData? iconData,
        required String label,
        required dynamic onSelected,
        bool? showCheckmark})
      : _onSelected = onSelected,
        _label = label,
        _iconData = iconData,
        _isSelected = isSelected,
        _showCheckmark = showCheckmark ?? true;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
        showCheckmark: _showCheckmark,
        checkmarkColor: Theme.of(context).colorScheme.onPrimary,
        shape: StadiumBorder(
            side: BorderSide(
                color: _isSelected
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.outlineVariant)),
        label: Text(
          _label,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: _isSelected
                  ? Theme.of(context).colorScheme.onPrimary
                  : Theme.of(context).colorScheme.onSurface),
        ),
        selectedColor: Theme.of(context).colorScheme.primary,
        avatar: !_isSelected && _iconData != null
            ? Icon(
          _iconData,
          size: 16,
        )
            : null,
        selected: _isSelected,
        onSelected: _onSelected);
  }
}
