// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CheckStore on CheckStoreBase, Store {
  late final _$_selectedAtom =
      Atom(name: 'CheckStoreBase._selected', context: context);

  @override
  select get _selected {
    _$_selectedAtom.reportRead();
    return super._selected;
  }

  @override
  set _selected(select value) {
    _$_selectedAtom.reportWrite(value, super._selected, () {
      super._selected = value;
    });
  }

  late final _$CheckStoreBaseActionController =
      ActionController(name: 'CheckStoreBase', context: context);

  @override
  void changeselectMethod(select value) {
    final _$actionInfo = _$CheckStoreBaseActionController.startAction(
        name: 'CheckStoreBase.changeselectMethod');
    try {
      return super.changeselectMethod(value);
    } finally {
      _$CheckStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
