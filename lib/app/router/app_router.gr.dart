// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:homeberries/app/router/app_router.dart' as _i3;
import 'package:homeberries/features/catalog/domain/entities/product.dart'
    as _i6;
import 'package:homeberries/features/catalog/presentations/pages/catalog_page.dart'
    as _i1;
import 'package:homeberries/features/catalog/presentations/pages/product_page.dart'
    as _i2;

/// generated route for
/// [_i1.CatalogPage]
class CatalogRoute extends _i4.PageRouteInfo<void> {
  const CatalogRoute({List<_i4.PageRouteInfo>? children})
    : super(CatalogRoute.name, initialChildren: children);

  static const String name = 'CatalogRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.CatalogPage();
    },
  );
}

/// generated route for
/// [_i2.ProductPage]
class ProductRoute extends _i4.PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    _i5.Key? key,
    required _i6.Product product,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         ProductRoute.name,
         args: ProductRouteArgs(key: key, product: product),
         initialChildren: children,
       );

  static const String name = 'ProductRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductRouteArgs>();
      return _i2.ProductPage(key: args.key, product: args.product);
    },
  );
}

class ProductRouteArgs {
  const ProductRouteArgs({this.key, required this.product});

  final _i5.Key? key;

  final _i6.Product product;

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
/// [_i3.RootPage]
class RootRoute extends _i4.PageRouteInfo<void> {
  const RootRoute({List<_i4.PageRouteInfo>? children})
    : super(RootRoute.name, initialChildren: children);

  static const String name = 'RootRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.RootPage();
    },
  );
}
