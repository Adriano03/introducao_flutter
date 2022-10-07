import 'package:flutter/material.dart';
import 'package:introducao_flutter/home_page_stateful.dart';
import 'package:introducao_flutter/singleton_build_context.dart';

class HomePage extends StatelessWidget {

  HomePage() {
    print('Construtor Home Page!');
  }
  
   String texto = 'Texto Inicial';

  @override
  Widget build(BuildContext context) {
    print('Build Home Page!');
    return Scaffold(
      appBar: AppBar(title: const Text('Stateless')),
      drawer: const Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(texto),
            Text('${context.id}'),
            ElevatedButton(
              onPressed: () {
                texto = 'Texto Alterado';
              },
              child: const Text(
                'Alterar Texto',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'stateful');
              },
              child: const Text(
                'Ir para stateful',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
