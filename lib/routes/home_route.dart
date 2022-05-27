import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:msnger/msnger.dart';

class HomeRoute extends HookConsumerWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authManager = ref.watch(authManagerProvider);
    final chatManager = ref.watch(chatManagerProvider);
    final chatsLoading =
        ref.watch(chatStateProvider.select((value) => value.loading));
    final chatsError =
        ref.watch(chatStateProvider.select((value) => value.error));
    final rooms = ref.watch(chatStateProvider.select((value) => value.rooms));
    final scrollController = useScrollController();

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        chatManager.loadRooms();
      });
      scrollController.addListener(() {
        if (!chatsLoading && scrollController.position.extentAfter < 300) {
          chatManager.loadRooms();
        }
      });
      return null;
    }, const []);

    if (chatsError != null) {
      return const Scaffold(
        body: Center(child: Text('An error occurred')),
      );
    }

    final roomsList = rooms.values.toList();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.logout),
          onPressed: () => authManager.logout(),
        ),
      ),
      body: ListView.builder(
        controller: scrollController,
        itemCount: rooms.length + (chatsLoading ? 1 : 0),
        itemBuilder: (context, index) {
          if (index == rooms.length) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: CircularProgressIndicator(),
              ),
            );
          }
          final room = roomsList[index].room;
          return ListTile(
            title: Text(room.name),
            onTap: () {
              context.push('/chat/${room.id}');
            },
          );
        },
      ),
    );
  }
}
