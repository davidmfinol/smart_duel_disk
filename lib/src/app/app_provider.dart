import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_duel_disk/packages/wrappers/wrapper_assets/lib/wrapper_assets.dart';
import 'package:smart_duel_disk/src/di/di.dart';

import 'app.dart';

class SmartDuelDiskAppProvider extends StatelessWidget {
  const SmartDuelDiskAppProvider();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => di.get<AssetsProvider>()),
      ],
      child: const SmartDuelDiskApp(),
    );
  }
}
