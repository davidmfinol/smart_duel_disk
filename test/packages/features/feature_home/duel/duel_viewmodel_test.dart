import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:smart_duel_disk/packages/core/core_data_manager/lib/core_data_manager_interface.dart';
import 'package:smart_duel_disk/packages/core/core_logger/lib/core_logger.dart';
import 'package:smart_duel_disk/packages/core/core_navigation/lib/core_navigation.dart';
import 'package:smart_duel_disk/packages/features/feature_home/lib/src/duel/duel_viewmodel.dart';
import 'package:smart_duel_disk/packages/features/feature_home/lib/src/duel/mixins/duel_form_validators.dart';

import '../../../../testing/empty_mocks.dart';

void main() {
  DuelViewModel _viewModel;

  DuelFormValidators _duelFormValidators;
  AppRouter _router;
  DataManager _dataManager;
  Logger _logger;

  const _ipAddress = '192.168.0.106';
  const _port = '8080';
  const _connectionInfo = ConnectionInfo(
    ipAddress: _ipAddress,
    port: _port,
  );

  setUp(() {
    _duelFormValidators = MockDuelFormValidators();
    _router = MockAppRouter();
    _dataManager = MockDataManager();
    _logger = MockLogger();

    when(_dataManager.getConnectionInfo()).thenReturn(_connectionInfo);

    when(_duelFormValidators.ipAddressValidator)
        .thenReturn(StreamTransformer<String, String>.fromHandlers(handleData: (input, sink) => sink.add(input)));

    when(_duelFormValidators.portValidator)
        .thenReturn(StreamTransformer<String, String>.fromHandlers(handleData: (input, sink) => sink.add(input)));

    _viewModel = DuelViewModel(
      _duelFormValidators,
      _router,
      _dataManager,
      _logger,
    );
  });

  group('When the viewmodel is initialized', () {
    test('then the connection info is fetched', () {
      _viewModel.init();

      verify(_dataManager.getConnectionInfo()).called(1);
    });

    group('and there is connection info', () {
      test('then the ip address is emitted', () {
        when(_dataManager.getConnectionInfo()).thenReturn(_connectionInfo);

        final observable = _viewModel.ipAddress;

        scheduleMicrotask(() {
          _viewModel.init();
        });

        expect(observable, emits(_ipAddress));
      });

      test('then the port is emitted', () {
        final observable = _viewModel.port;

        scheduleMicrotask(() {
          _viewModel.init();
        });

        expect(observable, emits(_port));
      });
    });
  });

  group('When onEnterOnlineDuelRoomPressed is called', () {
    test('then the online duel room will be used', () async {
      await _viewModel.onEnterOnlineDuelRoomPressed();

      verify(_dataManager.saveUseOnlineDuelRoom(value: true)).called(1);
    });

    test('then the select deck dialog is shown', () async {
      await _viewModel.onEnterOnlineDuelRoomPressed();

      verify(_router.showSelectDeckDialog()).called(1);
    });

    group('and the selected deck is null', () {
      test('then the duel room screen is not opened', () async {
        when(_router.showSelectDeckDialog()).thenAnswer((_) => Future.value());

        await _viewModel.onEnterOnlineDuelRoomPressed();

        verifyNever(_router.showDuelRoom(any));
      });
    });

    group('and the selected deck is not null', () {
      test('then the duel room screen is opened with the selected deck', () async {
        const deck = PreBuiltDeck.kaiba;
        when(_router.showSelectDeckDialog()).thenAnswer((_) => Future.value(deck));

        await _viewModel.onEnterOnlineDuelRoomPressed();

        verify(_router.showDuelRoom(deck)).called(1);
      });
    });
  });

  group('When onEnterLocalDuelRoomPressed is called', () {
    test('then the connection info is saved', () async {
      _viewModel.init();

      await _viewModel.onEnterLocalDuelRoomPressed();

      verify(_dataManager.saveConnectionInfo(_connectionInfo)).called(1);
    });

    test('then the local duel room will be used', () async {
      await _viewModel.onEnterLocalDuelRoomPressed();

      verify(_dataManager.saveUseOnlineDuelRoom(value: false)).called(1);
    });

    test('then the select deck dialog is shown', () async {
      await _viewModel.onEnterLocalDuelRoomPressed();

      verify(_router.showSelectDeckDialog()).called(1);
    });

    group('and the selected deck is null', () {
      test('then the duel room screen is not opened', () async {
        when(_router.showSelectDeckDialog()).thenAnswer((_) => Future.value());

        await _viewModel.onEnterLocalDuelRoomPressed();

        verifyNever(_router.showDuelRoom(any));
      });
    });

    group('and the selected deck is not null', () {
      test('then the duel room screen is opened with the selected deck', () async {
        const deck = PreBuiltDeck.kaiba;
        when(_router.showSelectDeckDialog()).thenAnswer((_) => Future.value(deck));

        await _viewModel.onEnterLocalDuelRoomPressed();

        verify(_router.showDuelRoom(deck)).called(1);
      });
    });
  });
}
