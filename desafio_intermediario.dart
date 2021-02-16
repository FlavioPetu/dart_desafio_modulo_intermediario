main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  Set pessoasSet = Set();

  //REMOVENDO OS DUPLICADOS
  for (var p in pessoas) {
    pessoasSet.add(p);
  }
  print(
      '=> Após remover os duplicados ficaram: ' + pessoasSet.length.toString());

  //TOTAL DE PESSOAS DO SEXO MASCULINO
  var pessoasM = pessoasSet.where((p) => p.contains('Masculino'));
  print('=> Quantidade de pessoas do sexo MASCULINO: ' +
      pessoasM.length.toString());

  //TOTAL DE PESSOAS DO SEXO FEMININO
  var pessoasF = pessoasSet.where((p) => p.contains('Feminino'));
  print('=> Quantidade de pessoas do sexo FEMININO: ' +
      pessoasF.length.toString());

  //TOTAL DE PESSOAS MAIORES DE 18 ANOS
  //TOTAL DE PESSOAS MAIORES DE 18 ANOS - POR SEXO
  var pessoasMaiorIdadeF = 0;
  var pessoasMaiorIdadeM = 0;
  var pessoasMaiorIdade = [];
  pessoasSet.forEach((p) {
    if (int.parse(p.split('|')[1]) > 18) {
      pessoasMaiorIdade.add(p);
      if (p.split('|')[2] == 'Feminino') {
        pessoasMaiorIdadeF += 1;
      } else {
        pessoasMaiorIdadeM += 1;
      }
    }
  });
  print('=> Lista de pessoas maiores de 18 anos: ' +
      pessoasMaiorIdade.toString());
  print('=> Total de pessoas maiores de 18 anos: ' +
      pessoasMaiorIdade.length.toString());
  print(
      '=> Total de pessoas maiores de 18 anos por SEXO: \n - SEXO FEMININO: ' +
          pessoasMaiorIdadeF.toString() +
          '\n - SEXO MASCULINO: ' +
          pessoasMaiorIdadeM.toString());

  //PESSOA MAIS VELHA
  var pessoaMaisVelha = pessoasSet.toList();
  pessoaMaisVelha
      .sort((n1, n2) => n1.split('|')[1].compareTo(n2.split('|')[1]));
  print('=> A pessoa mais velha é: ' + pessoaMaisVelha.last);
}
