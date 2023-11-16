import 'dart:io';
class Person {
  String? name;
  int? age;
  String? department;
  display(){
    print("Enter 1 if you want to Perform Operations on Student \nEnter 2 if you want to Perform Operations on Teacher"
           "\nEnter 3 if you want to Perform Operations on Staff Members\nEnter 4 if you want to exit:");
  }
  void operations(){
    File file = File("file.txt");
    a:while(true){
      try {
    int? num = int.parse(stdin.readLineSync()!);
      switch(num){
      case 1: {
      print("How many people you want to enter");
      int? std = int.parse(stdin.readLineSync()!);
      for(int i = 0; i < std ; i++){
      stdout.write("Enter name of ${1+i}: ");
      name = stdin.readLineSync();
      stdout.write("Enter department of ${i + 1}: ");
      department  = stdin.readLineSync();
      b:while(true){
      try {
        stdout.write("Enter age of ${i+1}: ");
        age = int.parse(stdin.readLineSync()!);
        break b;
      }catch(e){
        print("Age Should be in numbers");
        continue b;
      }
      }
      file.writeAsStringSync('$name $age $department\n', mode: FileMode.append);
      }
      break a;
      }
      case 2: {
        try{
          print(file.readAsStringSync());
        }
        catch(e){
          print("File not created Kindly create file first");
        }
        break a;
      }
      case 3: {
        try{
          file.deleteSync();
        print("File Deleted!");
        }
        catch(e){
          print("File not created Kindly create file first");
        }
        break a;
      }
      case 4: {
        break a;
      }
      default: {
        print("Please Correct Input");
        continue a;
      }
      }
    }catch(e){
      print("Kindly Enter Correct Input");
      continue a;
    }
      } 
}
}
class Student extends Person{
    String? department;
  stdOper(){
    print("Enter 1 to Add Student \nEnter 2 to Read data of student\nEnter 3 to Delete data\nEnter 4 to Exit: ");
    operations();
  }
}
class Teacher extends Person{
  techerOper(){
    print("Enter 1 to Add Teacher \nEnter 2 to Read data of Teacher\nEnter 3 to Delete data\nEnter 4 to Exit: ");
    operations();
  }
}
class Staff extends Person{
   staffOper(){
    print("Enter 1 to Add Staff Members \nEnter 2 to Read data of Staff\nEnter 3 to Delete data\nEnter 4 to Exit: ");
    operations();
   }
}
void main(){
  a:while(true){
  try{
  Person person = new Person();
  Student student = new Student();
  Teacher teacher = new Teacher();
  Staff staff = new Staff();
  person.display();
  int? num = int.parse(stdin.readLineSync()!);
  switch(num){
    case 1:{
      student.stdOper();
      continue a;
    }
    case 2: {
      teacher.techerOper();
      continue a;
    }
    case 3: {
      staff.staffOper();
      continue a;
    }
    case 4: {
      break a;
    }
    default:{
      print("Kindly Enter Correct Input");
    }  
  }
  } 
  catch(e){
    print("Kindly Enter Correct Input");
    continue a;
  }
  } 
}