# Estruturas Condicionais

O Dart, como qualquer outra linguagem de programação, também oferece suporte às instruções usuais de fluxo de controle. Esta afirmação ajuda a redirecionar o fluxo com base na veracidade de uma condição.

## if

```dart
bool isAdmin = true;

if (isAdmin) {
    print("seja bem vindo, adm!");
}
```

Se o usuário é admin, irá entrar no bloco if.

## if e else

```dart
bool isAdmin = true;

if (isAdmin) {
    print("é admin");
} else {
    print("não é admin");
}
```

Caso usuário não seja admin, irá cair no bloco else.

## else if

```dart
bool isAdmin = false;
bool isUser = true;

if (isAdmin) {
    print("é admin");
} else if (isUser){
    print("é usuário comum");
} else {
    print("nem um e nem outro tururu :(");
}
```

Caso o usuário não seja admin, mas seja usuário comum, irá cair no bloco else if. É possível que tenha vários else if.

## switch

```dart
bool typeUser = "employee";

switch (typeUser) {
    case "admin":
        print("é admin");
        break();
    case "user":
        print("usuário comum");
        break();
    case "employee";
        print("é funcionário");
        break();
    default:
        print("usuário desconhecido");
}
```

Verifica as possibilidades de valores que a variável `typeUser` possa armazenar, caso encontre, executa o bloco `case` do valor encontrado, caso não encontre, irá executar o bloco `default`.

## Operador ternário
