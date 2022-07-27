// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agents_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AgentsViewModel on AgentsViewModelBase, Store {
  late final _$modelAtom =
      Atom(name: 'AgentsViewModelBase.model', context: context);

  @override
  List<AgentsResponseModel?> get model {
    _$modelAtom.reportRead();
    return super.model;
  }

  @override
  set model(List<AgentsResponseModel?> value) {
    _$modelAtom.reportWrite(value, super.model, () {
      super.model = value;
    });
  }

  late final _$pageStateAtom =
      Atom(name: 'AgentsViewModelBase.pageState', context: context);

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

  late final _$selectedFilterIndexAtom =
      Atom(name: 'AgentsViewModelBase.selectedFilterIndex', context: context);

  @override
  int get selectedFilterIndex {
    _$selectedFilterIndexAtom.reportRead();
    return super.selectedFilterIndex;
  }

  @override
  set selectedFilterIndex(int value) {
    _$selectedFilterIndexAtom.reportWrite(value, super.selectedFilterIndex, () {
      super.selectedFilterIndex = value;
    });
  }

  late final _$fetchAllAgentsAsyncAction =
      AsyncAction('AgentsViewModelBase.fetchAllAgents', context: context);

  @override
  Future<void> fetchAllAgents() {
    return _$fetchAllAgentsAsyncAction.run(() => super.fetchAllAgents());
  }

  late final _$AgentsViewModelBaseActionController =
      ActionController(name: 'AgentsViewModelBase', context: context);

  @override
  void filterAgents(int index) {
    final _$actionInfo = _$AgentsViewModelBaseActionController.startAction(
        name: 'AgentsViewModelBase.filterAgents');
    try {
      return super.filterAgents(index);
    } finally {
      _$AgentsViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
model: ${model},
pageState: ${pageState},
selectedFilterIndex: ${selectedFilterIndex}
    ''';
  }
}
