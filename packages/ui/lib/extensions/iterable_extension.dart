extension IterableExtensions<T> on Iterable<T> {
  /// Interlace the "separator" between each item.
  ///
  ///### Example 1: Strings
  /// ```
  /// final a = ['a', 'a', 'a'];
  ///
  /// a.joinWith('b'); -> ['a', 'b', 'a', 'b', 'a']
  /// ```
  ///
  /// ### Example 2: Widgets
  /// ```
  /// final widgets = <Widget>[
  ///   RegularText('item1'),
  ///   RegularText('item2'),
  ///   RegularText('item3'),
  /// ];
  ///
  /// widgets.joinWith(Divider()); -> [
  ///   RegularText('item1'),
  ///   Divider(),
  ///   RegularText('item2'),
  ///   Divider(),
  ///   RegularText('item3'),
  /// ]
  /// ```
  List<T> joinWith<T>(T separator) {
    if (separator == null) return [];
    if (length <= 0) return [separator];
    if (length == 1) return List<T>.from(this);

    return List<T>.from(map((current) => [
          current,
          separator,
        ]).expand((w) => w))
      ..removeLast();
  }
}
