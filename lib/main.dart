import 'package:app_navigation/pages/page_deux.dart';
import 'package:app_navigation/pages/page_trois.dart';
import 'package:app_navigation/pages/page_un.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/pageOne': (context) => const PageOne(),
        '/pageTwo': (context) => const PageDeux(),
        '/pageThird': (context) => const PageTrois(),
      },
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String textPage = "Menu principal : ";
    var tailleWidth = MediaQuery.of(context).size.width;
    var tailleHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: Colors.amber,
        alignment: Alignment.center,
        height: tailleHeight,
        width: tailleWidth,
        child: Column(
          children: [
            const SizedBox(height: 15),
            Text(
              textPage,
              style: TextStyle(
                  fontSize: tailleWidth / 20, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      // Nouvelle méthode de navigation vers la page PageOne
                      onPressed: () => Navigator.pushNamed(context, '/pageOne'),
                      child: Text("Page One")),

                  // ElevatedButton(
                  //     // navigation vers la page PageOne
                  //     onPressed: () => Navigator.push(context,
                  //         MaterialPageRoute(builder: (context) => PageOne())),
                  //     child: Text("Page One")),
                  ElevatedButton(
                      // navigation vers la page PageDeux
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PageDeux())),
                      child: Text("Page Deux")),
                  ElevatedButton(
                      // navigation vers la page PageTrois
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PageTrois())),
                      child: Text("Page Trois")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatefulWidget {
  CustomButton({super.key, required this.function, required this.nameButton});
  Function function;
  String nameButton;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => widget.function, child: Text(widget.nameButton));
  }
}
