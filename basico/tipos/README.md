## Tipos

Dart é uma linguagem dita type safety ou type-safe, onde é necessário informar qual tipo de dado será armazenado em uma posição na memória, podendo ser variável, constante, parâmetro de função ou retorno de função. E uma vez definido esse tipo, a linguagem garante que somente operações permitidas podem ser executadas nesses tipos de dados.

Vamos a um exemplo:

- Dada uma variável do tipo bool (true ou false), não será possível somar 10 a essa variável.

```dart
bool valorLogico = true;
double valorDecimal = 10.1;

print(valorLogico + valorDecimal);
```

- Mensagem de erro retornada:

```
Error: The operator '+' isn't defined for the class 'bool'.
Try correcting the operator to an existing operator, or defining a '+' operator.
    print(valorLogico + valorDecimal);
                      ^
```

Essa mensagem de erro nos diz algumas coisas, mas a mais importante:

- Não existe uma operação de adição para o tipo bool. Não faz sentido somar `bool` com `double`.

Outra informação importante:

- No erro, é possível notar que está escrito "class bool", o que indica que bool é uma classe, assim como double, int e String. No dart, não temos tipos primitivos como em linguagens como C, Java, C#. Todos os tipos são objetos.

### Tudo é objeto

O paradigma orientado a objetos em Dart reflete a filosofia de que "tudo é objeto". Isso significa que mesmo tipos primitivos, como números, são tratados como objetos, oferecendo métodos e propriedades associados a eles.

Veja isso:

```dart
double valorDob = 23.4;
int valorInt = valorDob.toInt();

print(valorInt);
```

No código acima, estamos acessando o método `toInt()` do objeto do tipo Double, representado pela variável valorDob, onde seu valor (23.4) está sendo convertido para um inteiro e sendo armazenado na variável valorInt.

### Integer (int)

São números inteiros, como 1 2 100 234

```dart
int num = 2535;
```

### Double (double)

São números com ponto flutuante (basicamente números com virgula).

```dart
double pi = 3.14;
double altura = 1.73;
```

### Boolean (bool)

São os tipos booleanos, que é basicamente ser falso (false) ou verdadeiro (true).

```dart
bool isAdmin = true;
bool hasPermission = false;
```

### String (String)

São sequências de caracteres, um texto ou uma frase. Deve ser declarada entre asplas duplas `""` ou aspas simples `''`.

```dart
String firstName = 'wend';
```

Podemos realizar a junção de uma string com a outra, basta usar o `+`

```dart
String firstName = 'wend';
String lastName = ' guedes';

String fullName = firstName + lastName;

print(fullName);
```

Podemos também juntar uma string com os outros tipos de dado, usando `$nomeDaVariavel` dentro da string. E caso seja mais de uma variável, é necessário usar `${num1+num2}`, onde nesse caso, irá somar os dois números.

```dart
int day = 25;
int year = 2023;
int month = 12;
int num1 = 19;
int num2 = 10;

String name = 'wend';

String phrase = 'meu nome é $name e escrevi isso dia $day/$month/$year';

String otherPhrase = 'o resultado da soma de $num1 e $num2 é: ${num1 + num2}';

print(phrase);
print(otherPhrase);
```
