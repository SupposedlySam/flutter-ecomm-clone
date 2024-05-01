import 'package:flutter/material.dart';

class CollectionView extends StatelessWidget {
  const CollectionView({required this.id, super.key});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Text('Collection View $id'),
        ),
      ),
    );
  }
}
