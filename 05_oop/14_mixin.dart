class Father {}

// class MixinA extends Father { //用作混入的类，不能继承除了 Object 以外的其他类
// class MixinA extends Object {
class MixinA {
  String name = 'MixinA';

  // MixinA(); //用作混入的类不能拥有构造函数

  void printA() {
    print('A');
  }

  void run() {
    print('A is running');
  }
}

mixin MixinB {
  String name = 'MixinB';

  void printB() {
    print('B');
  }

  void run() {
    print('B is running');
  }
}

class Myclass with MixinA, MixinB {}

void main(List<String> args) {
  var c = new Myclass();
  c.printA();
  c.printB();

  //后引入的混入，会覆盖之前引入的混入中重复的内容
  print(c.name);
  c.run();
}
