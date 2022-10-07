import 'package:flutter/material.dart';

class HomePageStateFul extends StatefulWidget {
  HomePageStateFul() {
    print('Rodando construtor de HomePageStateFul');
  }

  @override
  State<StatefulWidget> createState() {
    print('Rodando createState de HomePageStateFul');
    return _HomePageStateFulState();
  }
}

class _HomePageStateFulState extends State<HomePageStateFul> {
  _HomePageStateFulState() {
    print('Rodando o construtor de _HomePageStateFulState');
  }
  String texto = 'Texto Inicial';

  @override
  void initState() {
    print('Rodando o initState de _HomePageStateFulState');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('Rodando o didChangeDependencies de _HomePageStateFulState');
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    print('Rodando o dispose de _HomePageStateFulState');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('Rodando build de _HomePageStateFulState');
    return Scaffold(
      appBar: AppBar(title: const Text('Stateful')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(texto),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  texto = 'Texto Alterado';
                });
              },
              child: const Text(
                'Alterar Texto',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
