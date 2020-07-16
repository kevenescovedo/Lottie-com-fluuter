import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main() {
  // a função runapp precisa do widge app então estou chamando a classe material app que quando instanciada retorna um objeto que meu app, os parametros
  //passados para a instanciação são o title  que é o titulo do aplicativo que e o home que recebe um widget qualquer que nesse caso e o conteiner que tem como
  //parametro o child o filho que recebe apenas um itém ou widget este recebe o colum que tem como parametro o children que pode receber varios widgets como
  //o text que está formatado com paramtetros abaixo como fontsize : 25 e fontweight: fontWeight.bold e etc.., e lotttie(que vem da biblioteca lottie.dart)
  runApp(MaterialApp(title:  "Flutter app",
    home: Container(color: Colors.white,
    child: Column(children: <Widget>[
      Text("Exemplo de importar uma animação com Lottie",
        style: TextStyle(fontStyle:  FontStyle.normal,
          color: Colors.black, fontSize: 25, decoration: TextDecoration.underline,
          decorationStyle: TextDecorationStyle.solid,
          decorationColor: Colors.red,
          fontWeight: FontWeight.bold, fontFamily: 'Open Sans',
        ),

      ),
      //você pode exportar por meio remoto ou local como lottie.asset
      // Lottie.asset('assets/LottieLogo1.json'),
      Lottie.network(
          'https://assets10.lottiefiles.com/private_files/lf30_kLBIzB.json'),
    ],)
      ,),));
}