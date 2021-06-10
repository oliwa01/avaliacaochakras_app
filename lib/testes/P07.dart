import 'package:avaliacaochakras_app/descricao/desc_chakras.dart';
import 'package:avaliacaochakras_app/resultados/RESULTADOS.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class P07 extends StatefulWidget {
  String _email;
  String _nome;
  P07(this._email,this._nome);
  @override
  _P07State createState() => _P07State();
}

class _P07State extends State<P07> {
  GlobalKey _containerKey = GlobalKey();
  AnimationController controller;
  BorderRadiusGeometry _bR = BorderRadius.circular(8);
  String _dataTimeDb;
  Firestore db = Firestore.instance;
  //

  void _finaliza () {
    _carregaTab();
    score_1c = (_v01 + _v02 + _v03 + _v04 + _v05 + _v06 + _v07);
    score_2c = (_v08 + _v09 + _v10 + _v11 + _v12 + _v13 + _v14);
    score_3c = (_v15 + _v16 + _v17 + _v18 + _v19 + _v20 + _v21);
    score_4c = (_v22 + _v23 + _v24 + _v25 + _v26 + _v27 + _v28);
    score_5c = (_v29 + _v30 + _v31 + _v32 + _v33 + _v34 + _v35);
    score_6c = (_v36 + _v37 + _v38 + _v39 + _v40 + _v41 + _v42);
    score_7c = (_v43 + _v44 + _v45 + _v46 + _v47 + _v48 + _v49);
    DateTime now = DateTime.now();
    String _formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);
    _dataTimeDb = _formattedDate;
    db.collection("avalchakras")
        .document(widget._email)
        .collection(_formattedDate)
        .add(
        {
          "1chakra" : score_1c ,
          "2chakra" : score_1c ,
          "3chakra" : score_1c ,
          "4chakra" : score_1c ,
          "5chakra" : score_1c ,
          "6chakra" : score_1c ,
          "7chakra" : score_7c ,
          "nome" : widget._nome ,
          "P01" : _v01, "P02" : _v02, "P03" : _v03,"P04" : _v04,"P05" : _v05,"P06" : _v06,"P07" : _v07,"P08" : _v08,"P09" : _v09,"P10" : _v10,
          "P11" : _v11, "P12" : _v12, "P13" : _v13,"P14" : _v14,"P15" : _v15,"P16" : _v16,"P17" : _v17,"P18" : _v18,"P19" : _v19,"P20" : _v20,
          "P21" : _v21, "P22" : _v22, "P23" : _v23,"P24" : _v24,"P25" : _v25,"P26" : _v26,"P27" : _v27,"P28" : _v28,"P29" : _v29,"P30" : _v30,
          "P31" : _v31, "P32" : _v32, "P33" : _v33,"P34" : _v34,"P35" : _v35,"P36" : _v36,"P37" : _v37,"P38" : _v38,"P39" : _v39,"P40" : _v40,
          "P41" : _v41, "P42" : _v42, "P43" : _v43,"P44" : _v44,"P45" : _v45,"P46" : _v46,"P47" : _v47,"P48" : _v48,"P49" : _v49
        }
    );}

//


//
  void _carregaTab() {
    _v01 = _valorpergunta[1];
    _v02 = _valorpergunta[2];
    _v03 = _valorpergunta[3];
    _v04 = _valorpergunta[4];
    _v05 = _valorpergunta[5];
    _v06 = _valorpergunta[6];
    _v07 = _valorpergunta[7];
    _v08 = _valorpergunta[8];
    _v09 = _valorpergunta[9];
    _v10 = _valorpergunta[10];
    _v11 = _valorpergunta[11];
    _v12 = _valorpergunta[12];
    _v13 = _valorpergunta[13];
    _v14 = _valorpergunta[14];
    _v15 = _valorpergunta[15];
    _v16 = _valorpergunta[16];
    _v17 = _valorpergunta[17];
    _v18 = _valorpergunta[18];
    _v19 = _valorpergunta[19];
    _v20 = _valorpergunta[20];
    _v21 = _valorpergunta[21];
    _v22 = _valorpergunta[22];
    _v23 = _valorpergunta[23];
    _v24 = _valorpergunta[24];
    _v25 = _valorpergunta[25];
    _v26 = _valorpergunta[26];
    _v27 = _valorpergunta[27];
    _v28 = _valorpergunta[28];
    _v29 = _valorpergunta[29];
    _v30 = _valorpergunta[30];
    _v31 = _valorpergunta[31];
    _v32 = _valorpergunta[32];
    _v33 = _valorpergunta[33];
    _v34 = _valorpergunta[34];
    _v35 = _valorpergunta[35];
    _v36 = _valorpergunta[36];
    _v37 = _valorpergunta[37];
    _v38 = _valorpergunta[38];
    _v39 = _valorpergunta[39];
    _v40 = _valorpergunta[40];
    _v41 = _valorpergunta[41];
    _v42 = _valorpergunta[42];
    _v43 = _valorpergunta[43];
    _v44 = _valorpergunta[44];
    _v45 = _valorpergunta[45];
    _v46 = _valorpergunta[46];
    _v47 = _valorpergunta[47];
    _v48 = _valorpergunta[48];
    _v49 = _valorpergunta[49];



  }


  int _npergunta = 60;
  int _resultado = 0;
  int _numeroSorteado = 1;
  int _numeroAnterior = 0;
//
  int _v01 = 0;
  int _v02 = 0;
  int _v03 = 0;
  int _v04 = 0;
  int _v05 = 0;
  int _v06 = 0;
  int _v07 = 0;
  int _v08 = 0;
  int _v09 = 0;
  int _v10 = 0;
  int _v11 = 0;
  int _v12 = 0;
  int _v13 = 0;
  int _v14 = 0;
  int _v15 = 0;
  int _v16 = 0;
  int _v17 = 0;
  int _v18 = 0;
  int _v19 = 0;
  int _v20 = 0;
  int _v21 = 0;
  int _v22 = 0;
  int _v23 = 0;
  int _v24 = 0;
  int _v25 = 0;
  int _v26 = 0;
  int _v27 = 0;
  int _v28 = 0;
  int _v29 = 0;
  int _v30 = 0;
  int _v31 = 0;
  int _v32 = 0;
  int _v33 = 0;
  int _v34 = 0;
  int _v35 = 0;
  int _v36 = 0;
  int _v37 = 0;
  int _v38 = 0;
  int _v39 = 0;
  int _v40 = 0;
  int _v41 = 0;
  int _v42 = 0;
  int _v43 = 0;
  int _v44 = 0;
  int _v45 = 0;
  int _v46 = 0;
  int _v47 = 0;
  int _v48 = 0;
  int _v49 = 0;


  int score_1c  = 0;
  int score_2c  = 0;
  int score_3c  = 0;
  int score_4c  = 0;
  int score_5c  = 0;
  int score_6c  = 0;
  int score_7c  = 0;




  //

  String _perguntatela = " ";
  var _valorpergunta = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
  var _pergunta = [
    ' ',
    "Pratica exercício físicos diários?",
    "Planeja sua rotina de afazeres diários?",
    "Olha para o seu pai com honra e gratidão?",
    "Olha para a sua mãe com honra e gratidão?",
    "Sente-se seguro?",
    "Avalia sua qualidade de alimentação?",
    "Considera-se bem financeiramente?",
    //
    "Expressa com facilidade suas emoções?",
    "Faz alongamentos diários?",
    "Age mais pela emoção do que pela razão?",
    "Tem relações sexuais prazerosas?",
    "Permite-se a pequenos prazeres como uma massagem, um banho demorado ou uma comida preferida?",
    "Expressa seus desejos sexuais?",
    "Seu intestino funciona diariamente?",
    //
    "Você tem força de vontade?",
    "Você se sente sempre bem fundamentado, presente e inabalável?",
    "Assume a liderança em encontros familiares e/ou profissionais?",
    "Costuma planejar e executar seus projetos de vida até o final?",
    "Posiciona suas ideias em reuniões familiares e/ou profissionais?",
    "Sente-se confortável com o trabalho em equipe?",
    "Sente-se auto-confiante?",
    //
    "Costuma deixar-se guiar pelo coração?",
    "Sente-se conectado ao todo?",
    "Sente o Amor pulsar com facilidade?",
    "O amor traz soluções?",
    "A respiração traz força para o seu viver?",
    "Você dá Amor nas diversas relações humanas?",
    "Ama os animais e plantas?",
    //
    "Você tende a falar demais?",
    "Você se expressa com facilidade?",
    "Você se comunica bem, equilibrando o falar e o ouvir?",
    "Sabe escutar as ideias dos demais?",
    "Tem originalidade e criatividade?",
    "Cultiva a arte no seu viver através de pintura, dança, teatro, música?",
    "Você fantasia as situações?",
    //
    "Você possui visões ou premunições?",
    "Você visualiza coisas com facilidade?",
    "Tem percepção e reconhece sons com frequência?",
    "Costuma observar os detalhes visuais que o(a) rodeia?",
    "Tem atração por cores brilhantes?",
    "Usa do poder da sua imaginação?",
    "Lembra dos sonhos com facilidade?",
    //
    "Costuma meditar?",
    "Confia na sua intuição?",
    "Sente que coincidências são significativas e não são por acaso?",
    "Tem consciência clara que existe algo muito maior que comanda tudo?",
    "Tem experiências espirituais fortes?",
    "Você se sente conectado ao universo e tudo que está ao seu redor?",
    "Acredita que nunca está sozinho(a)?"
    //
  ];

  bool _c1 = false;
  bool _c2 = false;
  bool _c3 = false;

  //
  _montaResultado() {
      if      (_c1) { _resultado = 0;}
      else if (_c2) { _resultado = 1;}
      else if (_c3) { _resultado = 2;}

    _valorpergunta[_numeroSorteado] =_resultado;
  }
  //
  _alteraResultado() {
    _numeroAnterior = _numeroSorteado - 1;
    if      (_valorpergunta[_numeroAnterior] == 0) { _c1 = true;}
    else if (_valorpergunta[_numeroAnterior] == 1) { _c2 = true;}
    else if (_valorpergunta[_numeroAnterior] == 2) { _c3 = true;}

  }
  //
  void _limpaBotao () {
    print(_valorpergunta.toString());
    _c1 = _c2 = _c3 =  false;
  }


//
  void _gerarPergunta () {
    //gerar numero randomicos
    setState(() {
      _perguntatela = _pergunta[_numeroSorteado];
      _npergunta = _numeroSorteado;
    });
  }
  //  Procedimento de finaliar o teste
  //
  @override
  void initState() {
    _gerarPergunta();
  }
  Widget build(BuildContext context) {
    final widthlua = MediaQuery.of(context).size.width;
    final heightlua = MediaQuery.of(context).size.height;
    //
    Color _ck0 = Color.fromRGBO(0, 0, 0, 0.0);
    Color _ck1 = Color.fromRGBO(255, 0, 0, 0.9);
    Color _ck2 = Color.fromRGBO(246,151,53, 0.9);
    Color _ck3 = Color.fromRGBO(255,255,0, 0.9);
    Color _ck4 = Color.fromRGBO(51,255,0, 0.9);
    Color _ck5 = Color.fromRGBO(0,204,255, 0.9);
    Color _ck6 = Color.fromRGBO(0,0,102, 0.9);
    Color _ck7 = Color.fromRGBO(153,0,255, 0.9);
//

    double  fontadj = (widthlua > 1600) ? widthlua / 40:
    (widthlua > 1500)  ? widthlua / 36 :
    (widthlua > 1400)  ? widthlua / 36 :
    (widthlua > 1300)  ? widthlua / 36 :
    (widthlua > 1200)  ? widthlua / 35 :
    (widthlua > 1100)  ? widthlua / 35:
    (widthlua > 1000)  ? widthlua / 35 :
    (widthlua > 900)  ? widthlua / 28:
    (widthlua > 800)  ? widthlua / 25 :
    (widthlua > 700)  ? widthlua / 23 :
    (widthlua > 600)  ? widthlua / 23 :
    (widthlua > 500)  ? widthlua / 24 : widthlua / 25 ;

    double  fontpergunta =  (widthlua > 1600) ?  37:
    (widthlua > 1500)  ?  36 :
    (widthlua > 1400)  ?  36 :
    (widthlua > 1300)  ?  36 :
    (widthlua > 1200)  ?  35 :
    (widthlua > 1100)  ?  35:
    (widthlua > 1000)  ?  35 :
    (widthlua > 900)  ?  28:
    (widthlua > 800)  ?  25 :
    (widthlua > 700)  ?  23 :
    (widthlua > 600)  ?  23 :
    (widthlua > 500)  ?  25 :
    (widthlua > 400)  ?  20 :
    (widthlua > 300)  ?  19 :
    (widthlua > 200)  ?  18 :  18 ;




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

    Color colorbar =  (_npergunta == 1) ? Color.fromRGBO(255, 0, 0, 1.0) :
    (_npergunta == 2) ? Color.fromRGBO(255, 0, 0, 1.0) :
    (_npergunta == 3) ? Color.fromRGBO(255, 0, 0, 1.0) :
    (_npergunta == 4) ? Color.fromRGBO(255, 0, 0, 1.0) :
    (_npergunta == 5) ? Color.fromRGBO(255, 0, 0, 1.0) :
    (_npergunta == 6) ? Color.fromRGBO(255, 0, 0, 1.0) :
    (_npergunta == 7) ? Color.fromRGBO(255, 0, 0, 1.0) :
//
    (_npergunta == 8) ? Color.fromRGBO(246,151,53, 1.0) :
    (_npergunta == 9) ? Color.fromRGBO(246,151,53, 1.0) :
    (_npergunta == 10) ? Color.fromRGBO(246,151,53, 1.0) :
    (_npergunta == 11) ? Color.fromRGBO(246,151,53, 1.0) :
    (_npergunta == 12) ? Color.fromRGBO(246,151,53, 1.0) :
    (_npergunta == 13) ? Color.fromRGBO(246,151,53, 1.0) :
    (_npergunta == 14) ? Color.fromRGBO(246,151,53, 1.0) :
//
    (_npergunta == 15) ? Color.fromRGBO(255,255,0, 1.0) :
    (_npergunta == 16) ? Color.fromRGBO(255,255,0, 1.0) :
    (_npergunta == 17) ? Color.fromRGBO(255,255,0, 1.0) :
    (_npergunta == 18) ? Color.fromRGBO(255,255,0, 1.0) :
    (_npergunta == 19) ? Color.fromRGBO(255,255,0, 1.0) :
    (_npergunta == 20) ? Color.fromRGBO(255,255,0, 1.0) :
    (_npergunta == 21) ? Color.fromRGBO(255,255,0, 1.0) :
//
    (_npergunta == 22) ? Color.fromRGBO(51,255,0, 1.0) :
    (_npergunta == 23) ? Color.fromRGBO(51,255,0, 1.0) :
    (_npergunta == 24) ? Color.fromRGBO(51,255,0, 1.0) :
    (_npergunta == 25) ? Color.fromRGBO(51,255,0, 1.0) :
    (_npergunta == 26) ? Color.fromRGBO(51,255,0, 1.0) :
    (_npergunta == 27) ? Color.fromRGBO(51,255,0, 1.0) :
    (_npergunta == 28) ? Color.fromRGBO(51,255,0, 1.0) :
//
    (_npergunta == 29) ? Color.fromRGBO(0,204,255, 1.0) :
    (_npergunta == 30) ? Color.fromRGBO(0,204,255, 1.0) :
    (_npergunta == 31) ? Color.fromRGBO(0,204,255, 1.0) :
    (_npergunta == 32) ? Color.fromRGBO(0,204,255, 1.0) :
    (_npergunta == 33) ? Color.fromRGBO(0,204,255, 1.0) :
    (_npergunta == 34) ? Color.fromRGBO(0,204,255, 1.0) :
    (_npergunta == 35) ? Color.fromRGBO(0,204,255, 1.0) :
//
    (_npergunta == 36) ? Color.fromRGBO(0,0,102, 1.0) :
    (_npergunta == 37) ? Color.fromRGBO(0,0,102, 1.0) :
    (_npergunta == 38) ? Color.fromRGBO(0,0,102, 1.0) :
    (_npergunta == 39) ? Color.fromRGBO(0,0,102, 1.0) :
    (_npergunta == 40) ? Color.fromRGBO(0,0,102, 1.0) :
    (_npergunta == 41) ? Color.fromRGBO(0,0,102, 1.0) :
    (_npergunta == 42) ? Color.fromRGBO(0,0,102, 1.0) :
//
    (_npergunta == 43) ? Color.fromRGBO(153,0,255, 1.0) :
    (_npergunta == 44) ? Color.fromRGBO(153,0,255, 1.0) :
    (_npergunta == 45) ? Color.fromRGBO(153,0,255, 1.0) :
    (_npergunta == 46) ? Color.fromRGBO(153,0,255, 1.0) :
    (_npergunta == 47) ? Color.fromRGBO(153,0,255, 1.0) :
    (_npergunta == 48) ? Color.fromRGBO(153,0,255, 1.0) :
    (_npergunta == 49) ? Color.fromRGBO(153,0,255, 1.0) :
//
    Color.fromRGBO(153,0,255, 1.0);
 //
    Color fontecolorbar =
    (_npergunta == 36) ? Color.fromRGBO(255,255,255, 1.0) :
    (_npergunta == 37) ? Color.fromRGBO(255,255,255, 1.0) :
    (_npergunta == 38) ? Color.fromRGBO(255,255,255, 1.0) :
    (_npergunta == 39) ? Color.fromRGBO(255,255,255, 1.0) :
    (_npergunta == 40) ? Color.fromRGBO(255,255,255, 1.0) :
    (_npergunta == 41) ? Color.fromRGBO(255,255,255, 1.0) :
    (_npergunta == 42) ? Color.fromRGBO(255,255,255, 1.0) :
//

    Color.fromRGBO(0,0,0, 1.0);




    double  w30p = widthlua * 0.30;

    double  w60p = widthlua * 0.60;

    double  w80p = widthlua * 0.80;
    double  w90p = widthlua * 0.90;
    double  w100p = widthlua * 0.8;


    double barranumerob = ((1 -(_npergunta / _pergunta.length))*100 );
    double  barranumerop = ((((_npergunta / _pergunta.length)-1)*100)+100);
    double fontadjv = fontadj * 0.6;
    double  fontpercent  =
    ( barranumerop  < 1) ? fontadjv * 0.1 :
    ( barranumerop  < 2) ? fontadjv * 0.2 :
    ( barranumerop  < 3) ? fontadjv * 0.3 :
    ( barranumerop  < 4) ? fontadjv * 0.4 :
    ( barranumerop  < 5) ? fontadjv * 0.5 :
    ( barranumerop  < 6) ? fontadjv * 0.6 :
    ( barranumerop  < 7) ? fontadjv * 0.7 :
    ( barranumerop  < 8) ? fontadjv * 0.8 :
    ( barranumerop  < 9) ? fontadjv * 0.9 :
    (barranumerop  < 10) ? fontadjv * 0.95 : fontadj;

    double  h10p = heightlua * 0.05;
    double  h11p = heightlua * 0.1;

    double  hpergunta = heightlua * 0.2;
    double  hspace = heightlua * 0.022;
    double  hnumero = heightlua * 0.05;
    double  hpb = heightlua * 0.13;
    double  hbotao = heightlua * 0.07;
    double  hvolta = heightlua * 0.07;

    double  h80p = heightlua * 0.80;

    String perpergunta = barranumerop.toString();
    //
    String item_1 = "NUNCA";
    String item_2 = "ÁS VEZES";
    String item_3 = "SEMPRE";


    return Scaffold(
     body: Container(
        decoration: BoxDecoration(
         image: DecorationImage(
           image: AssetImage("assets/images/fundo.png"),
           fit: BoxFit.fill,
         ),
       ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: h11p,
              height: h11p,
              child: Image.asset("assets/images/logo.png"),
            ),
            //
            // box numero
            //
            //
            Container(
                height: hnumero,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        //
                        // numero pergunta
                        //
                        AnimatedContainer(
                            padding: EdgeInsets.only (top: 5),
                            width:   (w100p * (barranumerop / 100)),
                            height:  hnumero,
                            decoration: BoxDecoration(
                              color: colorbar,
                              borderRadius: _bR,
                            ),
                            alignment: Alignment.center,
                            duration: Duration(seconds: 1),
                            curve: Curves.elasticInOut,
                            child: Text(
                              barranumerop > 10 ?
                              (perpergunta.substring(0,2))+"%" :
                              (perpergunta.substring(0,1))+"%"
                              , textAlign: TextAlign.center,

                              style: TextStyle(
                                  fontSize: fontpercent,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            )
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        //
                        // numero pergunta
                        //
                        AnimatedContainer(
                            padding: EdgeInsets.only (top: 5),
                            width:   (w100p * (barranumerob / 100)),
                            height:  hnumero,
                            decoration: BoxDecoration(

                              borderRadius: _bR,
                            ),
                            alignment: Alignment.center,
                            duration: Duration(seconds: 1),
                            curve: Curves.elasticInOut
                        ),
                      ],
                    )
                  ],
                )),
            //space
            SizedBox(
                height: hspace/2),

            SizedBox(
                width: w90p,
                height: hpergunta,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //
                    //  pergunta
                    //
                    Column(children: <Widget>[
                      AnimatedContainer(
                        padding: EdgeInsets.all(11),
                        width:  widthlua * 0.95,
                        height: hpergunta,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: _bR,
                        ),
                        alignment: Alignment.center,
                        duration: Duration(seconds: 2),
                        curve: Curves.elasticInOut,
                        child: Text(_perguntatela, textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: fontpergunta,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),),
                      )
                    ],),


                  ],
                )

            ),
            //space
            SizedBox(
                height: hspace),

            //
            // NUNCA
            //
            SizedBox(
                width: h80p,
                height: hpb,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(children: <Widget>[
                      GestureDetector (

                          onTap:() {
                            if (_c1 == false){
                              setState(() {
                                // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                _c1 = true;
                                _c2 = _c3  = false;
                                // _sc1 = false;
                              });
                            }else{
                              setState(() {
                                _c1 = _c2 = _c3 =  false;
                              });
                            }
                          },
                          child:
                          AnimatedContainer(
                              padding: EdgeInsets.only(top : padbox),
                              width: w60p,
                              height: hpb,
                              decoration: BoxDecoration(
                                color: _c1 ? Colors.grey: colorbar,
                                borderRadius: _bR,
                              ),
                              alignment: _c1 ? Alignment.center : Alignment.center ,
                              duration: Duration(seconds: 3),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child:
                              Text(item_1,
                                style: TextStyle(
                                    fontSize: fontadj,
                                    color: _c1 ? Colors.black : fontecolorbar,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                          ))
                    ],)
                  ],
                )
            ),
            //space
            SizedBox(
                height: hspace),
            //
            // RARAMENTE
            //
            SizedBox(
                width: h80p,
                height: hpb,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(children: <Widget>[
                      GestureDetector (

                          onTap:() {
                            if (_c2 == false){
                              setState(() {
                                // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                _c2 = true;
                                _c1 = _c3 =  false;
                                // _sc1 = false;
                              });
                            }else{
                              setState(() {
                                _c1 = _c2 =_c3 =  false;
                              });
                            }
                          },
                          child:
                          AnimatedContainer(
                              padding: EdgeInsets.only(top : padbox),
                              width: w60p,
                              height: hpb,
                              decoration: BoxDecoration(
                                color: _c2 ? Colors.grey: colorbar,
                                borderRadius: _bR,
                              ),
                              alignment: _c2 ? Alignment.center : Alignment.center ,
                              duration: Duration(seconds: 3),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child:
                              Text(item_2,
                                style: TextStyle(
                                    fontSize: fontadj,
                                    color: _c2 ? Colors.black : fontecolorbar,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                          ))
                    ],)
                  ],
                )
            ),
            //space
            SizedBox(
                height: hspace),
            //
            // UM POUCO DO TEMPO
            //
            SizedBox(
                width: h80p,
                height: hpb,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(children: <Widget>[
                      GestureDetector (

                          onTap:() {
                            if (_c3 == false){
                              setState(() {
                                // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                _c3 = true;
                                _c1 = _c2 =   false;
                                // _sc1 = false;
                              });
                            }else{
                              setState(() {
                                _c1 = _c2 = _c3  = false;
                              });
                            }
                          },
                          child:
                          AnimatedContainer(
                              padding: EdgeInsets.only(top : padbox),
                              width: w60p,
                              height: hpb,
                              decoration: BoxDecoration(
                                color: _c3 ? Colors.grey: colorbar,
                                borderRadius: _bR,
                              ),
                              alignment: _c3 ? Alignment.center : Alignment.center,
                              duration: Duration(seconds: 3),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child:
                              Text(item_3,
                                style: TextStyle(
                                    fontSize: fontadj,
                                    color: _c1 ? Colors.black : fontecolorbar,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                          ))
                    ],)
                  ],
                )
            ),
            //space
            SizedBox(
                height: hspace),
            //
            // ALGUMAS VEZES
            //
            //space
            //
            // Botoes
            //
            //space
            SizedBox(

              height: hbotao,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: w30p,
                    height: hbotao,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors:
                        (_npergunta == 1) ?   ([_ck1,_ck1]) :
                        (_npergunta == 2) ?   ([_ck1,_ck1]) :
                        (_npergunta == 3) ?   ([_ck1,_ck1]) :
                        (_npergunta == 4) ?   ([_ck1,_ck1]) :
                        (_npergunta == 5) ?   ([_ck1,_ck1]) :
                        (_npergunta == 6) ?   ([_ck1,_ck1]) :
                        (_npergunta == 7) ?   ([_ck1,_ck2]) :
                        (_npergunta == 8) ?   ([_ck2,_ck2]) :
                        (_npergunta == 9) ?   ([_ck2,_ck2]) :
                        (_npergunta == 10) ?  ([_ck2,_ck2]) :
                        (_npergunta == 11) ?  ([_ck2,_ck2]) :
                        (_npergunta == 12) ?  ([_ck2,_ck2]) :
                        (_npergunta == 13) ?  ([_ck2,_ck2]) :
                        (_npergunta == 14) ?  ([_ck2,_ck3]) :
                        (_npergunta == 15) ?  ([_ck3,_ck3]) :
                        (_npergunta == 16) ?  ([_ck3,_ck3]) :
                        (_npergunta == 17) ?  ([_ck3,_ck3]) :
                        (_npergunta == 18) ?  ([_ck3,_ck3]) :
                        (_npergunta == 19) ?  ([_ck3,_ck3]) :
                        (_npergunta == 20) ?  ([_ck3,_ck3]) :
                        (_npergunta == 21) ?  ([_ck3,_ck4]) :
                        (_npergunta == 22) ?  ([_ck4,_ck4]) :
                        (_npergunta == 23) ?  ([_ck4,_ck4]) :
                        (_npergunta == 24) ?  ([_ck4,_ck4]) :
                        (_npergunta == 25) ?  ([_ck4,_ck4]) :
                        (_npergunta == 26) ?  ([_ck4,_ck4]) :
                        (_npergunta == 27) ?  ([_ck4,_ck4]) :
                        (_npergunta == 28) ?  ([_ck4,_ck5]) :
                        (_npergunta == 29) ?  ([_ck5,_ck5]) :
                        (_npergunta == 30) ?  ([_ck5,_ck5]) :
                        (_npergunta == 31) ?  ([_ck5,_ck5]) :
                        (_npergunta == 32) ?  ([_ck5,_ck5]) :
                        (_npergunta == 33) ?  ([_ck5,_ck5]) :
                        (_npergunta == 34) ?  ([_ck5,_ck5]) :
                        (_npergunta == 35) ?  ([_ck5,_ck6]) :
                        (_npergunta == 36) ?  ([_ck6,_ck6]) :
                        (_npergunta == 37) ?  ([_ck6,_ck6]) :
                        (_npergunta == 38) ?  ([_ck6,_ck6]) :
                        (_npergunta == 39) ?  ([_ck6,_ck6]) :
                        (_npergunta == 40) ?  ([_ck6,_ck6]) :
                        (_npergunta == 41) ?  ([_ck6,_ck6]) :
                        (_npergunta == 42) ?  ([_ck6,_ck7]) :
                        (_npergunta == 43) ?  ([_ck7,_ck7]) :
                        (_npergunta == 44) ?  ([_ck7,_ck7]) :
                        (_npergunta == 45) ?  ([_ck7,_ck7]) :
                        (_npergunta == 46) ?  ([_ck7,_ck7]) :
                        (_npergunta == 47) ?  ([_ck7,_ck7]) :
                        (_npergunta == 48) ?  ([_ck7,_ck7]) :
                        ([_ck7,_ck7]),
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

                            Text(
                              "Voltar",
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
                          if(_numeroSorteado == 1 ){
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        desc_chakras(widget._email,widget._nome)));
                          }else{
                            _limpaBotao();
                            _alteraResultado();
                            _numeroSorteado --;
                            _gerarPergunta();}
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                  ),
                  (_c1 || _c2 || _c3  ) ? Container(
                    width: w30p,
                    height: hbotao,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors:
                        (_npergunta == 1) ?   ([_ck1,_ck1]) :
                        (_npergunta == 2) ?   ([_ck1,_ck1]) :
                        (_npergunta == 3) ?   ([_ck1,_ck1]) :
                        (_npergunta == 4) ?   ([_ck1,_ck1]) :
                        (_npergunta == 5) ?   ([_ck1,_ck1]) :
                        (_npergunta == 6) ?   ([_ck1,_ck1]) :
                        (_npergunta == 7) ?   ([_ck2,_ck2]) :
                        (_npergunta == 8) ?   ([_ck2,_ck2]) :
                        (_npergunta == 9) ?   ([_ck2,_ck2]) :
                        (_npergunta == 10) ?  ([_ck2,_ck2]) :
                        (_npergunta == 11) ?  ([_ck2,_ck2]) :
                        (_npergunta == 12) ?  ([_ck2,_ck2]) :
                        (_npergunta == 13) ?  ([_ck2,_ck2]) :
                        (_npergunta == 14) ?  ([_ck3,_ck3]) :
                        (_npergunta == 15) ?  ([_ck3,_ck3]) :
                        (_npergunta == 16) ?  ([_ck3,_ck3]) :
                        (_npergunta == 17) ?  ([_ck3,_ck3]) :
                        (_npergunta == 18) ?  ([_ck3,_ck3]) :
                        (_npergunta == 19) ?  ([_ck3,_ck3]) :
                        (_npergunta == 20) ?  ([_ck3,_ck3]) :
                        (_npergunta == 21) ?  ([_ck4,_ck4]) :
                        (_npergunta == 22) ?  ([_ck4,_ck4]) :
                        (_npergunta == 23) ?  ([_ck4,_ck4]) :
                        (_npergunta == 24) ?  ([_ck4,_ck4]) :
                        (_npergunta == 25) ?  ([_ck4,_ck4]) :
                        (_npergunta == 26) ?  ([_ck4,_ck4]) :
                        (_npergunta == 27) ?  ([_ck4,_ck4]) :
                        (_npergunta == 28) ?  ([_ck5,_ck5]) :
                        (_npergunta == 29) ?  ([_ck5,_ck5]) :
                        (_npergunta == 30) ?  ([_ck5,_ck5]) :
                        (_npergunta == 31) ?  ([_ck5,_ck5]) :
                        (_npergunta == 32) ?  ([_ck5,_ck5]) :
                        (_npergunta == 33) ?  ([_ck5,_ck5]) :
                        (_npergunta == 34) ?  ([_ck5,_ck5]) :
                        (_npergunta == 35) ?  ([_ck6,_ck6]) :
                        (_npergunta == 36) ?  ([_ck6,_ck6]) :
                        (_npergunta == 37) ?  ([_ck6,_ck6]) :
                        (_npergunta == 38) ?  ([_ck6,_ck6]) :
                        (_npergunta == 39) ?  ([_ck6,_ck6]) :
                        (_npergunta == 40) ?  ([_ck6,_ck6]) :
                        (_npergunta == 41) ?  ([_ck6,_ck6]) :
                        (_npergunta == 42) ?  ([_ck7,_ck7]) :
                        (_npergunta == 43) ?  ([_ck7,_ck7]) :
                        (_npergunta == 44) ?  ([_ck7,_ck7]) :
                        (_npergunta == 45) ?  ([_ck7,_ck7]) :
                        (_npergunta == 46) ?  ([_ck7,_ck7]) :
                        (_npergunta == 47) ?  ([_ck7,_ck7]) :
                        (_npergunta == 48) ?  ([_ck7,_ck7]) :
                                              ([_ck7,_ck0]),
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
                            Text(
                              " Próxima",
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
                          _montaResultado();
                          if(_numeroSorteado == _pergunta.length -1) {

                            _finaliza();
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        RESULTADOS(
                                            widget._email,widget._nome,
                                            score_1c,
                                            score_2c,
                                            score_3c,
                                            score_4c,
                                            score_5c,
                                            score_6c,
                                            score_7c,
                                        )));
                          }else{
                            _limpaBotao();
                            _numeroSorteado ++;
                            _gerarPergunta();}
                        },
                      ),
                    ),
                  ):
                  Container(
                      width: w30p
                  ),
                ],
              ),
            ),
            SizedBox(
                height: hspace),
            Container(
              height: hvolta,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: Color(0xFF3C5A99),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "Voltar Menu ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) =>
                                desc_chakras(widget._email,widget._nome)));
                  },
                ),
              ),
            ),
          ],
      ),
    )
    );

  }
}
