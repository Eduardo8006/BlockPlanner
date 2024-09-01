import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            title: const Image(
              image: AssetImage("assets/images/icon.png"),
              width: 240,
              alignment: Alignment.center,
            ),
            elevation: 0,
            backgroundColor: const Color.fromARGB(200, 92, 163, 95),
          )),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(27),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 182, 232, 189),
              Color.fromRGBO(84, 130, 102, 1),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 5,
            ),
            Title(
              color: Colors.black,
              child: Text(
                "Entre em sua conta",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w800,
                  shadows: [
                    Shadow(
                      offset: const Offset(2.0, 2.0),
                      blurRadius: 3.0,
                      color: Colors.green.withOpacity(0.6),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              "Preencha os campos abaixo.",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            const SizedBox(height: 20),
            const CupertinoTextField(
              cursorColor: Colors.green,
              padding: EdgeInsets.all(16),
              placeholder: "Endereço de e-mail ou nome de usuário.",
              placeholderStyle: TextStyle(color: Colors.black38, fontSize: 15),
              style: TextStyle(color: Colors.black, fontSize: 15),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 235, 243, 238),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  )),
            ),
            const SizedBox(height: 12),
            const CupertinoTextField(
              cursorColor: Colors.green,
              padding: EdgeInsets.all(16),
              placeholder: "Senha",
              placeholderStyle: TextStyle(color: Colors.black38, fontSize: 15),
              style: TextStyle(color: Colors.black, fontSize: 15),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 235, 243, 238),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  )),
              obscureText: true,
            ),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.greenAccent,
                        Color.fromARGB(255, 70, 240, 140),
                        Color.fromARGB(255, 60, 255, 140),
                        Color.fromARGB(255, 55, 230, 140),
                      ])),
              child: CupertinoButton(
                padding: const EdgeInsets.all(15),
                color: Colors.transparent,
                child: const Text(
                  "Continuar",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 17,
                      fontWeight: FontWeight.w700),
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 14),
            const Text(
              "----------ou continue com----------",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 14),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromARGB(255, 181, 228, 153),
                    Color.fromARGB(255, 171, 221, 140),
                    Color.fromARGB(255, 159, 216, 123),
                    Color.fromARGB(255, 133, 178, 106),
                  ],
                ),
              ),
              child: CupertinoButton(
                child: const Text(
                  "Crie sua conta",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                // Ação quando o texto for clicado
                print("Texto clicado!");
              },
              child: const Text(
                "Não possui uma conta?",
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 0, 0,
                      0), // Usualmente usa-se uma cor diferente para indicar que é clicável
                  decoration: TextDecoration
                      .underline, // Sublinhado para indicar que é clicável
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            InkWell(
              onTap: () {
                print("Texto clicado!");
              },
              child: const Text(
                "Ao continuar você concorda com nossos termos de politica e privacidade.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
