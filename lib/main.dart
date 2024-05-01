import 'package:flutter/material.dart';
import 'package:flutter_ecomm_clone/routes/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:l10n/l10n.dart';
import 'package:ui/ui.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late final GoRouter router;

  @override
  void initState() {
    super.initState();
    router = buildAppRouter(
      homeBuilder: ({
        required BuildContext context,
        required CollectionNavigator navigateToCollection,
      }) {
        return WelcomeView(onCollectionSelected: navigateToCollection);
      },
      collectionBuilder: ({required context, required collectionId}) =>
          CollectionView(
        id: collectionId,
        // onItemSelected: (itemId) => context.push(
        //   itemPathBuilder(collectionId: collectionId, itemId: itemId),
        // ),
      ),
      itemBuilder: ({
        required context,
        required collectionId,
        required itemId,
      }) {
        //     ItemView(
        //   collectionId: collectionId,
        //   itemId: itemId,
        // ),

        return const SizedBox();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.lightTheme,
      localizationsDelegates: Localization.delegates,
      supportedLocales: Localization.supportedLocales,
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'flutter_ecomm_project_restoration_id',
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
    );
  }
}
