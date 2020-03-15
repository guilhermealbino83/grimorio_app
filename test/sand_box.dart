import 'lib/src/sistema/dado.dart';
import 'lib/src/sistema/personagem.dart';

main(){
  Dado d20 = new Dado(20);
  Personagem p1 = new Personagem('Mufasa', 'Guilherme', 6, 18, 16, 10, 12, 14, 8);


  print(p1.toString()) ;
}