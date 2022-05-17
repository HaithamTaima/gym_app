import 'package:activity4/items/user_tile.dart';
import 'package:activity4/models/chat_model.dart';
import 'package:activity4/widgets/archived.dart';
import 'package:flutter/material.dart';
class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {

          return UserTile(userChat: chatsList[index]);

      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 15,
        );
      },
      itemCount: chatsList.length,
    );
  }
}
