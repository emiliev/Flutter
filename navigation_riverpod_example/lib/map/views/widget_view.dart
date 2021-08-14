import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:navigation_riverpod_example/top_bar.dart';

class GenericTabView extends ConsumerWidget {
  final String _title;
  final String _heroTag;
  final String _buttonTitle;
  final Color _color;
  final VoidCallback _onPressed;

  GenericTabView(this._title, this._heroTag, this._buttonTitle, this._onPressed,
      this._color);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MyTopBar(
      text: this._title,
      uniqueHeroTag: this._heroTag,
      child: Container(
        color: _color,
        child: Center(
          child: ElevatedButton(
            onPressed: () => this._onPressed(),
            child: Text(
              this._buttonTitle,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
