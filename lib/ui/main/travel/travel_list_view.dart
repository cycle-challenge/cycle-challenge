import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';
import 'package:yeohaeng_ttukttak/states/bottom_sheet_state.dart';
import 'package:yeohaeng_ttukttak/states/place_view_model.dart';

class TravelListView extends StatelessWidget {
  final ScrollController _controller = ScrollController();

  final List<TravelModel> _travels;

  TravelListView({super.key, required travels }) : _travels = travels;


  @override
  Widget build(BuildContext context) {

    _controller.addListener(() {
      bool canScrollUp = _controller.offset > 0;
      context.read<BottomSheetState>().setCanViewScrollUp(canScrollUp);
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!context.watch<BottomSheetState>().isExpanded)
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 24, bottom: 12),
              width: 25,
              height: 4,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.outline,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
        Expanded(
          child: ListView.separated(
            controller: _controller,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 20.0),
            itemBuilder: (BuildContext context, int index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child:
                  TravelWidget(travel: _travels[index], width: double.maxFinite),
            ),
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: 20),
            itemCount: _travels.length,
          ),
        ),
      ],
    );
  }
}

class TravelWidget extends StatelessWidget {
  final TravelModel _travel;
  double _width;

  TravelWidget({super.key, required width, required travel})
      : _travel = travel,
        _width = width;

  @override
  Widget build(BuildContext context) {
    TextStyle? titleLarge = Theme.of(context)
        .textTheme
        .titleLarge
        ?.copyWith(color: Colors.white, fontSize: 20);
    TextStyle? bodyMedium =
        Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: _width,
        height: 240,
        constraints: const BoxConstraints(maxWidth: 480),
        child: Stack(
          children: [
            Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: NetworkImage(_travel.thumbnail.medium),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _travel.name,
                      style: titleLarge?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: _travel.nickname,
                                style: bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w600)),
                            TextSpan(
                                text:
                                    " · ${_travel.ageGroup.label} · ${_travel.transport.label}")
                          ])),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.bookmark_outline,
                              color: Colors.white,
                            ))
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
