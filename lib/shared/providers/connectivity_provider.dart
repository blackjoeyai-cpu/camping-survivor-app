import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final connectivityStatusProvider = Provider<ConnectivityStatus>((ref) {
  return ConnectivityStatus.connected;
});

enum ConnectivityStatus {
  connected,
  disconnected,
}

class ConnectivityWidget extends ConsumerWidget {
  final Widget child;

  const ConnectivityWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = ref.watch(connectivityStatusProvider);

    return Stack(
      children: [
        child,
        if (status == ConnectivityStatus.disconnected)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.orange,
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: const Text(
                'Offline Mode',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
