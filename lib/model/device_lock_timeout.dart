// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:archethic_mobile_wallet/localization.dart';
import 'package:archethic_mobile_wallet/model/setting_item.dart';

enum LockTimeoutOption { ZERO, ONE, FIVE, FIFTEEN, THIRTY, SIXTY }

/// Represent auto-lock delay when requiring auth to open
class LockTimeoutSetting extends SettingSelectionItem {
  LockTimeoutSetting(this.setting);

  LockTimeoutOption setting;

  @override
  String getDisplayName(BuildContext context) {
    switch (setting) {
      case LockTimeoutOption.ZERO:
        return AppLocalization.of(context)!.instantly;
      case LockTimeoutOption.ONE:
        return AppLocalization.of(context)!.xMinute.replaceAll('%1', '1');
      case LockTimeoutOption.FIVE:
        return AppLocalization.of(context)!.xMinutes.replaceAll('%1', '5');
      case LockTimeoutOption.FIFTEEN:
        return AppLocalization.of(context)!.xMinutes.replaceAll('%1', '15');
      case LockTimeoutOption.THIRTY:
        return AppLocalization.of(context)!.xMinutes.replaceAll('%1', '30');
      case LockTimeoutOption.SIXTY:
        return AppLocalization.of(context)!.xMinutes.replaceAll('%1', '60');
      default:
        return AppLocalization.of(context)!.xMinute.replaceAll('%1', '1');
    }
  }

  Duration getDuration() {
    switch (setting) {
      case LockTimeoutOption.ZERO:
        return const Duration(seconds: 3);
      case LockTimeoutOption.ONE:
        return const Duration(minutes: 1);
      case LockTimeoutOption.FIVE:
        return const Duration(minutes: 5);
      case LockTimeoutOption.FIFTEEN:
        return const Duration(minutes: 15);
      case LockTimeoutOption.THIRTY:
        return const Duration(minutes: 30);
      case LockTimeoutOption.SIXTY:
        return const Duration(minutes: 1);
      default:
        return const Duration(minutes: 1);
    }
  }

  // For saving to shared prefs
  int getIndex() {
    return setting.index;
  }
}
