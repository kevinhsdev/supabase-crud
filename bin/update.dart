import '../lib/conexao.dart';
import 'dart:io';

main() async{
  final supabase = conexao();

  try{
    print("Digite o id do produto que deseja alterar: ");
    final id = int.parse(stdin.readLineSync());

    print("Digite o nome do produto que deseja alterar: ");
    final nome = stdin.readLineSync();
  }
}