// 扩展内置类
extension StringExtension on String {
  //将字符串形式的数字，转成数字
  parseInt() {
    return int.parse(this);
  }
}

//扩展自定义类
class Person {
  say() {
    print('Say something');
    return 1;
  }
}

extension StudentPerson on Person {
  study() {
    print('Study hard');
  }
}

void main(List<String> args) {
  String number = '20';
  print(number.parseInt());

  var p = new Person();
  print(p.say());

  print(p.study());
}
