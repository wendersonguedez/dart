# O que é o Dart?

<div align="center">
  <h1 align="center"><img src="./assets/dart-logo.png" alt="Imagem da linguagem" width="300"></h1>
</div>

Dart é uma linguagem de programação fortemente tipada, que foi inicialmente criada pela Google, em 2011, com o intuito de substituir o JavaScript para desenvolvimento de scripts em páginas web.
É uma linguagem que pode ser considerada multi-paradigma, embora apresente fortes estruturas típicas de linguagens orientadas a objetos.

Com o passar dos anos, a linguagem ganhou destaque como a linguagem de programação principal para o desenvolvimento de aplicações usando o Flutter, um framework também criado pela Google, onde é amplamente utilizadoF na construção de aplicações mobile nativas.

# Principais características

1. Sintaxe limpa e simples:

   ```dart
   void main() {
       String message = "Hello World, Dart!";
       print(message);
   }
   ```

   O Dart apresenta uma sintaxe clara e intuitiva, facilitando a leitura e a escrita de código, contribuindo para uma curva de aprendizado suave, tornando a linguagem acessível para desenvolvedores iniciantes, quanto experientes.

2. Tipagem Opcional:

   ```dart
    void main() {
        // tipagem estática
        int numeroInteiro = 01;

        // tipagem dinâmica
        var textoDinamico = "essa variável está dinâmica".
    }
   ```

   O Dart oferece a flexibilidade de tipagem opcional, permitindo que os desenvolvedores escolham entre tipagem estática e dinâmica. Essa abordagem proporciona maior segurança em tempo de compilação, sem sacrificar a agilidade durante o desenvolvimento.

3. Ecossistema Flutter:

   ```dart
   // Exemplo de Dart usando o Flutter para criar um aplicativo
   import 'package:flutter/material.dart';

   void main() {
    runApp(MyApp());
   }

   class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Meu App Flutter')),
            body: Center(child: Text('Olá, Flutter!')),
        ),
        );
    }
   }
   ```

   O Dart é a linguagem oficial para o desenvolvimento com o Flutter, um framework UI de código aberto para a criação de aplicativos móveis multiplataforma. A combinação de Dart e Flutter permite a construção eficiente de aplicativos atraentes e responsivos para iOS, Android e Web.

4. Desempenho otimizado:

   O Dart foi projetado com um foco especial no desempenho. Seu sistema de compilação **just-in-time (JIT)** e **compilação à frente de tempo (AOT)** contribuem para a execução eficiente de código, proporcionando uma experiência de usuário fluida.

# Compilação: JIT e AOT

A compilação Just-In-Time (JIT) e a compilação à Frente de Tempo (AOT) são estratégias de compilação utilizadas pelo Dart para otimizar o desempenho do código em diferentes contextos.

### Mas antes de tudo, o que é compilação?

A compilação é o processo de tradução do código-fonte para linguagem de máquina, que por sua vez irá gerar um código executável. Durante esse processo, erros de sintaxe e semântica são identificados e por sua vez reportados.

1. Compilação Just-In-Time (JIT):

   - O Dart utiliza o JIT durante o desenvolvimento da aplicação, enquanto o programador está escrevendo o código-fonte.
   - Quando ocorre a compilação JIT, o código-fonte Dart é traduzido para código de máquina no momento da execução

# Sintaxe

O Dart possui uma sintaxe com estilo baseado na linguagem C, fazendo com que sua sintaxe seja muito similar à linguagens como Java e C#.

Exemplos de código abaixo:

- Estruturas de controle de fluxo:

  ```dart
  void main() {
      int idade = 18;

      if (idade >= 18) {
          print("Você é maior de idade.");
      } else {
          print("Você é menor de idade.");
      }
  }
  ```

- Funções:

  ```dart
  int hasPermission(String role) {
    if (role == 'admin') {
      return 1;
    }
    return 0;
  }

  void main() {
    int permission = hasPermission("admin");
    print(permission);
  }
  ```
