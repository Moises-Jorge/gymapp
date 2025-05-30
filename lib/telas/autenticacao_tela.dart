import 'package:flutter/material.dart';
import 'package:gymapp/_comum/minhas_cores.dart';
import 'package:gymapp/componentes/decoracao_campo_autenticacao.dart';

class AutenticacaoTela extends StatefulWidget {
  const AutenticacaoTela({super.key});

  @override
  State<AutenticacaoTela> createState() => _AutenticacaoTelaState();
}

class _AutenticacaoTelaState extends State<AutenticacaoTela> {
  // Variavel que vai definir se o usuario quer fazer login ou se quer se cadastrar
  bool queroEntrar = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                // Usando essas duas propriedades para o gradiente comecar em "cima e terminar em baixo" (por padrao, o LinearGradient comeca na esquerda da tela e termina na direita)
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  MinhasCores.azulTopoGradiente,
                  MinhasCores.azulBaixoGradiente,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset("assets/gymLogo1.png", height: 250),
                      Text(
                        "GymApp",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Color(0xfff3f4e5),
                        ),
                      ),
                      SizedBox(height: 32),
                      TextFormField(
                        decoration: getAuthenticationInputDecoration("E-mail"),
                        validator: (String? value) {
                          if (value == null) {
                            return "O e-mail não pode ser vazio";
                          } else if (value.length < 5) {
                            return "O e-mail eh muito curto";
                          } else if (!value.contains("@")) {
                            return "O e-mail nao eh valido";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        decoration: getAuthenticationInputDecoration("Senha"),
                        obscureText: true,
                        validator: (String? value) {
                          if (value == null) {
                            return "A senha não pode ser vazio";
                          } else if (value.length < 5) {
                            return "A senha eh muito curto";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 8),
                      Visibility(
                        visible: !queroEntrar,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: getAuthenticationInputDecoration(
                                "Confirme a Senha",
                              ),
                              obscureText: true,
                              validator: (String? value) {
                                if (value == null) {
                                  return "A confirmacao de senha não pode ser vazio";
                                } else if (value.length < 5) {
                                  return "A confirmacao de senha eh muito curto";
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 8),
                            TextFormField(
                              decoration: getAuthenticationInputDecoration(
                                "Nome",
                              ),
                              validator: (String? value) {
                                if (value == null) {
                                  return "O nome não pode ser vazio";
                                } else if (value.length < 5) {
                                  return "O nome eh muito curto";
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          botaoPrincipalClicado();
                        },
                        child: Text((queroEntrar) ? "Entrar" : "Cadastrar"),
                      ),
                      Divider(),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            queroEntrar = !queroEntrar;
                          });
                        },
                        child: Text(
                          (queroEntrar)
                              ? "Ainda não tem uma conta? Cadastre-se!"
                              : "Já tem uma conta? Entre!",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  botaoPrincipalClicado() {
    if (_formKey.currentState!.validate()) {
      print("Form Valido");
    } else {
      print("Form Invalido");
    }
  }
}
