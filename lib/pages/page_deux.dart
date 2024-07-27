import 'package:app_navigation/pages/page_trois.dart';
import 'package:flutter/material.dart';

class PageDeux extends StatelessWidget {
  const PageDeux({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Bienvenue sur la page Deux",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PageTrois(),
                    )),
                child: Text('Go to page Trois ! ')),
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
