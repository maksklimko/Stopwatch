import 'package:auto_route/auto_route.dart';
import 'package:stopwatch/core/router/router_config.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: StopwatchRoute.page,
          initial: true,
        ),
      ];
}
