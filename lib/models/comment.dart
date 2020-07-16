import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'dart:convert';

CommentModel commentFromJson(String str) => CommentModel.fromJson(json.decode(str));
String commentToJson(CommentModel data) => json.encode(data.toJson());

class CommentModel {
  String commentId, commentBody;
  DateTime createdAt;
  String authorName, authorPhoto, authorId;

  CommentModel({
    this.commentId,
    this.commentBody,
    this.createdAt,
    this.authorName,
    this.authorId,
    this.authorPhoto,
  });


  String get postTimeFormatted =>
      DateFormat.yMMMd('ar').add_jm().format(createdAt);

  factory CommentModel.fromJson(Map<String, dynamic> item) {
    return CommentModel(
      commentId: item['_id'],
      commentBody: item['comment_body'],
      authorName: item['authorName'],
      authorId: item['authorId'],
      createdAt: DateTime.parse(item['createdAt']),

    );
  }

  factory CommentModel.fromDocument(DocumentSnapshot doc) {
    return CommentModel(
      authorName: doc['username'],
      authorId: doc['userId'],
      commentBody: doc['comment'],
      createdAt: doc['created_at'],
      authorPhoto: doc['authorPhoto'],
    );
  }

  Map<String, dynamic> toJson() => {
    "_id": commentId,
    "comment_body": commentBody,
    "authorName": authorName,
    "createdAt": createdAt,
    "authorId": authorId
  };
}
