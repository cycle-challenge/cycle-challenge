import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/states/bottom_sheet_state.dart';
import 'package:yeohaeng_ttukttak/states/navigation_state.dart';


class MapSearchBar extends StatelessWidget {
  const MapSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isSheetShown = getIsSheetShown(context);
    bool isExpanded = context.watch<BottomSheetState>().isExpanded;

    return Container(
      // width: MediaQuery.of(context).size.width * 0.8,
      constraints: const BoxConstraints(maxWidth: 360),
      child: TextFormField(
        style: Theme.of(context).textTheme.bodyLarge,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.menu),
          suffixIcon: const Icon(Icons.search_rounded),
          contentPadding: const EdgeInsets.symmetric(vertical: 16),
          hintText: "장소를 검색하세요",
          hintStyle: Theme.of(context).textTheme.bodyLarge,
          filled: true,
          fillColor: Theme.of(context).colorScheme.surface,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: (isSheetShown && isExpanded)
                ? BorderSide(
                    color: Theme.of(context).colorScheme.secondary, width: 1.0)
                : BorderSide.none,
          ),
        ),
        onChanged: (value) {},
      ),
    );
  }
}
