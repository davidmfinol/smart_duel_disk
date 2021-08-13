import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';
import 'package:smart_duel_disk/packages/core/core_data_manager/lib/core_data_manager_interface.dart';
import 'package:smart_duel_disk/packages/core/core_general/lib/core_general.dart';
import 'package:smart_duel_disk/packages/core/core_logger/lib/core_logger.dart';
import 'package:smart_duel_disk/packages/core/core_navigation/lib/core_navigation.dart';
import 'package:smart_duel_disk/packages/features/feature_home/lib/src/duel/mixins/duel_form_validators.dart';

@Injectable()
class DuelViewModel extends BaseViewModel {
  static const _tag = 'DuelViewModel';

  final DuelFormValidators _duelFormValidators;
  final AppRouter _router;
  final DataManager _dataManager;

  final _ipAddress = BehaviorSubject<String>();
  Stream<String> get ipAddress => _ipAddress.stream.transform(_duelFormValidators.ipAddressValidator);

  final _port = BehaviorSubject<String>();
  Stream<String> get port => _port.stream.transform(_duelFormValidators.portValidator);

  Stream<bool> get isFormValid => Rx.combineLatest2(
      _ipAddress, _port, (String ipAddress, String port) => !ipAddress.isNullOrEmpty && !port.isNullOrEmpty);

  DuelViewModel(
    Logger logger,
    this._duelFormValidators,
    this._router,
    this._dataManager,
  ) : super(logger) {
    _init();
  }

  //region Initialization

  void _init() {
    logger.verbose(_tag, '_init()');

    _initForm();
  }

  void _initForm() {
    logger.verbose(_tag, '_initForm()');

    final connectionInfo = _dataManager.getConnectionInfo();
    if (connectionInfo == null) {
      return;
    }

    if (!connectionInfo.ipAddress.isNullOrEmpty) {
      _ipAddress.add(connectionInfo.ipAddress);
    }

    if (!connectionInfo.port.isNullOrEmpty) {
      _port.add(connectionInfo.port);
    }
  }

  //endregion

  //region Form fields

  void onIpAddressChanged(String ipAddress) {
    logger.info(_tag, 'onIpAddressChanged($ipAddress)');

    _ipAddress.add(ipAddress.isNotEmpty && _duelFormValidators.isValidIpAddress(ipAddress) ? ipAddress : null);
  }

  void onIpAddressSubmitted(String ipAddress) {
    logger.info(_tag, 'onIpAddressSubmitted($ipAddress)');

    _ipAddress.add(ipAddress);
  }

  void onPortChanged(String port) {
    logger.info(_tag, 'onPortChanged($port)');

    _port.add(port.isNotEmpty && _duelFormValidators.isValidPort(port) ? port : null);
  }

  void onPortSubmitted(String port) {
    logger.info(_tag, 'onPortSubmitted($port)');

    _port.add(port);
  }

  //endregion

  //region Actions

  Future<void> onDuelRoomPressed() async {
    logger.info(_tag, 'onDuelRoomPressed()');

    await _dataManager.saveConnectionInfo(ConnectionInfo(
      ipAddress: _ipAddress.value,
      port: _port.value,
    ));

    final deck = await _router.showSelectDeckDialog();
    if (deck == null) {
      return;
    }

    await _router.showDuelRoom(deck);
  }

  //endregion

  //region Clean-up

  @override
  void dispose() {
    logger.info(_tag, 'dispose()');

    _ipAddress.close();
    _port.close();

    super.dispose();
  }

  //endregion
}
