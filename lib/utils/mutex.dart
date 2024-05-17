

import 'dart:async';

class AsyncMutex {
  Completer<void>? _completer;

  /// locks the mutex
  Future<void> lock() async {
    while (_completer != null) {
      await _completer!.future;
    }
    _completer = Completer<void>();
  }

  /// unlocks the mutex
  void unlock() {
    assert(_completer != null);
    final completer = _completer!;
    _completer = null;
    completer.complete();
  }

  bool get isLocked => _completer != null;
}