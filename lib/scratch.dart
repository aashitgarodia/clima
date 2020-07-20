//import 'dart:io';
//
//void main() {
//  performTasks();
//}
//
//void performTasks()  {
//  task1();
//  task2();
//  task3();
//}
//
//void task1() {
//  String result = 'task 1 data';
//  print('Task 1 complete');
//}
////ToDo: REFERENCE 1.1
////void task2()  { //REFERENCE 1.1
////  Duration threeSecond = Duration(seconds: 3);
////  sleep(threeSecond);
////  String result = 'task 2 data';
////  print('Task 2 complete');
////}
////ToDo: REFERENCE 1.2
//void task2()  { //REFERENCE 1.2
//  Duration threeSecond = Duration(seconds: 3);
////  sleep(threeSecond);
//  Future.delayed(threeSecond, () {
//    String result = 'task 2 data';
//    print('Task 2.1 complete');
//  });
//  print('Task 2.2 complete');
//}
//
//void task3() {
//  String result = 'task 3 data';
//  print('Task 3 complete');
//}

//ToDo: REFERENCE 2.1
//import 'dart:io';
//
//void main() {
//  performTasks();
//}
//
//void performTasks()  {
//  task1();
//  String task2Result = task2();
//  task3(task2Result);
//}
//
//void task1() {
//  String result = 'task 1 data';
//  print('Task 1 complete');
//}
//
//String task2()  { //REFERENCE 1.2
//  Duration threeSecond = Duration(seconds: 3);
//  String result;
//  Future.delayed(threeSecond, () {
//    result = 'task 2 data';
//    print('Task 2 complete');
//  });
//return result;
//}
//
//void task3(String task2Result) {
//  String result = 'task 3 data';
//  print('Task 3 complete with $task2Result');
//}
//ToDo: REFERENCE 2.2
import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async{
  task1(); //will print task1
  print(task2()); //(A) will run Future.delayed (but wouldn't wait there for 3 & then go inside it) it will parallelly wait(asynchornous) for 3 seconds meanwhile it will goto the "return result" that is "Instance of 'Future<dynamic>'"
  String task2Result = await task2(); //(B) will run Future.delayed (would wait there for 3 & then go inside it), now since it's been almost 3 seconds ->(A) would go inside and run 'Task 2 complete'. Now it's been 3 seconds and (B) will run 'Task 2 complete'.
  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future task2() async{
  Duration threeSecond = Duration(seconds: 3);
  String result;
  await Future.delayed(threeSecond, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String task2Result) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2Result');
}