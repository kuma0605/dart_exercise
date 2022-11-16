import 'Father.dart';

class Son extends Father {
  String name = "刘禅";

  // 通过super继承父类的普通构造函数
  Son(String job) : super(job);

  // 继承命名构造函数
  // Son(String job) : super.origin(job);

  // 继承命名构造函数
  Son.origin(String job) : super.origin(job);

  @override
  say() {
    super.say();
    print('I am $name, my father is ${super.name}, his job is ${super.job}');
  }
}
