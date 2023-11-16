import 'dart:io';
import "dart:convert";
class Person {
  String? name;
  int? age;


  display(){
    print("Enter 1 if you want to Perform Operations on Student \nEnter 2 if you want to Perform Operations on Teacher"
           "\nEnter 3 if you want to Perform Operations on Staff Members\nEnter 4 if you want to exit:");
  }
}

class Student extends Person{
    String? department;

  display() {
   print("Enter 1 to Add Student \nEnter 2 to Read data of student\nEnter 3 to Delete data\nEnter 4 to Exit: ");
  }
}
class Teacher extends Person{
  String? subject;
  @override
  display() {
    print("Enter 1 to Add Teacher \nEnter 2 to Read data of Teacher\nEnter 3 to Delete data\nEnter 4 to Exit: ");
  }
}

class Staff extends Person {
  String? department;
  @override
  display() {
    print("Enter 1 to Add Staff \nEnter 2 to Read data of Staff Members\nEnter 3 to Delete data\nEnter 4 to Exit: ");
  }
}


void main(){
  try {
  a:while(true){
    Person person = new Person();
    person.display();
    int? num = int.parse(stdin.readLineSync()!);

    switch(num){
    case 1:{
      File file = File('Student.txt');
      Student student = new Student();
      b:while(true){
      try{
      student.display();
      int? num = int.parse(stdin.readLineSync()!);
      switch(num){
      case 1: {
      print("How many students you want to enter");
      int? std = int.parse(stdin.readLineSync()!);
      for(int i = 0; i < std ; i++){
      stdout.write("Enter name of student ${1+i}: ");
      student.name = stdin.readLineSync();
      stdout.write("Enter department of student ${i + 1}: ");
      student.department  = stdin.readLineSync();
      b:while(true){
      try {
        stdout.write("Enter age of a student ${i+1}: ");
        student.age = int.parse(stdin.readLineSync()!);
        break b;
      }catch(e){
        print("Age Should be in numbers");
        continue b;
      }

      }
      file.writeAsStringSync('${student.name} ${student.age} ${student.department}\n', mode: FileMode.append);
      }
      continue b;
      }
      case 2: {
        try{
          print(file.readAsStringSync());
        }
        catch(e){
          print("File not created Kindly create file first");
        }
        continue b;
      }
      case 3: {
        try{
          file.deleteSync();
        print("File Deleted!");
        }
        catch(e){
          print("File not created Kindly create file first");
        }
        continue b;
      }
      case 4: {
        continue a;
      }
      default: {
        print("Please Correct Input");
        continue b;
      }
      } 
      }
      
      catch(e){
        print("Kindly Enter Correct Input!");
        continue b;
      }
    }
     }
    
    
      case 2: {
      File file = File('Teacher.txt');
      Teacher teacher = new Teacher();
      b: while(true){
      try{
      teacher.display();
      int? num = int.parse(stdin.readLineSync()!);
      switch(num){
      case 1: {
      print("How many Teachers you want to enter");
      int? std = int.parse(stdin.readLineSync()!);
      for(int i = 0; i < std ; i++){
      stdout.write("Enter name of teacher ${1+i}: ");
      teacher.name = stdin.readLineSync();
      stdout.write("Enter subject of teacher ${i + 1}: ");
      teacher.subject  = stdin.readLineSync();

      b:while(true){
        try{
            stdout.write("Enter age of teacher ${i+1}: ");
            teacher.age = int.parse(stdin.readLineSync()!);
            break b;
        }
        catch(e){
          print("Age should be in Number");
          continue b;
        }
      }

      file.writeAsStringSync('${teacher.name} ${teacher.age} ${teacher.subject}\n', mode: FileMode.append);
      }
      continue b;
      }
      case 2: {
        try{
          print(file.readAsStringSync());
        }
        catch(e){
          print("File not created Kindly create file first");
        }
        continue b;
      }
      case 3: {
        try{
          file.deleteSync();
        print("File Deleted!");
        }
        catch(e){
          print("File not created Kindly create file first");
        }
        continue b;
      }
      case 4: {
        continue a;
      }
      default: {
        print("Please Enter Correct Input");
        continue b;
      }
      } 
        }catch(e){
          print("Kindly Enter coreect Input!!");
          continue b;
        }
      }
      
    }
      case 3: {
      File file = File('Staff.txt');
      Staff staff = new Staff();
      b: while(true){
      try{
      staff.display();
      int? num = int.parse(stdin.readLineSync()!);
      switch(num){
      case 1: {
      print("How many Staff Members you want to enter");
      int? std = int.parse(stdin.readLineSync()!);
      for(int i = 0; i < std ; i++){
      stdout.write("Enter name of Staff member ${1+i}:");
      staff.name = stdin.readLineSync();
      stdout.write("Enter role of staff member ${i + 1}: ");
      staff.department  = stdin.readLineSync();
      b:while(true){
        try{
          stdout.write("Enter age of Staff Member ${i+1}: ");
          staff.age = int.parse(stdin.readLineSync()!);
          break b;
        }
        catch(e){
          print("Age should be in Numbers");
          continue b;
        }
      }
      file.writeAsStringSync('${staff.name} ${staff.age} ${staff.department}\n', mode: FileMode.append);
      }
      continue b;
      }
      case 2: {
        try{
          print(file.readAsStringSync());
        }
        catch(e){
          print("File not created Kindly create file first");
        }
        continue b;
      }
      case 3: {
        try{
          file.deleteSync();
        print("File Deleted!");
        }
        catch(e){
          print("File not created Kindly create file first");
        }
        continue b;
      }
      case 4: {
        continue a;
      }
      default: {
        print("Please Enter Correct Input");
        continue b;
      }
      } 
      }
      catch(e){
        print("Kindly Enter Correct Input!");
        continue b;
      }
      }
      }
      case 4: {
        break a;
    }
    default: {
      print("Please Enter correct input");
    }
  }
    }
  }
  catch(e){
    print("Kindly Enter Coreect Input!");
    main();
  }
  }