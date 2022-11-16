import 'lib/Person.dart';
/* class Person{
  String name;

  //声明私有属性
  num _money = 100;

  Person(this.name);
} */

void main() {
  var p = new Person('张三');
  print(p.name);

  //访问私有属性
  //如果类与main函数，属于同一文件，不起作用
  //只有把类单独抽离出去，私有属性和方法才起作用
  // print(p._money);

  print(p.getMoney());

  //访问私有方法
  // print(p._wife());//报错
}