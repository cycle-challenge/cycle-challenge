import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/main.dart';
import 'package:yeohaeng_ttukttak/presentation/profile/profile_event.dart';
import 'package:yeohaeng_ttukttak/presentation/profile/profile_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/travel_page.dart';

class PlaceTravelPreviewItem extends StatelessWidget {
  final Travel travel;

  const PlaceTravelPreviewItem({super.key, required this.travel});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final viewModel = context.watch<ProfileViewModel>();

    final colorTheme = Theme.of(context).colorTheme;

    return SizedBox(
      width: 220,
      child: GestureDetector(
        onTap: () async {
            await Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => TravelPage(travel: travel)));
            viewModel.onEvent(const ProfileEvent.init());
          },
        child: Stack(children: [
              Positioned.fill(
                  child: Image.network(
                      travel.thumbnail != null ? travel.thumbnail!.medium : '',
                      errorBuilder: (_, __, ___) => Image.asset(
                          'assets/image/default.png',
                          fit: BoxFit.cover),
                      fit: BoxFit.cover)),
              Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.1),
                        Colors.black.withOpacity(0.3),
                        Colors.black.withOpacity(0.75)
                      ]))),
              Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding: const EdgeInsets.all(18),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: travel.nickname,
                                  style: textTheme.bodyMedium?.copyWith(
                                      color: Colors.white,
                                  fontWeight: FontWeight.w600
                                  ))
                            ])),
                        Text(
                          travel.name,
                          style: textTheme.bodyLarge
                              ?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )
                      ]))
            ]),
      ),
    );
  }
}
