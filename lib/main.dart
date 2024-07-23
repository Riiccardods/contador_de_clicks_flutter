import 'package:contador/presentation/screens/counter/counter_screen.dart';
// `import` é uma palavra-chave que traz funcionalidades de outros arquivos ou 
// pacotes para o arquivo atual. Aqui, estamos importando a classe `CounterScreen` 
// do arquivo `counter_screen.dart` que está localizado no caminho 
// `presentation/screens/counter` dentro do pacote `contador`.
// O caminho é relativo à estrutura do projeto Flutter.

import 'package:flutter/material.dart';
// Este `import` traz o pacote `flutter/material.dart` para o arquivo atual.
// O pacote `material.dart` inclui uma coleção de widgets e temas baseados em 
// Material Design, um padrão visual desenvolvido pelo Google.

void main() {
  // `void` é um tipo de retorno que indica que a função não retorna nenhum valor.
  // `main` é a função principal do aplicativo. No Dart, a execução do programa 
  // começa pela função `main`.

  runApp(const MyApp());
  // `runApp` é uma função que inicia o aplicativo Flutter. Ela pega o widget 
  // fornecido (neste caso, `MyApp`) e o anexa à árvore de widgets que é 
  // desenhada na tela.
  // `const MyApp()` cria uma instância constante da classe `MyApp`. O uso de `const` 
  // aqui melhora o desempenho porque indica que esta instância nunca mudará.
}

class MyApp extends StatelessWidget {
  // `class` é uma palavra-chave usada para definir uma nova classe.
  // `MyApp` é o nome da classe que estamos definindo. Esta classe estende 
  // `StatelessWidget`, o que significa que ela descreve uma parte imutável da 
  // interface do usuário. 

  const MyApp({super.key});
  // O construtor `const MyApp` cria uma instância constante da classe `MyApp`.
  // `{super.key}` é uma sintaxe de inicialização que passa a chave para o 
  // construtor da superclasse (`StatelessWidget`). `super.key` é usado para 
  // identificar de forma única a instância deste widget.

  @override
  // `@override` é uma anotação que indica que o método que estamos definindo 
  // está sobrescrevendo um método da superclasse.

  Widget build(BuildContext context) {
    // `Widget` é o tipo de retorno do método `build`. Em Flutter, quase tudo 
    // é um widget.
    // `build` é um método que descreve como construir a interface do usuário 
    // do widget. Ele é chamado sempre que o widget precisa ser reconstruído, 
    // por exemplo, quando há uma mudança de estado.
    // `BuildContext` é um objeto que fornece informações sobre a localização 
    // do widget na árvore de widgets. Ele é passado para o método `build` 
    // automaticamente pelo framework Flutter.

    return MaterialApp(
      // `MaterialApp` é um widget que envolve vários widgets necessários para 
      // um aplicativo que segue as diretrizes de design do Material Design.
      // Ele fornece temas, roteamento e muitas outras funcionalidades.

      debugShowCheckedModeBanner: false,
      // `debugShowCheckedModeBanner` é uma propriedade que, quando definida como 
      // `false`, oculta a faixa de depuração no canto superior direito da tela.

      theme: ThemeData(
        // `theme` é uma propriedade que define o tema do aplicativo.
        // `ThemeData` é uma classe que armazena os dados do tema, como cores, 
        // fontes e outros estilos visuais.

        useMaterial3: true,
        // `useMaterial3` é uma propriedade que, quando definida como `true`, 
        // ativa o uso dos novos componentes e estilo do Material Design 3.

        colorSchemeSeed: Color.fromARGB(255, 67, 154, 253),
        // `colorSchemeSeed` é uma propriedade que define a cor base do esquema 
        // de cores do aplicativo.
        // `Color.fromARGB` é um construtor que cria uma cor a partir de valores 
        // ARGB (Alpha, Red, Green, Blue). Aqui, `255` é o valor do alfa (opacidade),
        // `67` é o valor do vermelho, `154` é o valor do verde, e `253` é o 
        // valor do azul.
      ),

      home: const CounterScreen(),
      // `home` é uma propriedade que define o widget principal do aplicativo,
      // que é exibido quando o aplicativo é iniciado.
      // `const CounterScreen()` cria uma instância constante de `CounterScreen`,
      // que é um widget definido em outro arquivo (importado anteriormente).
    );
  }
}
