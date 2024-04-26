import 'package:flutter/material.dart';
import 'package:yeohaeng_ttukttak/presentation/search/search_delegate.dart';

class SearchBarWidget extends StatelessWidget {
  SearchBarWidget({
    super.key,
  });

  final List<String> list = List.generate(10, (index) => "Text $index");

  @override
  Widget build(BuildContext context) {
    final bodyLarge = Theme.of(context).textTheme.bodyLarge;

    return Center(
      child: GestureDetector(
        onTap: () {
          showSearch(context: context, delegate: Search(), useRootNavigator: true);
        },
        child: Container(
          height: 50,
          constraints: const BoxConstraints(maxWidth: 360),
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).colorScheme.surface,
              border: Border.all(
                color: Theme.of(context).colorScheme.outlineVariant,
                width: 1.0,
              )),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.search),
              const SizedBox(width: 8.0),
              Text("장소 검색",
                  style: bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.outline))
            ],
          ),
        ),
      ),
    );
  }
}
