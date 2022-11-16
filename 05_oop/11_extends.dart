class Father{
  String name = '刘备';
  num money = 10000;
}

class Son extends Father{

}

void main(List<String> args) {
  var f = new Father();
  print(f.name);

  var s = new Son();
  print(s.name);
}