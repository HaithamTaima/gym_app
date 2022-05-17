import 'package:activity4/models/chat_model.dart';
import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final Chat userChat;
  const UserTile({
    required this.userChat,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(

      leading: CircleAvatar(
        radius: 28,
        backgroundImage: NetworkImage(userChat.avatar),
      ),
      title: Text(
        userChat.name,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 17,
        ),
      ),
      subtitle: Text(userChat.lastMessage,style: TextStyle(color: Colors.grey,),),
      trailing: Column(
        children: [
          Text(
            userChat.time,
            style: TextStyle(
              color: userChat.count > 0 ? Colors.green : Colors.grey,
              fontSize: 12,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          userChat.count > 0
              ? CircleAvatar(
            radius: 13,
            backgroundColor: Colors.green,
            child: Center(
              child: Text(
                userChat.count.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          )
              : const SizedBox(),
        ],
      ),
    );
  }
}