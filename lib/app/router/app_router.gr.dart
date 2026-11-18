// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:homeberries/app/layout/root_page.dart' as _i7;
import 'package:homeberries/app/router/app_router.dart' as _i2;
import 'package:homeberries/features/cart/presentation/pages/cart_page.dart'
    as _i1;
import 'package:homeberries/features/catalog/domain/entities/product.dart'
    as _i11;
import 'package:homeberries/features/catalog/presentations/pages/catalog_page.dart'
    as _i3;
import 'package:homeberries/features/catalog/presentations/pages/product_page.dart'
    as _i6;
import 'package:homeberries/features/home/presentation/pages/home_page.dart'
    as _i4;
import 'package:homeberries/features/intro/presentation/pages/intro_page.dart'
    as _i5;
import 'package:homeberries/features/settings/presentation/pages/settings_page.dart'
    as _i8;

/// generated route for
/// [_i1.CartPage]
class CartRoute extends _i9.PageRouteInfo<void> {
  const CartRoute({List<_i9.PageRouteInfo>? children})
    : super(CartRoute.name, initialChildren: children);

  static const String name = 'CartRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i1.CartPage();
    },
  );
}

/// generated route for
/// [_i2.CartRootPage]
class CartRootRoute extends _i9.PageRouteInfo<void> {
  const CartRootRoute({List<_i9.PageRouteInfo>? children})
    : super(CartRootRoute.name, initialChildren: children);

  static const String name = 'CartRootRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i2.CartRootPage();
    },
  );
}

/// generated route for
/// [_i3.CatalogPage]
class CatalogRoute extends _i9.PageRouteInfo<CatalogRouteArgs> {
  CatalogRoute({_i10.Key? key, List<_i9.PageRouteInfo>? children})
    : super(
        CatalogRoute.name,
        args: CatalogRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'CatalogRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CatalogRouteArgs>(
        orElse: () => const CatalogRouteArgs(),
      );
      return _i3.CatalogPage(key: args.key);
    },
  );
}

class CatalogRouteArgs {
  const CatalogRouteArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'CatalogRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CatalogRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i2.CatalogRootPage]
class CatalogRootRoute extends _i9.PageRouteInfo<void> {
  const CatalogRootRoute({List<_i9.PageRouteInfo>? children})
    : super(CatalogRootRoute.name, initialChildren: children);

  static const String name = 'CatalogRootRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i2.CatalogRootPage();
    },
  );
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomePage();
    },
  );
}

/// generated route for
/// [_i2.HomeRootPage]
class HomeRootRoute extends _i9.PageRouteInfo<void> {
  const HomeRootRoute({List<_i9.PageRouteInfo>? children})
    : super(HomeRootRoute.name, initialChildren: children);

  static const String name = 'HomeRootRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeRootPage();
    },
  );
}

/// generated route for
/// [_i5.IntroPage]
class IntroRoute extends _i9.PageRouteInfo<IntroRouteArgs> {
  IntroRoute({
    _i10.Key? key,
    required void Function() onDone,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         IntroRoute.name,
         args: IntroRouteArgs(key: key, onDone: onDone),
         initialChildren: children,
       );

  static const String name = 'IntroRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<IntroRouteArgs>();
      return _i5.IntroPage(key: args.key, onDone: args.onDone);
    },
  );
}

class IntroRouteArgs {
  const IntroRouteArgs({this.key, required this.onDone});

  final _i10.Key? key;

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
/// [_i6.ProductPage]
class ProductRoute extends _i9.PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    _i10.Key? key,
    required _i11.Product product,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         ProductRoute.name,
         args: ProductRouteArgs(key: key, product: product),
         initialChildren: children,
       );

  static const String name = 'ProductRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductRouteArgs>();
      return _i6.ProductPage(key: args.key, product: args.product);
    },
  );
}

class ProductRouteArgs {
  const ProductRouteArgs({this.key, required this.product});

  final _i10.Key? key;

  final _i11.Product product;

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
/// [_i7.RootPage]
class RootRoute extends _i9.PageRouteInfo<void> {
  const RootRoute({List<_i9.PageRouteInfo>? children})
    : super(RootRoute.name, initialChildren: children);

  static const String name = 'RootRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i7.RootPage();
    },
  );
}

/// generated route for
/// [_i8.SettingsPage]
class SettingsRoute extends _i9.PageRouteInfo<void> {
  const SettingsRoute({List<_i9.PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i8.SettingsPage();
    },
  );
}

/// generated route for
/// [_i2.SettingsRootPage]
class SettingsRootRoute extends _i9.PageRouteInfo<void> {
  const SettingsRootRoute({List<_i9.PageRouteInfo>? children})
    : super(SettingsRootRoute.name, initialChildren: children);

  static const String name = 'SettingsRootRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i2.SettingsRootPage();
    },
  );
}
