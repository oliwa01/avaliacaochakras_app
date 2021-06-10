import 'package:avaliacaochakras_app/testes/P07.dart';
import 'package:flutter/material.dart';






class desc_chakras extends StatefulWidget {
  String _email;
  String _nome;
  desc_chakras(this._email,this._nome);

  @override
  _desc_chakrasState createState() => _desc_chakrasState();
}

class _desc_chakrasState extends State<desc_chakras> {
  @override
  Widget build(BuildContext context) {
    final widthlua = MediaQuery.of(context).size.width;
    final heightlua = MediaQuery.of(context).size.height;

    double  font_adj = (widthlua > 1600) ? 35:
    (widthlua > 1500)  ? 30 :
    (widthlua > 1400)  ? 29 :
    (widthlua > 1300)  ? 28 :
    (widthlua > 1200)  ? 27 :
    (widthlua > 1100)  ? 26 :
    (widthlua > 1000)  ? 25 :
    (widthlua > 900)  ? 24:
    (widthlua > 800)  ? 23 :
    (widthlua > 700)  ? 22 :
    (widthlua > 600)  ? 21 :
    (widthlua > 500)  ? 20 :
    (widthlua > 400)  ? 19 :
    (widthlua > 300)  ? 18 :
    (widthlua > 200)  ? 16 : 14 ;

    double  font_adj2 =  (widthlua > 1600) ? 30:
    (widthlua > 1500)  ? 28 :
    (widthlua > 1400)  ? 26 :
    (widthlua > 1300)  ? 26 :
    (widthlua > 1200)  ? 24 :
    (widthlua > 1100)  ? 22:
    (widthlua > 1000)  ? 20 :
    (widthlua > 900)  ? 18:
    (widthlua > 800)  ? 17 :
    (widthlua > 700)  ? 16 :
    (widthlua > 600)  ? 15 :
    (widthlua > 500)  ? 13 :
    (widthlua > 400)  ? 13 :
    (widthlua > 300)  ? 12 :
    (widthlua > 200)  ? 11 : 11 ;



    double padbox =  (heightlua > 1600) ? 25 :
    (heightlua > 1500)  ? 24 :
    (heightlua > 1400)  ? 23 :
    (heightlua > 1300)  ? 22 :
    (heightlua > 1200)  ? 22 :
    (heightlua > 1100)  ? 21 :
    (heightlua > 1000)  ? 20 :
    (heightlua > 900)  ? 20 :
    (heightlua > 800)  ? 19 :
    (heightlua > 700)  ? 19 :
    (heightlua > 600)  ? 18 :
    (heightlua > 500)  ? 20:  20 ;




    double  w10p = widthlua * 0.13;
    double  w20p = widthlua * 0.20;
    double  w30p = widthlua * 0.30;
    double  w40p = widthlua * 0.40;
    double  w50p = widthlua * 0.50;
    double  w60p = widthlua * 0.60;
    double  w70p = widthlua * 0.70;
    double  w80p = widthlua * 0.80;
    double  w90p = widthlua * 0.90;
    double  w100p = widthlua * 0.8;

    double font_adjv = font_adj * 0.6;

    double  h10p = heightlua * 0.1;
    double  h40p = heightlua * 0.4;
    double  h30p = heightlua * 0.3;
    double  h60p = heightlua * 0.6;


    return Scaffold(
      appBar: new PreferredSize(
        child: new Container(
          padding: new EdgeInsets.only(
              top: MediaQuery.of(context).padding.top
          ),
          child: new Padding(
            padding: const EdgeInsets.only(
                left: 30.0,
                top: 20.0,
                bottom: 20.0
            ),
            child: new Text(
              'AVALIAÇÃO DOS CHAKRAS', textAlign: TextAlign.center,
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
              ),
            ),
          ),
          decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [
                    Color.fromRGBO(255, 0, 0, 1.0),
                    Color.fromRGBO(246,151,53, 1.0),
                    Color.fromRGBO(255,255,0, 1.0),
                    Color.fromRGBO(51,255,0, 1.0),
                    Color.fromRGBO(0,204,255, 1.0),
                    Color.fromRGBO(0,0,102, 1.0),
                    Color.fromRGBO(153,0,255, 1.0)
                  ]
              ),
              boxShadow: [
                new BoxShadow(
                  color: Colors.grey[500],
                  blurRadius: 20.0,
                  spreadRadius: 1.0,
                )
              ]
          ),
        ),
        preferredSize: new Size(
            MediaQuery.of(context).size.width,
            150.0
        ),
      ),
      body: Container(
        /*
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/fundo.png"),
            fit: BoxFit.fill,
          ),
        ),*/
        child: ListView(
          children: <Widget>[
          SizedBox(height: 5),
            SizedBox(
              width: h30p,
              height: h30p,
              child: Image.asset("assets/images/logo.png"),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: w80p,
              height: h40p,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("ATRAVÉS DESTE QUESTIONÁRIO SIMPLES VOCÊ PODE IDENTIFICAR\n\n"+
                             "QUAL OU QUAIS CHAKRAS ESTÃO BLOQUEADOS E SE ELES ESTÃO OU NÃO ALINHADOS \n",
                          style: TextStyle(
                            fontSize: font_adj,
                            fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                        ),
                        Text("Responda as perguntas da maneira mais espontânea que puder, ou seja, sem muito pensar.\n\n"+
                          "Deixe que a resposta saia de primeira e de forma rápida.",
                          style: TextStyle(
                            fontSize: font_adj2 ,
                            fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                        )
                        ,]
                  )
              ),
            Container(
              height: h10p,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
//                stops: [0.14,0.14,0.14,0.14,0.14,0.14,0.14],
                  colors: [
                    Color.fromRGBO(255, 0, 0, 1.0),
                    Color.fromRGBO(246,151,53, 1.0),
                    Color.fromRGBO(255,255,0, 1.0),
                    Color.fromRGBO(51,255,0, 1.0),
                    Color.fromRGBO(0,204,255, 1.0),
                    Color.fromRGBO(0,0,102, 1.0),
                    Color.fromRGBO(153,0,255, 1.0)
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: SizedBox(
                          child: Image.asset("images/logo.png"),
                          height: 28,
                          width: 28,
                        ),
                      ),
                      Text(
                        "  Iniciar Teste",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => P07(widget._email,widget._nome)));
                  },
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
