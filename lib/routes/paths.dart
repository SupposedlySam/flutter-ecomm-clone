import 'package:go_router_paths/go_router_paths.dart';

class Paths {
  const Paths._();

  static Path get initial => Path('');
  static Path get home => Path('home');
  static HomeCollectionsPath get homeCollections => HomeCollectionsPath();
}

class HomeCollectionsPath extends Path<HomeCollectionsPath> {
  HomeCollectionsPath() : super('collection', parent: Paths.home);

  CollectionPath get collection => CollectionPath(this);
}

class CollectionPath extends Param<CollectionPath> {
  CollectionPath(HomeCollectionsPath collectionsPath)
      : super.only('cId', parent: collectionsPath);

  ItemPath get item => ItemPath(this);
}

class ItemPath extends Param<ItemPath> {
  ItemPath(CollectionPath collectionPath)
      : super.only('iId', parent: collectionPath);
}
