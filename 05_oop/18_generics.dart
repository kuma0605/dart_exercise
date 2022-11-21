class SomeBaseClass {
  //...

}

class Foo<T extends SomeBaseClass> {
  String toString() => "Instance Of 'Foo<$T>'";
}

void main(List<String> args) {
  var someBaseClassFoo = Foo<SomeBaseClass>();
  print(someBaseClassFoo);
}
