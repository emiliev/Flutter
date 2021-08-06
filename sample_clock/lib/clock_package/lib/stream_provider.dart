import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final futureProvider = FutureProvider<int>((ref) {
  return Future.value(36);
});

final streamProvider = StreamProvider<int>((ref) {
  return Stream.fromIterable([36, 72]);
});

class MyHomePage3 extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final streamAsyncValue = watch(streamProvider);
    // final futureAsyncValue = watch(futureProvider);
    return Scaffold(
      body: Center(
        child: streamAsyncValue.when(
          data: (data) => Text("data"),
          loading: () => Text("loading"),
          error: (error, st) => Text("error"),
        ),
      ),
    );
  }
}
