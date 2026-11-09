// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:homeberries/app/layout/root_page.dart' as _i5;
import 'package:homeberries/app/router/app_router.dart' as _i2;
import 'package:homeberries/features/catalog/domain/entities/product.dart'
    as _i8;
import 'package:homeberries/features/catalog/presentations/pages/catalog_page.dart'
    as _i1;
import 'package:homeberries/features/catalog/presentations/pages/product_page.dart'
    as _i4;
import 'package:homeberries/features/home/presentation/pages/home_page.dart'
    as _i3;

/// generated route for
/// [_i1.CatalogPage]
class CatalogRoute extends _i6.PageRouteInfo<void> {
  const CatalogRoute({List<_i6.PageRouteInfo>? children})
    : super(CatalogRoute.name, initialChildren: children);

  static const String name = 'CatalogRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.CatalogPage();
    },
  );
}

/// generated route for
/// [_i2.CatalogRootPage]
class CatalogRootRoute extends _i6.PageRouteInfo<void> {
  const CatalogRootRoute({List<_i6.PageRouteInfo>? children})
    : super(CatalogRootRoute.name, initialChildren: children);

  static const String name = 'CatalogRootRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.CatalogRootPage();
    },
  );
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}

/// generated route for
/// [_i2.HomeRootPage]
class HomeRootRoute extends _i6.PageRouteInfo<void> {
  const HomeRootRoute({List<_i6.PageRouteInfo>? children})
    : super(HomeRootRoute.name, initialChildren: children);

  static const String name = 'HomeRootRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeRootPage();
    },
  );
}

/// generated route for
/// [_i4.ProductPage]
class ProductRoute extends _i6.PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    _i7.Key? key,
    required _i8.Product product,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         ProductRoute.name,
         args: ProductRouteArgs(key: key, product: product),
         initialChildren: children,
       );

  static const String name = 'ProductRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductRouteArgs>();
      return _i4.ProductPage(key: args.key, product: args.product);
    },
  );
}

class ProductRouteArgs {
  const ProductRouteArgs({this.key, required this.product});

  final _i7.Key? key;

  final _i8.Product product;

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
/// [_i5.RootPage]
class RootRoute extends _i6.PageRouteInfo<void> {
  const RootRoute({List<_i6.PageRouteInfo>? children})
    : super(RootRoute.name, initialChildren: children);

  static const String name = 'RootRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.RootPage();
    },
  );
}
