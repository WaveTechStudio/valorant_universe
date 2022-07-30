// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapons_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$WeaponsViewModel on WeaponsViewModelBase, Store {
  late final _$modelAtom =
      Atom(name: 'WeaponsViewModelBase.model', context: context);

  @override
  List<WeaponsResponseModel?> get model {
    _$modelAtom.reportRead();
    return super.model;
  }

  @override
  set model(List<WeaponsResponseModel?> value) {
    _$modelAtom.reportWrite(value, super.model, () {
      super.model = value;
    });
  }

  late final _$pageStateAtom =
      Atom(name: 'WeaponsViewModelBase.pageState', context: context);

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
      AsyncAction('WeaponsViewModelBase.fetchAllWeapons', context: context);

  @override
  Future<void> fetchAllWeapons(String locale) {
    return _$fetchAllWeaponsAsyncAction
        .run(() => super.fetchAllWeapons(locale));
  }

  @override
  String toString() {
    return '''
model: ${model},
pageState: ${pageState}
    ''';
  }
}
