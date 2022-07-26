// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapons_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$WeaponsViewModel on _WeaponsViewModelBase, Store {
  late final _$modelAtom =
      Atom(name: '_WeaponsViewModelBase.model', context: context);

  @override
  WeaponsResponseModel get model {
    _$modelAtom.reportRead();
    return super.model;
  }

  @override
  set model(WeaponsResponseModel value) {
    _$modelAtom.reportWrite(value, super.model, () {
      super.model = value;
    });
  }

  late final _$pageStateAtom =
      Atom(name: '_WeaponsViewModelBase.pageState', context: context);

  @override
  PageStates? get pageState {
    _$pageStateAtom.reportRead();
    return super.pageState;
  }

  @override
  set pageState(PageStates? value) {
    _$pageStateAtom.reportWrite(value, super.pageState, () {
      super.pageState = value;
    });
  }

  late final _$fetchAllWeaponsAsyncAction =
      AsyncAction('_WeaponsViewModelBase.fetchAllWeapons', context: context);

  @override
  Future<void> fetchAllWeapons() {
    return _$fetchAllWeaponsAsyncAction.run(() => super.fetchAllWeapons());
  }

  @override
  String toString() {
    return '''
model: ${model},
pageState: ${pageState}
    ''';
  }
}
