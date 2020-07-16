import 'package:ameencommon/models/user_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Chat {
  static const String TEXT = "text";
  String type;
  dynamic content;
  UserModel from, to;
  bool isSeen;
  Timestamp createdAt;

  Chat(
    this.type,
    this.content,
    this.from, this.to,
    this.isSeen,
    this.createdAt
  );
}