import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:msnger/msnger.dart';

class HomeRoute extends HookConsumerWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authManager = ref.watch(authManagerProvider);
    final apiManager = ref.watch(apiManagerProvider);
    final roomsFuture = useFuture(apiManager.listRooms(null));
    final roomsResponse = roomsFuture.data;
    if (roomsResponse == null) {
      return const Scaffold();
    }
    final rooms = roomsResponse.rooms;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.logout),
          onPressed: () => authManager.logout(),
        ),
      ),
      body: ListView.builder(
        itemCount: rooms.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(rooms[index].name),
          onTap: () {},
        ),
      ),
    );
  }
}
