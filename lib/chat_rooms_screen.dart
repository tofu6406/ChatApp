import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'chat_screen.dart';

class ChatRoomsScreen extends StatelessWidget {
  final _firestore = FirebaseFirestore.instance;

  Future<void> _createRoom(String roomName) async {
    if (roomName.isNotEmpty) {
      await _firestore.collection('chatRooms').add({'name': roomName});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chat Rooms')),
      body: StreamBuilder<QuerySnapshot>(
        stream: _firestore.collection('chatRooms').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          final rooms = snapshot.data!.docs;
          return ListView.builder(
            itemCount: rooms.length,
            itemBuilder: (context, index) {
              final room = rooms[index];
              return ListTile(
                title: Text(room['name']),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatScreen(roomId: room.id),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              final _roomNameController = TextEditingController();
              return AlertDialog(
                title: Text('New Chat Room'),
                content: TextField(
                  controller: _roomNameController,
                  decoration: InputDecoration(labelText: 'Room Name'),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      _createRoom(_roomNameController.text.trim());
                      Navigator.pop(context);
                    },
                    child: Text('Create'),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
