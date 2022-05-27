import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:msnger/msnger.dart';

class ChatRoute extends HookConsumerWidget {
  const ChatRoute({
    Key? key,
    required this.chatId,
  }) : super(key: key);

  final Uuid chatId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mediaQuery = MediaQuery.of(context);
    final chatManager = ref.watch(chatManagerProvider);
    final loading =
        ref.watch(chatStateProvider.select((value) => value.loading));
    final error = ref
        .watch(chatStateProvider.select((value) => value.rooms[chatId]!.error));
    final messages = ref.watch(
        chatStateProvider.select((value) => value.rooms[chatId]!.messages));
    final scrollController = useScrollController();
    final messageController = useTextEditingController();

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        chatManager.loadMessages(chatId);
      });
      scrollController.addListener(() {
        if (!loading && scrollController.position.extentAfter < 300) {
          chatManager.loadMessages(chatId);
        }
      });
      return null;
    }, const []);

    if (error != null) {
      return const Scaffold(
        body: Center(child: Text('An error occurred')),
      );
    }

    void handleSend() {
      final maxAnimationDistance = mediaQuery.size.height * 2;
      if (scrollController.position.extentBefore > maxAnimationDistance) {
        scrollController.jumpTo(maxAnimationDistance);
      }
      scrollController.animateTo(
        0.0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOutCubic,
      );
      chatManager.sendMessage(
        message: messageController.text.trim(),
        chatId: chatId,
      );
      messageController.clear();
    }

    return StreamBuilder<void>(
      stream: chatManager.onMessage,
      builder: (context, snapshot) => Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                reverse: true,
                controller: scrollController,
                itemCount: messages.length + (loading ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index == messages.length) {
                    return const Center(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }
                  return ListTile(
                    title: Text(messages[index].text),
                  );
                },
              ),
            ),
            SizedBox(
              height: 100,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: messageController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send_rounded),
                    onPressed: handleSend,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
