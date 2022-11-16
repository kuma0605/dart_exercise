//静态成员可以通过类名直接访问（不需要实例化）
//实例化是比较消耗资源的，声明静态成员，可以提高程序性能
//静态方法不能访问非静态成员，非静态方法可以访问静态成员
//静态方法中不能使用this关键字
//不能使用this关键字，访问静态属性

class Person{
  static String name="张三";

  int age = 18;

  static  printInfo(){
    // print(this.name); //不能通过 this 关键字访问静态属性
    print(name); //通过名字访问静态属性

    //静态方法，不能访问非静态属性
    //print(age); 

    //静态方法，不能访问非静态方法
    // printUserInfo();
  }

  printUserInfo(){
    //非静态方法可以访问静态属性
    print(name);
    print(age);

    //非静态方法，可以访问静态方法
    printInfo();
  }
}
void main() {
  //静态成员可以通过类名称直接访问
  print(Person.name);
  print(Person.printInfo());

  //不能通过类名称直接访问非静态方法
  // print(Person.printUserInfo());

  var p = new Person();
  // print(p.name); //不能通过实例化对象去访问静态属性

  print(p.printUserInfo());
}