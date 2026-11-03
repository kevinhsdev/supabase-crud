import '../lib/conexao.dart';

void main() {
  final supabase = conexao();
  print('Conexão estabelecida com sucesso!');
}