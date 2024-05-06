import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/travel_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/travel_view_model.dart';

class VisitModifyListItem extends StatelessWidget {
  final Visit visit;
  final int index;

  const VisitModifyListItem({super.key, required this.visit, required this.index});

  @override
  Widget build(BuildContext context) {
    
    String? thumbnailUrl = visit.place.images.firstOrNull?.medium;
    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return ReorderableDelayedDragStartListener(
      index: index,
      child: Dismissible(
        direction: DismissDirection.endToStart,
        background: Container(
            color: colorScheme.errorContainer,
            padding: const EdgeInsets.only(right: 16.0),
            child: const Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.delete_forever_outlined))),
        key: Key(visit.place.id.toString()),
        onDismissed: (_) {
          final viewModel = context.read<TravelViewModel>();
          viewModel.onEvent(TravelEvent.deleteVisit(index + 1));
        },
        child: ListTile(
          shape: Border(
            bottom: BorderSide(color: colorScheme.outlineVariant),
          ),
          title: Text(visit.place.name),
          contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
          subtitle: Text(visit.place.type.label),
          titleTextStyle:
              textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
          subtitleTextStyle: textTheme.bodyMedium,
          leading: SizedBox(
            width: 48,
            height: 48,
            child: ClipRRect(
                child: thumbnailUrl != null
                    ? Image.network(thumbnailUrl, fit: BoxFit.cover)
                    : Image.asset('assets/image/default.png', fit: BoxFit.cover)),
          ),
          trailing: ReorderableDragStartListener(
              index: index,
              child: const Padding(
                padding: EdgeInsets.fromLTRB(32, 12, 0, 12),
                child: Icon(Icons.drag_handle),
              )),
        ),
      ),
    );
  }
}
