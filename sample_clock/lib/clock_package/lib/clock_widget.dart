import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clock_package/clock.dart';

class ClockWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final clockState = watch(clockProvider);
    final time = "${clockState.hour}:${clockState.minute}:${clockState.second}";
    return Scaffold(
      body: Center(
        child: Text("Show me the time!\n $time",
            style: Theme.of(context).textTheme.headline4),
      ),
    );
  }
}
