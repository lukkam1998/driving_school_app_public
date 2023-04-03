import 'package:cloud_firestore/cloud_firestore.dart';

Timestamp timeStampToJson(Timestamp timestamp) {
  return timestamp;
}

Timestamp timeStampFromJson(Map<String, dynamic> json) {
  return json['timestamp'] as Timestamp;
}

Timestamp timestampFromTimestamp(Timestamp timestamp) {
  return timestamp;
}
