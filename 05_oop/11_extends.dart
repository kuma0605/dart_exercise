
class Father{
  String name = '刘备';
  num money = 10000;

  say(){
    print('I am $name');
  }
}

class Son extends Father{
  @override
  say(){
    print('I am 刘禅');
  }

}

void main(List<String> args) {
  var f = new Father();
  print(f.name);

  var s = new Son();
  print(s.name);
  print(s.money);
  print(s.say());
}