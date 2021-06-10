import 'package:avaliacaochakras_app/descricao/desc_chakras.dart';
import 'package:avaliacaochakras_app/resultados/RESULTADOS.dart';
import 'package:flutter/material.dart';

import 'Login.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/Login" : (context) => Login(),
      },
      theme: ThemeData(
        primaryColor: Color(0xffff6101),
      ),
       home: Login()
     // home: desc_chakras("","")
      //home: RESULTADOS("sss","xxxxxxxxxxxx",3,6,9,12,13,0,6)
     ));


