import 'package:flutter/material.dart';
import 'package:flutter_ecomm_clone/routes/paths.dart';
import 'package:go_router/go_router.dart';

typedef CollectionBuilder = Widget Function({
  required BuildContext context,
  required String collectionId,
});

typedef ItemBuilder = Widget Function({
  required BuildContext context,
  required String collectionId,
  required String itemId,
});

typedef HomeBuilder = Widget Function({
  required BuildContext context,
  required CollectionNavigator navigateToCollection,
});

typedef CollectionNavigator = void Function(String collectionId);

typedef ItemPathBuilder = String Function({
  required String collectionId,
  required String itemId,
});

GoRouter buildAppRouter({
  required HomeBuilder homeBuilder,
  required CollectionBuilder collectionBuilder,
  required ItemBuilder itemBuilder,
}) {
  /// Builds the path for the collection
  String collectionPathBuilder({required String collectionId}) =>
      Paths.homeCollections.collection.define(collectionId).path;

  /// Builds the path for the item in a collection
  String itemPathBuilder({
    required String collectionId,
    required String itemId,
  }) =>
      Paths.homeCollections.collection
          .define(collectionId)
          .item
          .define(itemId)
          .path;

  return GoRouter(
    routes: [
      GoRoute(
        path: Paths.initial.goRoute,
        redirect: (_, __) => Paths.home.path,
      ),
      GoRoute(
        path: Paths.home.goRoute,
        builder: (context, __) => homeBuilder(
          context: context,
          navigateToCollection: (collectionId) => context.push(
            collectionPathBuilder(collectionId: collectionId),
          ),
        ),
        routes: [
          GoRoute(
            path: Paths.homeCollections.goRoute, // home/collection
            builder: (context, __) => const SizedBox(),
            routes: [
              GoRoute(
                path: Paths.homeCollections.collection.goRoute, // ':cId'
                builder: (context, state) {
                  if (state.pathParameters.containsKey(
                    Paths.homeCollections.collection.id,
                  )) {
                    return collectionBuilder(
                      context: context,
                      collectionId: state
                          .pathParameters[Paths.homeCollections.collection.id]!,
                    );
                  }

                  return const SizedBox();
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
