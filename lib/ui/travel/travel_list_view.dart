import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';
import 'package:yeohaeng_ttukttak/states/bottom_sheet_state.dart';
import 'package:yeohaeng_ttukttak/states/travel_view_model.dart';

import '../../data/models/place_model.dart';
import '../../states/navigation_state.dart';

class TravelLIstView extends StatelessWidget {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    List<TravelModel> travels = context.watch<TravelViewModel>().travels;

    TextStyle? titleLarge = Theme.of(context)
        .textTheme
        .titleLarge
        ?.copyWith(color: Colors.white, fontSize: 20);
    TextStyle? bodyMedium = Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white);

    _controller.addListener(() {
      bool canScrollUp = _controller.offset > 0;
      context.read<BottomSheetState>().setCanViewScrollUp(canScrollUp);
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 24, bottom: 12),
            width: 25,
            height: 4,
            decoration: BoxDecoration(
              color: context.watch<BottomSheetState>().isExpanded
                  ? Theme.of(context).colorScheme.surface
                  : Theme.of(context).colorScheme.outline,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            controller: _controller,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) {
              TravelModel travel = travels[index];

              return GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  width: double.infinity,
                  height: 240,
                  constraints: const BoxConstraints(
                    maxWidth: 480
                  ),
                  child: Stack(
                    children: [
                      Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                  image: NetworkImage(travel.thumbnail.medium),
                                  fit: BoxFit.cover))),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black.withOpacity(0.1),
                                Colors.black.withOpacity(0.3),
                                Colors.black.withOpacity(0.75),
                              ]),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        padding: const EdgeInsets.all(18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    travel.name,
                                    style: titleLarge?.copyWith(
                                        fontWeight: FontWeight.w600),
                                  ),
                                  RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                        text: travel.nickname,
                                        style: bodyMedium?.copyWith(
                                            fontWeight: FontWeight.w600)),
                                    TextSpan(
                                        text:
                                            " · ${travel.ageGroup.label} · ${travel.transport.label}")
                                  ]))
                                ],
                              ),
                            ),
                            IconButton(onPressed: () {}, icon: const Icon(Icons.bookmark_outline, color: Colors.white,))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: 20),
            itemCount: travels.length,
          ),
        ),
      ],
    );
  }
}
