// Importa o pacote 'material.dart', que contém os widgets do Material Design.
// Quase todo aplicativo Flutter usa este pacote para construir sua interface.
import 'package:flutter/material.dart';

// A função 'main' é o ponto de entrada do seu aplicativo Flutter.
// É a primeira função a ser executada quando o aplicativo é iniciado.
void main() {
  // 'runApp' é a função principal do Flutter que "infla" o widget raiz na tela.
  // Ela pega um widget e o exibe como a interface do usuário do aplicativo.
  // 'const MyApp()' cria uma instância constante do nosso widget raiz.
  runApp(const MyApp());
}

// 'MyApp' é o widget raiz do nosso aplicativo.
// Ele é um 'StatelessWidget' (widget sem estado) porque a sua configuração
// (o que ele exibe) não muda durante a vida do aplicativo.
class MyApp extends StatelessWidget {
  // O construtor 'const MyApp({super.key})' é padrão para widgets.
  // 'super.key' é usado para identificar widgets de forma única na árvore de widgets.
  const MyApp({super.key});

  // O método 'build' é obrigatório para todos os widgets.
  // Ele descreve a interface do usuário que este widget irá construir.
  // 'BuildContext context' é uma referência à localização do widget na árvore de widgets.
  @override
  Widget build(BuildContext context) {
    // 'MaterialApp' é um widget que fornece a estrutura básica de um aplicativo
    // que segue as diretrizes do Material Design do Google.
    // Ele configura coisas como o tema, navegação e a tela inicial.
    return const MaterialApp(
      // A propriedade 'home' define o widget que será exibido como a tela inicial do aplicativo.
      // Neste caso, estamos usando o nosso próprio widget 'HomePage'.
      home: HomePage(),
    );
  }
}

// 'HomePage' é o widget que representa a nossa tela principal.
// Assim como 'MyApp', ele também é um 'StatelessWidget' porque o conteúdo
// desta tela não mudará sem interação.
class HomePage extends StatelessWidget {
  // Construtor padrão para o widget 'HomePage'.
  const HomePage({super.key});

  // O método 'build' para a 'HomePage', descrevendo o que será exibido nesta tela.
  @override
  Widget build(BuildContext context) {
    // 'Scaffold' é um widget que implementa a estrutura visual básica do Material Design.
    // Ele fornece a base para coisas como AppBar, FloatingActionButton, Drawer, etc.
    return const Scaffold(
      // A propriedade 'body' define o conteúdo principal da tela, abaixo da AppBar (se houver).
      body: Center(
        // 'Center' é um widget de layout que centraliza seu widget filho.
        child: Text(
          // 'Text' é um widget que exibe uma string de texto na tela.
          'Olá, Mundo!',
          // 'style' permite personalizar a aparência do texto.
          style: TextStyle(
            fontSize: 28, // Define o tamanho da fonte.
            fontWeight: FontWeight.bold, // Deixa o texto em negrito.
            color: Colors.blueAccent, // Define a cor do texto.
          ),
        ),
      ),
    );
  }
}
