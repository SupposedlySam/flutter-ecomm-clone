import 'package:flutter/material.dart';
import 'package:ui/components/padded_horizontal_list.dart';
import 'package:ui/ui.dart';

class CollectionView extends StatelessWidget {
  const CollectionView({required this.id, super.key});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 9,
          child: CustomScrollView(
            slivers: [
              // Create a SliverAppBar that always has a bottom widget pinned to it. The app bar will always be visible but will start without the title being shown and as the title scrolls under the app bar the title will appear. There is a magnifying glass icon button at the right of the app bar and a custom back button to the left.
              SliverAppBar(
                bottom: PreferredSizePaddedHorizontalList(
                  spacing: const SizedBox(width: 8),
                  children: [
                    // Use a button with text
                    TextButton(
                      onPressed: () => print('Filter 1'),
                      child: Text(
                        'Filter 1',
                        style: context.displayMedium.white,
                      ),
                    ),
                    // repeat for 9 buttons
                    TextButton(
                      onPressed: () => print('Filter 2'),
                      child: Text(
                        'Filter 2',
                        style: context.displayMedium.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () => print('Filter 3'),
                      child: Text(
                        'Filter 3',
                        style: context.displayMedium.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () => print('Filter 4'),
                      child: Text(
                        'Filter 4',
                        style: context.displayMedium.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () => print('Filter 5'),
                      child: Text(
                        'Filter 5',
                        style: context.displayMedium.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () => print('Filter 6'),
                      child: Text(
                        'Filter 6',
                        style: context.displayMedium.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () => print('Filter 7'),
                      child: Text(
                        'Filter 7',
                        style: context.displayMedium.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () => print('Filter 8'),
                      child: Text(
                        'Filter 8',
                        style: context.displayMedium.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () => print('Filter 9'),
                      child: Text(
                        'Filter 9',
                        style: context.displayMedium.white,
                      ),
                    ),
                  ],
                ),
                pinned: true,
                title: Text('Collection $id'.toUpperCase()),
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () => print('Search'),
                  ),
                ],
              ),

              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return ListTile(
                      title: Text('Item $index'),
                    );
                  },
                  childCount: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PreferredSizePaddedHorizontalList extends PaddedHorizontalList
    implements PreferredSizeWidget {
  const PreferredSizePaddedHorizontalList({
    required super.children,
    required super.spacing,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 34,
      child: super.build(context),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kMinInteractiveDimension);
}
