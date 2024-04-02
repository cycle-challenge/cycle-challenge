import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
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
                borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.outlineVariant,
                    width: 1.0)),
          ),
          onChanged: (value) {},
        ),
      ),
    );
  }
}
