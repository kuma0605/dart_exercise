class SomeBaseClass {
  // ...
}

class Foo<T extends SomeBaseClass>{
  String toString()=> "Instance of 'Foo<$T>'";
}

//子类
class Extender extends SomeBaseClass{

}

class AnotherClass{
  //...
}

void main(List<String> args) {
  var SomeBaseClassFoo = Foo<SomeBaseClass>();
  print(SomeBaseClassFoo);

  // 类型不对，报错
  /* var f = Foo<AnotherClass>(); 
  print(f); */

  var extendFoo = Foo<Extender>();
  print(extendFoo);

  var foo = Foo();
  print(foo);
}