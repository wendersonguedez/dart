# Tipos

Dart é uma linguagem dita type safety ou type-safe, onde é necessário informar qual tipo de dado será armazenado em uma posição na memória, podendo ser variável, constante, parâmetro de função ou retorno de função. E uma vez definido esse tipo, a linguagem garante que somente operações permitidas podem ser executadas nesses tipos de dados. Com isso, Dart é considerada uma linguagem fortemente tipada.

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

- No erro, é possível notar que está escrito "class bool", o que indica que bool é uma classe, assim como double, int e String. No dart, não temos tipos primitivos como em linguagens como C, Java, C#. **Todos os tipos são objetos**.

## Tudo é objeto

O paradigma orientado a objetos em Dart reflete a filosofia de que "tudo é objeto". Isso significa que mesmo tipos primitivos, como números, são tratados como objetos, oferecendo métodos e propriedades associados a eles.

Veja isso:

```dart
double valorDob = 23.4;
int valorInt = valorDob.toInt();

print(valorInt);
```

- No código acima, ao declarar a variável `valorDob` como tipo `double` e inicializar a mesma com valor `23.4`, ela se torna um objeto do tipo `double`.

- Seguindo adiante, ao fazer `valorDob.toInt()`, a variável que era do tipo `double`, passa a ser do tipo `int`, pois está convertendo o valor da variável `valorDob` em um inteiro e armazenando na variável `valorInt`.

- Por fim, ambas as variáveis se tornam um objeto, tendo métodos disponíveis para serem utilizados.

# Tipos primitivos

Para usar algum valor no dart, é necessário dizer o tipo de dado aquela variável irá guardar. Ou seja, no dart, as variáveis tem tipos, onde os mais comuns são **int**, **double**, **bool**, **String**, **Lists**, **Sets** e **Maps**.

## Números

**Integer (int)**

Inteiros são números sem vírgula decimal. Alguns exemplos abaixo

```dart
int num = 2535;
int hex = 0xDEADBEEF;
```

**Double (double)**

São números com ponto flutuante (basicamente números com virgula).

```dart
double pi = 3.14;
double altura = 1.73;
double exponents = 1.42e5;
```

Também é possível declarar uma variável como um número, e caso faça isso, ela irá aceitar tantos valores inteiros como decimais.

```dart
// declarando x como um número.
num x = 10;
x += 12.25;

print(x); // irá exibir 22.25
```

Valores inteiros armazenados em variáveis definidas como `double`, são automaticamente convertidos para decimais.

```dart
double x = 2; // x é equivalente à 2.0
```

## Strings

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

## Booleans

**Boolean (bool)**

São os tipos booleanos, que é basicamente ser falso (false) ou verdadeiro (true).

```dart
bool isAdmin = true;
bool hasPermission = false;
```

No dart, não pode usar códigos como **if (nonbooleanValue)** ou **assert (nonbooleanValue)**, é necessário realizar a verificação de valores de forma explicita, como por exemplo:

- Em casos de valores não booleanos:

  ```dart
  // Verifica se uma string está vazia.
  String fullName = '';
  assert(fullName.isEmpty);

  // Verifica se um número é menor ou igual à 0.
  int score = 0;
  assert(score <= 0);

  // Verifica se a idade está vazia (é nulo).
  int age = null;
  assert(age == null);

  // Isso não é permitido, pois a expressão entre parênteses não é booleana.
  if (idade) {
    // Código inválido.
  }
  ```

- Em casos de valores booleanos:

  ```dart
  int idade = 25;

  if (idade > 18) {
    print('A pessoa é maior de idade.');
  }

  // Exemplo com chamada de método que retorna um valor booleano:
  String nome = 'João';

  if (nome.isNotEmpty) {
    print('O nome não está vazio.');
  }
  ```

## Lists

Como o próprio nome já diz, **Lists** são basicamente listas, facilmente identificadas como arrays em outras linguagens. No dart, arrays são objetos List, por isso é nomeada dessa forma.

Abaixo está um exemplo de uma lista simples em dart:

```dart
var usersName = ['wend', 'bruno', 'guilherme'];
var randomNumbers = [1, 2, 3, 43.2, 23.12];
var onlyChars = ['a', 'b', 'c'];
```

Basta colocar todos os seus valores dentro de colchetes e separar por vírgulas.

É importante saber que não é possível misturar tipos de dados diferentes dentro de uma lista. Mesmo não sendo especificado o tipo de dado que as listas acima estão armazenando, o dart foi capaz de identificar de acordo com o conteúdo delas.

A lista `randomNumbers` está armazenando números inteiros e números decimais, e isso só é possível porque o dart converte todos os números inteiros para números decimais. Isso acontece porque é possível com que `1` seja escrito com decimal, ficando `1.0`. Vale lembrar que isso só acontece com números, caso tente com texto, irá retornar erro.

### Explicitar o tipo da lista:

```dart
List<String> usersName = ['wend', 'bruno', 'gui'];
List<double> randomNumbers = [1, 2, 3, 43.2, 23.12];
List<String> onlyChars = ['a', 'b', 'c'];
```

### Indexação baseada em zero

Assim como em outras linguagens, as listas (ou arrays, melhor dizendo) usam indexação baseada em zero, onde começam a mapear seus valores à partir do índice 0, sendo o primeiro valor da lista.

```dart
List<int> randomNumbers = [1, 2, 3];

// verificando se o tamanho da lista é igual à 3
assert(randomNumbers.length == 3);

// verificando se o índice 1 da lista é igual à 2.
assert(randomNumbers[1] == 2);

// capturando o último valor da lista e armazenando na variável
int latestValue = randomNumbers.length - 1;
```

## Sets

Sets é uma coleção de itens exclusivos, ou seja, não é possível armazenar valores iguais e a notação usa chaves `{}` ao invés de colchetes `[]`.

Abaixo está um exemplo de sets simples em dart:

```dart
var permissions = {'admin', 'user', 'employee', 'ceo'};
```

Em Sets, acontece a mesma coisa citada acima quando falei sobre Lists, onde não é possível misturar os tipos de dados dentro de um set. Caso isso aconteça, irá gerar um erro em tempo de execução. No exemplo acima, se você tentar adicionar um valor inteiro (1, 2, 84...) ao conjunto de strings, irá gerar um erro. Isso acontece porque o dart entende que `permissions` deve ser um conjunto de strings, logo, não permitirá adição de valores de outros tipos de dados. Essa restrição é uma forma de garantir consistência nos dados armazenados no conjunto.

### Explicitar o tipo do set:

```dart
// 1º forma:
var permissions = <String>{'admin', 'user', 'employee', 'ceo'};

// 2º forma:
Set<String> permissions = {'admin', 'user', 'employee', 'ceo'};
```

## Maps

Maps é bem parecido com Lists e Sets, porém seu diferencial é que ele associa chaves e valores. Tanto as chaves quantos os valores podem ser de qualquer tipo de objeto.

Abaixo está um exemplo de maps simples em dart:

```dart
var person = {
    'nome': 'wend',
    'idade': '20',
    'email': 'wenderson@gmail.com',
}

var permissions = {
    0: 'admin',
    1: 'user',
    2: 'employer',
}

// criando os mesmo valores acima, mas utilizando o construtor Map.
var person = Map<String, String>();
person['nome'] = 'wend';
person['idade'] = '20';
person['email'] = 'wenderson@gmail.com';

var permissions = Map<int, String>();
permissions[0] = 'admin';
permissions[1] = 'user';
permissions[2] = 'employer';
```

No código acima, é possível notar que ao utilizar o método construtor da classe Map, o 1º argumento informado é o tipo da chave e o 2º argumento informado é o tipo do valor.
