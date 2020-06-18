import 'package:ameencommon/models/comment.dart';
import 'package:ameencommon/models/reaction_model.dart';
import 'package:intl/intl.dart';

// Model of Post
// ignore: slash_for_doc_comments
/**
* {
    "_id": {},
    "reactions": {
        "ameen": [],
        "recommended": [],
        "forbidden": []
    },
    "createdAt": { Date.now() },
    *
    "authorId": {  "$oid"  },

    "body": String,
    "authorName": String,
    "comments": [
        {
            "_id": {},
            "comment_body": String,
            "authorId": {},
            "authorName": String,
            "createdAt": { Date.now() }
        }
    ]
}
* */
class PostData {
  String postId;
  String body;
  String authorName;
  String authorId;
  String authorPhoto;
  DateTime postTime;
  List<CommentModel> comments;
  List<AmeenReaction> ameenReaction;
  List<RecommendReaction> recommendReaction;
  List<ForbiddenReaction> forbiddenReaction;

  PostData({
    this.postId,
    this.body,
    this.authorName,
    this.authorPhoto,
    this.postTime,
    this.authorId,
    this.comments,
    this.ameenReaction,
    this.recommendReaction,
    this.forbiddenReaction,
  });

  String get postTimeFormatted =>
      DateFormat.yMMMd('ar').add_jm().format(postTime);
//  String get postTimeFormatted => DateFormat.yMd().format(postTime);

  factory PostData.fromJson(Map<String, dynamic> item) {
    return PostData(
      postId: item['_id'],
      body: item['body'],
      authorName: item['authorName'],
      authorId: item['authorId'],
      postTime: DateTime.parse(item['createdAt']),
      comments: (item['comments'] as List).map((i) => CommentModel.fromJson(i)).toList(),
      ameenReaction:     (item['ameenReaction']     as List).map((i) => AmeenReaction.fromJson(i)).toList(),
      recommendReaction: (item['recommendReaction'] as List).map((i) => RecommendReaction.fromJson(i)).toList(),
      forbiddenReaction: (item['forbiddenReaction'] as List).map((i) => ForbiddenReaction.fromJson(i)).toList(),

    );
  }
}
