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

```dart
Error: The operator '+' isn't defined for the class 'bool'.
Try correcting the operator to an existing operator, or defining a '+' operator.
    print(valorLogico + valorDecimal);
                      ^
```

Essa mensagem de erro nos diz algumas coisas, mas a mais importante:

- Não existe uma operação de adição para o tipo bool. Não faz sentido somar `bool` com `double`.

Outra informação importante:

- No erro, é possível notar que está escrito "class bool", o que indica que bool é uma classe, assim como double, int e String. No dart, não temos tipos primitivos como em linguagens como C, Java, C#. Todos os tipos são objetos.