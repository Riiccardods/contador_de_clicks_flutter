import 'package:flutter/material.dart';

// A linha acima importa o pacote 'flutter/material.dart', que contém 
// widgets e classes essenciais para construir interfaces de usuário no Flutter,
// incluindo temas, cores, e componentes visuais.

class CounterScreen extends StatefulWidget {
  // Define uma nova classe chamada `CounterScreen` que é um `StatefulWidget`.
  // `StatefulWidget` é um widget que tem um estado mutável, ou seja, 
  // ele pode mudar durante o tempo de execução com base em interações do usuário.

  const CounterScreen({super.key});
  // O construtor `const CounterScreen` é usado para criar instâncias imutáveis 
  // desta classe. `super.key` é uma forma de passar a chave do widget para a 
  // classe base `StatefulWidget`.

  @override
  State<CounterScreen> createState() => _CounterScreenState();
  // O método `createState` retorna uma instância de `_CounterScreenState`, 
  // que é a classe que contém o estado mutável do `CounterScreen`.
}

class _CounterScreenState extends State<CounterScreen> {
  // Define a classe `_CounterScreenState` que herda de `State<CounterScreen>`.
  // Esta classe contém o estado (dados) e a lógica do widget `CounterScreen`.

  int clickCounter = 0;
  // Declara uma variável inteira chamada `clickCounter` e a inicializa com 0.
  // Esta variável será usada para contar o número de cliques no botão.

  @override
  Widget build(BuildContext context) {
    // O método `build` é chamado sempre que o estado do widget muda.
    // Ele constrói a interface do usuário do widget usando outros widgets.

    return Scaffold(
      // `Scaffold` é um widget que fornece uma estrutura visual básica para 
      // o material design. Ele implementa a estrutura de layout visual básico 
      // do aplicativo.

      appBar: AppBar(
        // `AppBar` é um widget que cria uma barra de aplicativo no topo da tela.
        title: const Text('Counter Screen'),
        // `title` define o título da `AppBar`. 
        // `const Text('Counter Screen')` cria um widget de texto constante 
        // com o título 'Counter Screen'.
      ),

      body: Center(
        // `body` é a área principal de exibição da tela, definida dentro do `Scaffold`.
        // `Center` é um widget que alinha seu filho no centro da área disponível.

        child: Column(
          // `Column` é um widget que organiza seus filhos em uma coluna vertical.
          mainAxisAlignment: MainAxisAlignment.center,
          // `mainAxisAlignment` define como os filhos devem ser alinhados 
          // verticalmente. `MainAxisAlignment.center` centraliza os filhos verticalmente.

          children: [
            // `children` é uma lista de widgets que serão exibidos dentro da `Column`.

            Text(
              '$clickCounter', 
              // '$clickCounter' é uma interpolação de string que converte o valor 
              // da variável `clickCounter` em uma string para ser exibida no texto.

              style: const TextStyle(
                // `TextStyle` é um widget que define a aparência do texto.
                fontSize: 190, 
                // `fontSize` define o tamanho da fonte do texto. Aqui é 190.
                fontWeight: FontWeight.w100, 
                // `fontWeight` define a espessura do texto. `FontWeight.w100` 
                // é uma das opções mais leves, resultando em um texto fino.
              ),
            ),

            if (clickCounter == 1)
              // Condicional que verifica se `clickCounter` é igual a 1.
              const Text('Click',
                // Se `clickCounter` for igual a 1, exibe o texto 'Click'.
                style: TextStyle(
                  // Define o estilo do texto.
                  fontSize: 25, 
                  // Define o tamanho da fonte do texto como 25.
                )
              )
            else
              // Se `clickCounter` não for igual a 1, exibe o texto 'Clicks'.
              const Text('Clicks',
                style: TextStyle(
                  fontSize: 25,
                )
              ),

            Container(
              // `Container` é um widget usado para criar uma caixa retangular visível.
              height: 220.0, 
              // Define a altura do container como 220 pixels.
              color: Color.fromARGB(0, 248, 4, 4), 
              // Define a cor do container. `Color.fromARGB` usa valores alfa, 
              // vermelho, verde e azul. Aqui, `0` para alfa faz com que a cor 
              // seja totalmente transparente.
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        // `FloatingActionButton` é um botão circular flutuante usado para 
        // ações primárias na tela.
        onPressed: () {
          // `onPressed` é um callback que é chamado quando o botão é pressionado.
          setState(() {
            // `setState` notifica o Flutter que o estado interno mudou, 
            // fazendo com que o método `build` seja chamado novamente para 
            // atualizar a interface do usuário.
            clickCounter = clickCounter + 1;
            // Incrementa o valor de `clickCounter` em 1.
          });
        },
        child: const Icon(Icons.plus_one),
        // `child` define o conteúdo dentro do `FloatingActionButton`.
        // `Icon(Icons.plus_one)` cria um ícone com o símbolo de mais.
      ), 
    );
  }
}
