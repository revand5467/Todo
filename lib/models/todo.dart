import 'package:cloud_firestore/cloud_firestore.dart';

class TodoModel {
  late String content;
  late String todoId;
  late Timestamp dateCreated;
  late bool done;

  TodoModel(this.content, this.todoId, this.dateCreated);

  TodoModel.fromDocumentSnapshot(DocumentSnapshot doc) {
    this.todoId = doc.id;
    this.name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}
