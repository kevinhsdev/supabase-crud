import 'package:supabase/supabase.dart';
import 'package:dotenv/dotenv.dart';

//funçao conexão entre o dart e o supabase
SupabaseClient conexao() {
  
  final env = DotEnv()..load(); // Carrega as variáveis de ambiente do arquivo .env
  final supabaseUrl = env['SUPABASE_URL']??'';
  final supabaseKey = env['SUPABASE_PUBLISHABLE_KEY']??'';

  if (supabaseUrl.isEmpty || supabaseKey.isEmpty) {
    throw StateError('SUPABASE_URL ou SUPABASE_PUBLISHABLE_KEY não encontrados no arquivo .env');
  }
  
print("Executado!");

  return SupabaseClient(supabaseUrl, supabaseKey);
}