import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_app/app_colors.dart';
import 'package:todo_app/custom_snack_bar.dart';
import 'package:todo_app/model/my_user.dart';
import 'package:todo_app/model/task.dart';

class FirebaseUtils{
  ///func to use the collection and call it before update, delete,...
  static CollectionReference<Task> getTasksCollection(String uId){
    return getUsersCollection().doc(uId).collection(Task.collectionName).
    withConverter<Task>(
        fromFirestore: (snapShot, options) => Task.FromFireStore(snapShot.data()!),
        toFirestore: (task, options) => task.toFireStore()
    );
  }
  ///func to add task
  static Future<void> addTaskToFireStore(Task task, String uId){
    var taskCollection = getTasksCollection(uId);   //collection
    DocumentReference<Task> taskDocumentRef = taskCollection.doc();  //create document
    task.id = taskDocumentRef.id;      //auto id
    return taskDocumentRef.set(task);
  }

  ///func to delete task
  static Future<void> deleteTaskFromFireStore(Task task, String uId){
    return getTasksCollection(uId).doc(task.id).delete();
  }

  ///func to edit task
  static Future<void> updateTaskInFireStore(Task task, String uId) {
    var taskCollection = getTasksCollection(uId);   //collection

    return taskCollection.doc(task.id).update({
      'isDone': true,
      //isDone ?? task.isDone,
    });
  }

  ///func to get user collection
  static CollectionReference<MyUser> getUsersCollection(){
    return FirebaseFirestore.instance.collection(MyUser.collectionName).
    withConverter<MyUser>(
        fromFirestore: ((snapshot, options) => MyUser.fromFireStore(snapshot.data())),
        toFirestore: (myUser, options) => myUser.toFireStore()
    );
  }

  ///func to add user
  static Future<void> addUserToFireStore(MyUser myUser){
    return getUsersCollection().doc(myUser.id).set(myUser);
  }

  ///func to read user
  static Future<MyUser?> readUserFromFireStore(String uId) async{
    var querySnapShot = await getUsersCollection().doc(uId).get();
    return querySnapShot.data();

  }
}