
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmark_ui_event.freezed.dart';

@freezed
abstract class BookmarkUiEvent with _$BookmarkUiEvent {
  const factory BookmarkUiEvent.showSnackbar(String message) = BookmarkShowSnackbarEvent;
}