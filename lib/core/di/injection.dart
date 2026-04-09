import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../constants/app_constants.dart';
import '../data/models/app_settings.dart';
import '../network/network_info.dart';

final isarProvider = Provider<Isar>((ref) {
  throw UnimplementedError('Isar must be initialized before use');
});

final connectivityProvider = Provider<Connectivity>((ref) {
  return Connectivity();
});

final networkInfoProvider = Provider<NetworkInfo>((ref) {
  return NetworkInfoImpl(connectivity: ref.watch(connectivityProvider));
});

final isConnectedProvider = StreamProvider<bool>((ref) {
  final networkInfo = ref.watch(networkInfoProvider);
  return networkInfo.onConnectivityChanged;
});

Future<Isar> initializeIsar() async {
  final dir = await getApplicationDocumentsDirectory();
  return Isar.open(
    [AppSettingsSchema],
    directory: dir.path,
    name: AppConstants.isarDbName,
  );
}
