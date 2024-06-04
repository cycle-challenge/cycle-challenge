
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';

part 'profile_state.freezed.dart';


@freezed
class ProfileState with _$ProfileState {
  factory ProfileState({
    @Default([]) List<Travel> myTravels
  }) = _ProfileState;

}