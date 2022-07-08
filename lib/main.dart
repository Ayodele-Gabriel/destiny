import 'package:destiny/tale_vault.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    Destiny(),
  );
}

class Destiny extends StatelessWidget {
  const Destiny({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: TaleFolio(),
    );
  }
}

TaleVault taleVault = TaleVault();

class TaleFolio extends StatefulWidget {
  const TaleFolio({Key? key}) : super(key: key);

  @override
  State<TaleFolio> createState() => _TaleFolioState();
}

class _TaleFolioState extends State<TaleFolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    taleVault.findTaleHead(),
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      taleVault.nextTale(2);
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  child: Text(
                    taleVault.findChoice1(),
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: taleVault.buttonShouldBeVisible(),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        taleVault.nextTale(2);
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blue[900]),
                    ),
                    child: Text(
                      taleVault.findChoice2(),
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}