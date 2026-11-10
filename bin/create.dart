//Registrar informações no banco de dados

import '../lib/conexao.dart';

main() async {
  //Conexao 
  final supabase = conexao();

  try {
    final produto = await supabase
    //Seleciona a tabela
    .from("produtos")
    //Inseri dados na tabela
    .insert({
      'nome' : 'Computador',
      'preco' : 150.00,
      'quantidade' : 10
    })
    //Retorna o registro
    .select()
    //Registro único
    .single();

    print(produto);
  } catch(erro){
    print("ocorreu o seguinte erro $erro");
  } finally{
    //Encerra a conexão
    await supabase.dispose();
  }

}