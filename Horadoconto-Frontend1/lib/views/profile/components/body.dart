import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  Body({super.key});

  final FlutterSecureStorage storage = FlutterSecureStorage();

  Future<Map<String, String?>> _getUserInfo() async {
    String? id = await storage.read(key: 'user_id');
    String? nome = await storage.read(key: 'user_nome');
    String? sobreNome = await storage.read(key: 'user_sobreNome');
    String? cpf = await storage.read(key: 'user_cpf');
    String? email = await storage.read(key: 'user_email');
    String? role = await storage.read(key: 'user_role');

    return {
      'id': id,
      'nome': nome,
      'sobreNome': sobreNome,
      'cpf': cpf,
      'email': email,
      'role': role,
    };
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, String?>>(
      future: _getUserInfo(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Erro ao carregar informações do usuário'));
        } else {
          final userInfo = snapshot.data!;
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                const ProfilePic(),
                const SizedBox(height: 20),
                Text('Nome: ${userInfo['nome'] ?? 'N/A'}'),
                Text('Sobrenome: ${userInfo['sobreNome'] ?? 'N/A'}'),
                Text('CPF: ${userInfo['cpf'] ?? 'N/A'}'),
                Text('Email: ${userInfo['email'] ?? 'N/A'}'),
                const SizedBox(height: 20),
                ProfileMenu(
                  text: "Minha Conta",
                  icon: "assets/icons/User Icon.svg",
                  press: () => {}, // Lógica para "Minha Conta"
                ),
                ProfileMenu(
                  text: "Notificações",
                  icon: "assets/icons/Bell.svg",
                  press: () {}, // Lógica para Notificações
                ),
                ProfileMenu(
                  text: "Configurações",
                  icon: "assets/icons/Settings.svg",
                  press: () {}, // Lógica para Configurações
                ),
                ProfileMenu(
                  text: "Central de Ajuda",
                  icon: "assets/icons/Question mark.svg",
                  press: () {}, // Lógica para Central de Ajuda
                ),
                ProfileMenu(
                  text: "Sair",
                  icon: "assets/icons/Log out.svg",
                  press: () {}, // Lógica para sair
                ),
                SizedBox(height: 24.0),
                ElevatedButton(
                  onPressed: () {
                    // Implemente a lógica para a tela de edição de dados
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, // Cor preta
                  ),
                  child: Text('Alterar Dados'),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
