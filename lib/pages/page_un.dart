import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Container(
                child: Stack(children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                  ),
                  TextButton(onPressed: () {}, child: Text("Se déconnecter")),

                  Text("Bienvenue ga")
                ]),
              ),
            ),
            const Text(
              "Bienvenue sur la page One",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Retour ! '))
          ],
        ),
      ),
    );
  }
}
