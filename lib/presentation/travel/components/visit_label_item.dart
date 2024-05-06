
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class VisitLabelItem extends StatelessWidget {

  final DateTime? date;

  const VisitLabelItem({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    final dateString = date != null? DateFormat('M월 d일 (E)', 'ko_KR')
        .format(date!) : '분류 없음';

    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: colorScheme.outlineVariant,
                  width: 1))),
      padding: const EdgeInsets.symmetric(vertical: 8),
      margin: const EdgeInsets.only(top: 12,bottom: 8),
      child: Text(dateString,
          style: textTheme.titleLarge
              ?.copyWith(fontWeight: FontWeight.w600)),
    );
  }

}