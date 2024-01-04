// class Person {
//   String? name; // Usando o tipo String? para permitir valores nulos.

//   Person(this.name);

//   void printName() {
//     if (name != null) {
//       print('name: $name');
//     } else {
//       print('name is null');
//     }
//   }
// }

// void main() {
//   var person1 = Person('Alice');
//   person1.printName(); // Saída: Name: Alice.

//   var person2 = Person('');
//   person2.printName(); // Saída: Name is null
// }

// class Person {
//   String? name;

//   Person(this.name);

//   void printName() {
//     print('Name: $name');
//   }
// }

// void main() {
//   var person1 =
//       Person('Alice'); // Exemplo 1: Criando uma pessoa com nome não nulo.
//   person1.printName(); // Saída esperada: Name: Alice

//   var person2 = Person(null); // Exemplo 2: Criando uma pessoa com nome nulo.
//   person2.printName(); // Erro potencial: Null dereference error
// }

// void main() {
//   final name = 'wend'; // sem definir um tipo
//   final String nickName = 'wendersonguedez'; // definindo um tipo.

//   name = 'wend guedes'; // Erro, pois name não pode ter seu valor alterado.
// }

// void main() {
//   final List<String> names = ["Ricarth", "Lima"];
//   const List<String> constNames = ["Ricarth", "Lima"];

//   print("antes da alteração: $names");
//   names[0] = "Kako"; // Funciona!
//   print("depois da alteração: $names");

//   // print("antes da alteração: $constNames");
//   // constNames[0] = 'wend';
//   // print("depois da alteração: $constNames");

//   //constNames[0] = "Kako"; // Erro em tempo de execução!
// }
