import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import "package:riverpod_sample_app/repository/jokes_repository.dart";

void main() {
  runApp(
    ProviderScope(
      child: RiverpodJokesApp(),
    ),
  );
}

class RiverpodJokesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: JokesPage(),
    );
  }
}

///JokesPage
class JokesPage extends StatelessWidget {
  ///JokesPage constructor
  const JokesPage({Key? key}) : super(key: key);

  ///JokesPage [routeName]
  static const routeName = 'JokesPage';

  ///Router for JokesPage
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const JokesPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riverpod Jokes'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _JokeConsumer(),
            const SizedBox(height: 50),
            _ButtonConsumer(),
          ],
        ),
      ),
    );
  }
}

class _JokeConsumer extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(jokeProvider);

    return state.when(
      idle: () => Text(
        'Press the button to start',
        textAlign: TextAlign.center,
      ),
      loading: () => Center(
        child: CircularProgressIndicator(),
      ),
      success: (joke) => Text('${joke?.setup ?? ""}\n${joke?.delivery ?? ""}'),
      error: (error, _) => Text('Error Occured!'),
    );
  }
}

class _ButtonConsumer extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(jokeProvider);
    return ElevatedButton(
        child: Text('Press me to get a joke'),
        onPressed: () => {context.read(jokeProvider.notifier).getJoke()});
  }
}
