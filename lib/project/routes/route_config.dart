import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graddingapp/home_page.dart';
import 'package:graddingapp/pages/chat_page.dart';
import 'package:graddingapp/pages/form_page.dart';

import 'package:graddingapp/project/routes/route_const.dart';

final GlobalKey<NavigatorState> goRouterKey =
    GlobalKey<NavigatorState>(debugLabel: "root");

GoRouter goRouterConfig = GoRouter(
  initialLocation: "/",
  navigatorKey: goRouterKey,
  routes: [
    GoRoute(
      parentNavigatorKey: goRouterKey,
      name: GoPaths.homePage,
      path: GoPaths.homePage,
      builder: (context, state) {
        return const HomePage();
      },
    ),
    // GoRoute(
    //   parentNavigatorKey: goRouterKey,
    //   name: GoPaths.goTo,
    //   path: GoPaths.goTo,
    //   builder: (context, state) {
    //     final extra = state.extra as Map<String, dynamic>;
    //     final name = extra["username"];
    //     return Goto(username: name);
    //   },
    // ),
    GoRoute(
      parentNavigatorKey: goRouterKey,
      name: GoPaths.chatPage,
      path: GoPaths.chatPage,
      builder: (context, state) {
        final extra = state.extra as Map<String, dynamic>;
        final user = extra["user"];
        return ChatPage(user: user);
      },
    ),
    GoRoute(
      parentNavigatorKey: goRouterKey,
      name: GoPaths.formPage,
      path: GoPaths.formPage,
      builder: (context, state) {

        return const FormPage();
      },
    )
  ],
);
