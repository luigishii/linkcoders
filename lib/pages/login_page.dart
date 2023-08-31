import 'package:flutter/material.dart';
import 'package:linkcoders/components/caixaDeTexto.dart';
import '../components/botao.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();


  void signUserIn() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Center(
        child: Column(children: [
          SizedBox(height: 50),
          Icon(
            Icons.lock,
            size: 100,
          ),
          SizedBox(height: 50),
          const SizedBox(height: 50),
          
          
          caixaDeTexto(
            controller: usernameController,
            hintText: "Nome de Usuário",
            obscureText: false,
          ),
          const SizedBox(height: 10),
          
          
          caixaDeTexto(
            controller: passwordController,
            hintText: "Insira sua senha",
            obscureText: true,
          ),

          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          botao(
            onTap: signUserIn,
          ),


          const SizedBox(height: 50),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
          
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Ou faça login com',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
          
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
          
          
              ],
            ),
          ),

          Row(
            children: [

              Image.asset('lib/images/logoLinkCoders.png')
            ],
          ),

          
        ]),
      )),
    );
  }
}
