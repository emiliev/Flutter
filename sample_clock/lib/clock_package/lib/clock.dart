import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final clockProvider = StateNotifierProvider<Clock, DateTime>((ref) => Clock());

class Clock extends StateNotifier<DateTime> {
  late final Timer _timer;

  Clock() : super(DateTime.now()) {
    _timer = Timer.periodic(Duration(seconds: 1), (_) {
      state = DateTime.now();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
