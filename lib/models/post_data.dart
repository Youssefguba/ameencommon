import 'package:ameencommon/models/comment.dart';
import 'package:ameencommon/models/reaction_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
  int ameenCount;
  Timestamp postTime;
  dynamic ameenReaction;
  List<CommentModel> comments;
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
    this.ameenCount,
    this.recommendReaction,
    this.forbiddenReaction,
  });


  factory PostData.fromJson(Map<String, dynamic> item) {
    return PostData(
      postId: item['_id'],
      body: item['body'],
      authorName: item['authorName'],
      authorId: item['authorId'],
      comments: (item['comments'] as List)
          .map((i) => CommentModel.fromJson(i))
          .toList(),
      ameenReaction: (item['ameenReaction'] as List)
          .map((i) => AmeenReaction.fromJson(i))
          .toList(),
      recommendReaction: (item['recommendReaction'] as List)
          .map((i) => RecommendReaction.fromJson(i))
          .toList(),
      forbiddenReaction: (item['forbiddenReaction'] as List)
          .map((i) => ForbiddenReaction.fromJson(i))
          .toList(),
    );
  }

  factory PostData.fromQuery(QuerySnapshot doc) {
    return PostData(
      postId: 'postId',
      body: 'postBody',
      authorName: 'username',
      authorId: 'userId',
      ameenReaction: 'ameen',
      postTime: Timestamp.now(),
      authorPhoto: 'profilePicture',
    );
  }

  factory PostData.fromDocument(DocumentSnapshot doc) {
    return PostData(
      body: doc['postBody'],
      authorName: doc['username'],
      authorId: doc['userId'],
      postId: doc['postId'],
      ameenReaction: doc['ameen'],
      postTime: doc['created_at'],
      authorPhoto: doc['profilePicture'],
    );
  }


  int getAmeenCount(ameen) {
    // if no likes, return 0
    if (ameenReaction == null) {
      return 0;
    }
    int count = 0;
    ameenReaction.values.forEach((val) {
      if (val == true) {
        count += 1;
      }
    });
    return count;
  }

}
