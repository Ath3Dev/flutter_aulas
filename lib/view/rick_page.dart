import 'package:first_flutter_app/view/newscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RickPage extends StatefulWidget {
  const RickPage({super.key});

  @override
  State<RickPage> createState() => _RickPageState();
}

class _RickPageState extends State<RickPage> {
  String frase = "Ok";
  bool showBlue = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Arthur Cuidado"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text("Login"),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: senhaController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Senha',
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const newscreen()),
                  );
                },
                child: Text("New Screen")),
            Expanded(
              child: Container(
                width: 200,
                color: Colors.blueGrey,
                child: Text(frase),
              ),
            ),
            if (showBlue)
              Expanded(
                child: Container(
                  width: 200,
                  color: Colors.blue,
                  child: Text(frase),
                ),
              ),
            Text(emailController.text),
            Text(senhaController.text),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print(emailController.text);
            print(senhaController.text);
            setState(() {
              showBlue = !showBlue;
              frase = "Nova Mensagem!!";
            });
          },
          child: Text("Clique"),
        ),
      ),
    );
  }
}