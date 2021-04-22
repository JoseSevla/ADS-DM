import 'dart:js';

import 'package:flutter/material.dart';
import 'package:ola_mundo/home_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String senha = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  https://www.google.com.br/imgres?imgurl=https%3A%2F%2Fpt.seaicons.com%2Fwp-content%2Fuploads%2F2016%2F09%2FClients-icon.png&imgrefurl=https%3A%2F%2Fpt.seaicons.com%2F248191&tbnid=yK7aa6xajLEzLM&vet=12ahUKEwiirJ65vpDwAhXeArkGHTOvAe4QMyhDegQIARBu..i&docid=WbNvwrEcH3yZEM&w=256&h=256&q=icone%20de%20cliente&hl=pt-BR&authuser=0&safe=active&ved=2ahUKEwiirJ65vpDwAhXeArkGHTOvAe4QMyhDegQIARBu)

                TextField(
                  onChanged: (text) => email = text,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  onChanged: (text) => senha = text,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (email == 'sesevla@gmail.com' && senha == '2345') {
                        print('login correto');
                        Navigator.of(context).pushReplacementNamed('/home');
                      } else {
                        print('login ou senha estão errados');
                      }
                    },
                    child: Text('Login'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
