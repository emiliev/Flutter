import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:navigation_riverpod_example/home/state/home_state.dart';
import 'package:navigation_riverpod_example/home/views/home_details_view_model.dart';

class BookDetailView extends ConsumerWidget {
  final int _bookId;

  BookDetailView(this._bookId);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final widget = ref.watch(homeDetailsProvider(this._bookId)).when(
        initial: () => Center(child: CircularProgressIndicator()),
        loading: () => Center(child: CircularProgressIndicator()),
        success: (selectedBook) => Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(selectedBook.name,
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(fontWeight: FontWeight.bold)),
                    SizedBox(height: 15.0),
                    Text('Author: ${selectedBook.author}'),
                    Text('Pages: ${selectedBook.pages}'),
                    ElevatedButton(
                      onPressed: () {
                        ref
                            .read(homeStateProvider.notifier)
                            .setPurpleFlag(true);
                      },
                      child: Text('Go to purple page',
                          style: TextStyle(fontSize: 20)),
                    ),
                  ]),
            ),
        error: () => Text('Error while loading books occurred.'));
    return Scaffold(
      appBar: AppBar(title: Text('Book Detail View')),
      body: widget,
    );
  }
}
