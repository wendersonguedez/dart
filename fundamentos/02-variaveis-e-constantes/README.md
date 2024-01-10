# Váriaveis

Abaixo está um exemplo de como criar uma variável:

```dart
var name = 'wend';

// apenas criando, logo, não inicializando com nenhum valor. Com isso, ela será inicializada como NULL.
var lastName;
```

A variável `name` não armazena diretamente o valor 'wend', mas sim uma referência a um objeto do tipo String, e isso acontece porque o Dart irá tipar essa variável de acordo com seu valor, nesse caso, uma string.

O código acima é equivalente à:

```dart
String name = 'wend';
```

Por padrão, quando não é explicitado se algo é `var` ou `const`, ele será sempre uma variável.

## Null safety

Null safety é uma forma de evitar erros ocasionados pelo acesso à uma variável definida como nula, e esse erro é chamado de `null dereference error` ou `erro de desreferência nula`. Esse erro ocorre quando você acessa uma propriedade ou chama um método em uma expressão que foi avaliada como nula.

Em termos mais simples, o Null Safety visa fornecer uma maneira mais robusta de lidar com valores nulos, reduzindo a probabilidade de erros relacionados a referências nulas, tornando o código mais seguro e previsível.

Abaixo está um exemplo de como utilizar o Null Safety:

```dart
class Person {
    String? name; // Usando o tipo String? para permitir valores nulos.

    Person(this.name);

    void printName() {
        if (name != null) {
            print('Name: $name');
        } else {
            print('name is null');
        }
    }
}

void main() {
    var person1 = Person('Alice');
    person1.printName(); // Saída: Name: Alice.

    var person2 = Person(null);
    person2.printName();  // Saída: Name is null
}
```

No código acima:

- A classe Person possui um atributo name do tipo String?, indicando que esse atributo pode ser nulo;
- O construtor da classe Person aceita um parâmetro name e o atribui ao atributo name da instância.
- O método printName verifica se name é nulo antes de tentar imprimir. Isso evita o null dereference error.

Com isso, ao criar uma instância de `Person` e informar um nome, a impressão do nome é bem-sucedida. No entanto, ao criar uma instância com um nome nulo, o método `printName` lida com isso de forma segura, evitando erros relacionados a referências nulas.

Abaixo criei um exemplo que induz ao erro de `null dereference error`:

```dart
class Person {
  String? name;

  Person(this.name);

  void printName() {
    print('Name: $name');
  }
}

void main() {
  var person1 = Person('Alice'); // Exemplo 1: Criando uma pessoa com nome não nulo.
  person1.printName();  // Saída: Name: Alice

  var person2 = Person(null); // Exemplo 2: Criando uma pessoa com nome nulo.
  person2.printName();  // Saída: Name: null. Erro potencial: Null dereference error
}
```

# Constantes

Caso você deseje que uma variável não seja alterada durante a execução do programa, é possível utilizar constantes, que são definidas ao utilizar as palavras `final` ou `const`.

Abaixo está um exemplo de como criar e definir uma constante `const`:

```dart
void main() {
  const String lastName = 'guedes';
  lastName = 'viana';

  print(lastName); // Erro: a constante lastName não pode ter seu valor alterado.

  const int age;
  print(age); // Error: The const variable 'age' must be initialized.
}
```

- As `const` **DEVEM** ser inicializadas com algum valor, caso contrário, dará um erro de compilação.

Abaixo está um exemplo de como criar e definir uma constante `final`:

```dart
void main() {
  final name = 'wend'; // sem definir um tipo.

  final String lastName = 'guedes'; // definindo um tipo.

  name = 'wend guedes'; // Error: Can't assign to the final variable 'name'.

  final int age;
  print(age); // Error: Final variable 'age' must be assigned before it can be used.

  final String otherFinalName;
  otherFinalName = 'wenderson';
}
```

- `final` também não permite ter seu valor alterado.

- Ao definir uma constante `final` e não atribuir um valor no momento da definição, retorna um erro diferente, mas não obriga a inicialização com algum valor, apenas diz que a variável precisa ter algum valor atribuído para poder ser utilizada.

- É possível atribuir um valor para uma constante `final` após sua definição.

## Const x Final

Por baixo dos panos, variáveis `const` são implicitamente variáveis `final`, pois o propósito é o mesmo: não permitir alterações após a inicialização do código. Suas diferenças são:

- `final` permite definir uma variável sem atribuir um valor no momento da definição;

- `const` precisa necessáriamente ter seu valor definido no momento da sua criação;

- `final` permite que sua ESTRUTURA seja modificada, enquanto uma `const` não permite isso. Segue um exemplo abaixo:

  ```dart
  void main() {
    final List<String> finalNames = ["wend", "eve"];
    const List<String> constNames = ["bruno", "pedro"];

    print("antes da alteração: $finalNames"); // antes da alteração: [wend, eve]
    names[0] = "wenderson"; // Funciona!
    print("depois da alteração: $finalNames"); // depois da alteração: [wenderson, eve]

    print("antes da alteração: $constNames");
    constNames[0] = 'wend';
    print("depois da alteração: $constNames"); // erro
  }
  ```

  O erro acima ocorre porque uma variável declarada como `const`, não podem ser modificadas após sua criação, nem mesmo sua estrutura, em tempo de execução.

  Ao declarar uma variável como `const`, o Dart a reconhece como uma lista constante em tempo de compilação, logo, seus elementos e tamanhos são definidos durante a compilação. Tentar modificá-la em tempo de execução resultará em um erro.

  Se é necessário utilizar um lista que pode ser modificada, é indicado usar `final` em vez de `const`, por mais que o `final` permita que a lista seja definida apenas uma vez, os elementos podem ser modificados, como no exemplo acima.

  `constNames` é uma lista constante em tempo de compilação e, portanto, não pode ser modificada durante a execução.

  Outro exemplo sobre **tempo de compilação (const)** x **tempo de execução (final)**:

  ```dart
  int multiplicar(int valor1, int valor2) {
    return valor1 * valor2;
  }

  void main() {
    final int firstValue = multiplicar(2, 2);
    print(firstValue); // 4

    const secondValue = multiplicar(2, 2); // Erro: A função multiplicar() não é constante, logo, não é reconhecida pela variável constante secondeValue.
  }
  ```

  O erro ocorre porque a função `multiplicar()` é reconhecida apenas no momento em que o programa é executado. Variáveis definidas como `const` não conseguem identificar essa função, apenas variáveis definidas como `final`, por ser uma constante que tem seu valor definido no mesmo momento em que a função é reconhecida, no mommento da execução do código.