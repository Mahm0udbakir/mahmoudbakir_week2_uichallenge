import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mahmoudbakir_week2_uichallenge/core/routes/routes.dart';
import 'package:mahmoudbakir_week2_uichallenge/features/details/presentation/screens/details_screen.dart';
import 'package:mahmoudbakir_week2_uichallenge/features/home/presentation/screens/home_screen.dart';
import 'package:mahmoudbakir_week2_uichallenge/features/upgrade/presentation/screens/purchase_screen.dart';


/// Main router configuration for the portfolio application.
/// 
/// Defines the navigation structure and route mappings using GoRouter.
/// This router uses a shell route pattern to provide consistent
/// layout and animations across all pages.
final appRouter = GoRouter(
  initialLocation: Routes.home,
  routes: [
        GoRoute(
          path: Routes.home,
          builder: (context, state) => const HomeScreen(),
          routes: _buildSectionsRoutes(),
        ),
      ],
  errorBuilder: (context, state) => _buildErrorPage(context, state),
);

/// Builds the feature routes for the portfolio sections.
/// 
/// Returns a list of GoRoute objects for each feature page.
/// This method separates route creation logic for better maintainability.
List<GoRoute> _buildSectionsRoutes() {
  return [
  GoRoute(
      path: Routes.details,
      builder: (context, state) => const DetailsScreen(),
    ),
    GoRoute(
      path: Routes.purchase,
      builder: (context, state) => const PurchaseScreen(),
    ),
  ];
}

/// Builds an error page for handling 404 and other routing errors.
/// 
/// [context] - The build context
/// [state] - The router state containing error information
/// Returns a widget representing the error page
Widget _buildErrorPage(BuildContext context, GoRouterState state) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Page Not Found'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error_outline,
            size: 64,
            color: Colors.red,
          ),
          const SizedBox(height: 16),
          Text( 
            'Page not found: ${state.uri.path}',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => context.go(Routes.home),
            child: const Text('Go Home'),
          ),
        ],
      ),
    ),
  );
} 