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

# Compilação: O que é compilação? O que seria tempo de compilação e tempo de execução? Qual compilação é adotada pelo Dart?

### Compilação:

A compilação é o processo de tradução do código-fonte para linguagem de máquina, que por sua vez irá gerar um código executável. Durante esse processo, erros de sintaxe e semântica são identificados e por sua vez reportados.

O Dart utiliza duas estratégias de compilação, Just-In-Time (JIT) e Ahead-of-Time (AOT), para otimizar o desempenho do código em diferentes cenários.

### Tempo de compilação:

O tempo de compilação refere-se à fase de desenvolvimento do software, antes do programa ser executado, ou seja, enquanto está escrevendo o código-fonte. Abaixo, está as etapas do processo de compilação:

1. Compilação:

   - Durante esta etapa, o código-fonte é processado pelo compilador, que realiza a tradução para um formato executável.

2. Verificação de sintaxe e semântica:

   - O compilador verifica a sintaxe e a semântica do código, procurando por erros. Se algum erro for identificado, o compilador relata, permitindo ao programador fazer correções antes da próxima compilação.

3. Resultado Bem-Sucedido:

   - Quando a compilação é bem-sucedida e não há erros, o resultado é um programa executável.

O tempo de compilação é crucial para validar o código-fonte e garantir que esteja livre de erros antes da execução do programa. Essa fase proporciona uma oportunidade de correção, contribuindo para a eficiência e qualidade do software final.

### Tempo de execução:

O tempo de execução é o período em que o código-fonte, após uma compilação bem-sucedida, é realmente executado pelo computador. Durante esse processo, o programa realiza as operações definidas no código para produzir os resultados desejados.

1. Operações:

   - Durante o tempo de execução, o programa realiza calcúlos, manipula dados e responde as entradas do usuários ou eventos externos (consumo de API e afins).

2. Possíveis Erros:

   - Erros que ocorrem durante o tempo de execução podem ser devidos a condições inesperadas, como divisão por zero, falta de memória, entre outros.

3. Recorrência:

   - Ao contrário do tempo de compilação, que ocorre uma vez durante o desenvolvimento, o tempo de execução ocorre sempre que o programa é executado.

### Compilação x Execução no Dart

No ambiente de desenvolvimento Dart, a abordagem de compilação adotada é conhecida como Just-In-Time (JIT). Isso significa que o código Dart é compilado não apenas durante a fase de desenvolvimento, mas também durante a própria execução do programa. Essa abordagem oferece uma série de benefícios que contribuem para a flexibilidade e facilitam o processo de desenvolvimento.

#### Compilação Just-In-Time (JIT):

- Durante o desenvolvimento, enquanto o programador está ativamente escrevendo e ajustando o código-fonte, o Dart utiliza a compilação JIT.

- Isso permite a tradução do código-fonte para código de máquina em tempo real, à medida que o programa está em execução. Essa capacidade de compilar dinamicamente proporciona vantagens como o hot-reloading, permitindo alterações no código-fonte sem a necessidade de reiniciar o programa.

#### Tempo de Compilação x Tempo de Execução:

- O tempo de compilação, que tradicionalmente seria uma fase estática durante o desenvolvimento, é agora intercalado com o tempo de execução, proporcionando uma experiência de desenvolvimento ágil e adaptável.

Essa abordagem específica do Dart contribui para a agilidade no desenvolvimento, permitindo que os desenvolvedores testem e iterem rapidamente sobre seu código, incorporando mudanças quase instantaneamente no programa em execução.

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
