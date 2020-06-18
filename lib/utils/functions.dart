import 'dart:io';

import 'package:ameencommon/models/user_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:mime/mime.dart';

void pushPage(BuildContext context, Widget page) {
  Navigator.of(context).push(
    MaterialPageRoute<void>(builder: (_) => page),
  );
}

void popPage(BuildContext context) {
  Navigator.of(context).pop();
}

void pushAndRemoveUntilPage(BuildContext context, Widget page) {
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => page),
      (Route<dynamic> route) => false);
}

void pushNamedAndRemoveUntilPage(BuildContext context, String name) {
  Navigator.of(context)
      .pushNamedAndRemoveUntil(name, (Route<dynamic> route) => false);
}

void showToast(BuildContext context, String message, Color bgColor) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 3,
      backgroundColor: bgColor,
      textColor: Colors.white,
      fontSize: 16.0);
}

Future<String> uploadPhoto(
    BuildContext context, String storageName, File image) async {
  StorageReference storageRef =
      FirebaseStorage.instance.ref().child(storageName);
  String formatedDate =
      DateFormat('yyyyMMddHHmmssS').format(DateTime.now().toLocal());
  String filename = '$formatedDate';
  String contentType = lookupMimeType(image.path);

  if (contentType == 'image/jpeg' || contentType == 'image/png') {
    StorageUploadTask uploadTask = storageRef.child(filename).putFile(
          image,
          new StorageMetadata(
            contentLanguage: 'en',
            contentType: contentType,
            customMetadata: <String, String>{'storageName': '$storageName'},
          ),
        );
    String url = await (await uploadTask.onComplete).ref.getDownloadURL();
    return url;
  } else {
    showToast(context, 'You should select a JPEG or PNG photo.', Colors.red);
  }
  return null;
}

Future<UserModel> getProfileOfUser(String uid, CollectionReference profileUserRef) async {
  DocumentSnapshot snapshot = await profileUserRef.document(uid).get();
  if (snapshot.data == null) {
    return Future.value(null);
  } else {
    try {
      UserModel profileUser = UserModel.fromDocSnapshot(snapshot);
      return profileUser;
    } catch (err) {
      return Future.value(null);
    }
  }
}

void createPost(CollectionReference postsRef, String userId, userPostsDoc, postId, username, postBody) {
  postsRef.document(userId).collection(userPostsDoc).document(postId)
      .setData({
    "postId": postId,
    'userId': userId,
    'username': username,
    'postBody': postBody,
    'created_at': DateTime.now(),
  });
}


Future<String> getUserLocation() async {
  Position position = await Geolocator()
      .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  List<Placemark> placemarks = await Geolocator()
      .placemarkFromCoordinates(position.latitude, position.longitude);
  Placemark placemark = placemarks[0];
  String completeAddress =
      '${placemark.subThoroughfare} ${placemark.thoroughfare}, ${placemark.subLocality} ${placemark.locality}, ${placemark.subAdministrativeArea}, ${placemark.administrativeArea} ${placemark.postalCode}, ${placemark.country}';
  print(completeAddress);
  String formattedAddress = "${placemark.locality}, ${placemark.country}";
  return formattedAddress;
}
