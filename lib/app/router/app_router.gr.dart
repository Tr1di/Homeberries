// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:homeberries/app/layout/root_page.dart' as _i6;
import 'package:homeberries/app/router/app_router.dart' as _i2;
import 'package:homeberries/features/catalog/domain/entities/product.dart'
    as _i9;
import 'package:homeberries/features/catalog/presentations/pages/catalog_page.dart'
    as _i1;
import 'package:homeberries/features/catalog/presentations/pages/product_page.dart'
    as _i5;
import 'package:homeberries/features/home/presentation/pages/home_page.dart'
    as _i3;
import 'package:homeberries/features/intro/presentation/pages/intro_page.dart'
    as _i4;

/// generated route for
/// [_i1.CatalogPage]
class CatalogRoute extends _i7.PageRouteInfo<void> {
  const CatalogRoute({List<_i7.PageRouteInfo>? children})
    : super(CatalogRoute.name, initialChildren: children);

  static const String name = 'CatalogRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.CatalogPage();
    },
  );
}

/// generated route for
/// [_i2.CatalogRootPage]
class CatalogRootRoute extends _i7.PageRouteInfo<void> {
  const CatalogRootRoute({List<_i7.PageRouteInfo>? children})
    : super(CatalogRootRoute.name, initialChildren: children);

  static const String name = 'CatalogRootRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.CatalogRootPage();
    },
  );
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}

/// generated route for
/// [_i2.HomeRootPage]
class HomeRootRoute extends _i7.PageRouteInfo<void> {
  const HomeRootRoute({List<_i7.PageRouteInfo>? children})
    : super(HomeRootRoute.name, initialChildren: children);

  static const String name = 'HomeRootRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeRootPage();
    },
  );
}

/// generated route for
/// [_i4.IntroPage]
class IntroRoute extends _i7.PageRouteInfo<IntroRouteArgs> {
  IntroRoute({
    _i8.Key? key,
    required void Function() onDone,
    List<_i7.PageRouteInfo>? children,
  }) : super(
         IntroRoute.name,
         args: IntroRouteArgs(key: key, onDone: onDone),
         initialChildren: children,
       );

  static const String name = 'IntroRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<IntroRouteArgs>();
      return _i4.IntroPage(key: args.key, onDone: args.onDone);
    },
  );
}

class IntroRouteArgs {
  const IntroRouteArgs({this.key, required this.onDone});

  final _i8.Key? key;

  final void Function() onDone;

  @override
  String toString() {
    return 'IntroRouteArgs{key: $key, onDone: $onDone}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! IntroRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i5.ProductPage]
class ProductRoute extends _i7.PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    _i8.Key? key,
    required _i9.Product product,
    List<_i7.PageRouteInfo>? children,
  }) : super(
         ProductRoute.name,
         args: ProductRouteArgs(key: key, product: product),
         initialChildren: children,
       );

  static const String name = 'ProductRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductRouteArgs>();
      return _i5.ProductPage(key: args.key, product: args.product);
    },
  );
}

class ProductRouteArgs {
  const ProductRouteArgs({this.key, required this.product});

  final _i8.Key? key;

  final _i9.Product product;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, product: $product}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProductRouteArgs) return false;
    return key == other.key && product == other.product;
  }

  @override
  int get hashCode => key.hashCode ^ product.hashCode;
}

/// generated route for
/// [_i6.RootPage]
class RootRoute extends _i7.PageRouteInfo<void> {
  const RootRoute({List<_i7.PageRouteInfo>? children})
    : super(RootRoute.name, initialChildren: children);

  static const String name = 'RootRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.RootPage();
    },
  );
}
