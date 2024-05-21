// import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
// import 'package:dash_chat_2/dash_chat_2.dart';
// import 'package:flutter/material.dart';
// import 'package:jobmage/components/consts.dart';
// import 'dart:ffi';
//
// class ChatBotScreen extends StatefulWidget {
//   const ChatBotScreen({super.key});
//
//   @override
//   State<ChatBotScreen> createState() => _ChatBotScreenState();
// }
//
// class _ChatBotScreenState extends State<ChatBotScreen> {
//   final _openAI = OpenAI.instance.build(
//     // token: OPEN_API_KEY,
//     baseOption: HttpSetup(receiveTimeout: const Duration(seconds: 5)),
//     enableLog: true,
//   );
//
//   final ChatUser _currentUser =
//       ChatUser(id: '1', firstName: 'Prayas', lastName: 'Jadaun');
//   final ChatUser _gptBotUser =
//       ChatUser(id: '2', firstName: 'GPT', lastName: 'Bot');
//
//   List<ChatMessage> _messages = <ChatMessage>[];
//   List<ChatUser> _typingUsers = <ChatUser>[];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('GPTBot'),
//           centerTitle: true,
//         ),
//         body: DashChat(
//           currentUser: _currentUser,
//           typingUsers: _typingUsers,
//           messageOptions: const MessageOptions(
//               currentUserContainerColor: Colors.black,
//               containerColor: Colors.green,
//               textColor: Colors.white),
//           onSend: (ChatMessage message) {
//             getChatResponse(message);
//           },
//           messages: _messages,
//         ));
//   }
//
//   Future<void> getChatResponse(ChatMessage message) async {
//     setState(() {
//       _messages.insert(0, message);
//       _typingUsers.add(_gptBotUser);
//     });
//
//     List<Map<String, dynamic>> _messagesHistory =
//         _messages.reversed.map((message) {
//       if (message.user == _currentUser) {
//         return {
//           'role': Role.user.toString(),
//           'content': message.text,
//         };
//       } else {
//         return {
//           'role': Role.assistant.toString(),
//           'content': message.text,
//         };
//       }
//     }).toList();
//
//     final request = ChatCompleteText(
//       model: GptTurbo0301ChatModel(),
//       messages: _messagesHistory,
//       maxToken: 200,
//     );
//     final response = await _openAI.onChatCompletion(request: request);
//     for (var element in response!.choices) {
//       if (element.message != null) {
//         setState(() {
//           _messages.insert(
//             0,
//             ChatMessage(
//                 user: _gptBotUser,
//                 createdAt: DateTime.now(),
//                 text: element.message!.content),
//           );
//         });
//       }
//     }
//     setState(() {
//       _typingUsers.remove(_gptBotUser);
//     });
//   }
// }
