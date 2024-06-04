import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_review.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_event.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_view_model.dart';

class PlaceReviewCreateSheet extends StatefulWidget {
  final Place place;
  final double initialRating;

  const PlaceReviewCreateSheet(
      {super.key, required this.initialRating, required this.place});

  @override
  State<PlaceReviewCreateSheet> createState() => _PlaceReviewCreateSheetState();
}

class _PlaceReviewCreateSheetState extends State<PlaceReviewCreateSheet> {
  late double _rating;

  final TextEditingController _commentController = TextEditingController();

  bool _wantsToRevisit = true;

  @override
  void initState() {
    super.initState();
    _rating = widget.initialRating;
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    final authViewModel = context.watch<AuthViewModel>();
    final profile = authViewModel.state.member;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(title: Text(widget.place.name)),
      body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('${profile?.nickname}님, ',
                        style: textTheme.titleLarge
                            ?.copyWith(fontWeight: FontWeight.w600)),
                    Text('방문은 어떠셨나요?', style: textTheme.titleLarge),
                    const SizedBox(height: 24),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          RatingBar.builder(
                              initialRating: widget.initialRating,
                              minRating: 0.5,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              glow: false,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                              onRatingUpdate: (rating) =>
                                  setState(() => this._rating = rating)),
                          const SizedBox(height: 6),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: '$_rating', style: textTheme.bodyMedium),
                            TextSpan(
                                text: ' / 5.0  ',
                                style: textTheme.bodyMedium
                                    ?.copyWith(color: colorScheme.outline))
                          ]))
                        ]),
                    const SizedBox(height: 60),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('다시 방문하고 싶으신가요?', style: textTheme.bodyLarge),
                          Theme(
                            data: Theme.of(context).copyWith(
                                chipTheme: Theme.of(context).chipTheme.copyWith(
                                    selectedColor: colorScheme.primary,
                                    checkmarkColor: colorScheme.onPrimary,
                                    secondaryLabelStyle: textTheme.bodyMedium
                                        ?.copyWith(
                                            color: colorScheme.onPrimary))),
                            child: Wrap(spacing: 8.0, children: [
                              ChoiceChip(
                                  label: const Text('예'),
                                  selected: _wantsToRevisit,
                                  onSelected: (selected) => setState(
                                      () => _wantsToRevisit = selected)),
                              ChoiceChip(
                                  label: const Text('아니요'),
                                  selected: !_wantsToRevisit,
                                  onSelected: (selected) => setState(
                                      () => _wantsToRevisit = !selected)),
                            ]),
                          )
                        ]),
                    const SizedBox(height: 24),
                    TextField(
                        controller: _commentController,
                        textInputAction: TextInputAction.done,
                        scrollPadding: const EdgeInsets.only(bottom: 220),
                        maxLines: 8,
                        onTapOutside: (_) =>
                            FocusManager.instance.primaryFocus?.unfocus(),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: colorScheme.outlineVariant)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: colorScheme.outline)),
                            hintText:
                                '당신의 소중한 경험을 작성해 주세요.\n자세한 리뷰는 다른 사용자에게 큰 도움이 됩니다.'))
                  ]))),
      bottomNavigationBar: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FilledButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0))),
            onPressed: () => Navigator.of(context).pop((
                  rating: _rating,
                  wantsToRevisit: _wantsToRevisit,
                  comment: _commentController.text
                )),
            child: const Text('작성하기')),
      )),
    );
  }
}

void showPlaceReviewCreateSheet(BuildContext context,
    {required Place place, double initialRating = 3.0}) async {
  final viewModel = context.read<PlaceDetailViewModel>();

  final review = await showModalBottomSheet<
          ({double rating, bool wantsToRevisit, String? comment})?>(
      enableDrag: false,
      isScrollControlled: true,
      useSafeArea: true,
      context: context,
      builder: (_) =>
          PlaceReviewCreateSheet(place: place, initialRating: initialRating));

  if (review == null) return;

  viewModel.onEvent(PlaceDetailEvent.createReview(
      review.rating, review.wantsToRevisit, review.comment));
}
