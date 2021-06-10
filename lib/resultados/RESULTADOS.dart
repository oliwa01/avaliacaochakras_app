import 'package:avaliacaochakras_app/descricao/desc_chakras.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class RESULTADOS extends StatefulWidget {
  String _email;
  String _nome;
  int _score1c;
  int _score2c;
  int _score3c;
  int _score4c;
  int _score5c;
  int _score6c;
  int _score7c;



  RESULTADOS(this._email,
  this._nome,
  this._score1c,
  this._score2c,
  this._score3c,
  this._score4c,
  this._score5c,
  this._score6c,
  this._score7c);

  @override
  _RESULTADOSState createState() => _RESULTADOSState();
}

class _RESULTADOSState extends State<RESULTADOS> {
  AnimationController controller;
  BorderRadiusGeometry _bR = BorderRadius.circular(8);
  String _launched = " ";



  //
  Color _white = Color.fromRGBO(255, 255, 255, 0.3);
//
bool _descck = false;
  bool _f1 = false;
  bool _f2 = false;
  bool _f3 = false;
  bool _f4 = false;
  bool _f5 = false;
  bool _f6 = false;
  bool _f7 = false;
  bool _tela = false;

String _tmd = "";
  _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(
        width: 3, //                   <--- border width here
      ),
    );
  }

@override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final widthlua = MediaQuery.of(context).size.width;
    final heightlua = MediaQuery.of(context).size.height;

    String  font_adj = (widthlua > 1600) ? "40px":
    (widthlua > 1500)  ? "39px":
    (widthlua > 1400)  ? "38px" :
    (widthlua > 1300)  ? "37px":
    (widthlua > 1200)  ? "36px" :
    (widthlua > 1100)  ? "35px":
    (widthlua > 1000)  ? "34px" :
    (widthlua > 900)  ? "33px":
    (widthlua > 800)  ? "32px" :
    (widthlua > 700)  ? "31px" :
    (widthlua > 600)  ? "30px" :
    (widthlua > 500)  ? "29px" :
    (widthlua > 400)  ? "28px" :
    (widthlua > 300)  ? "27px":
    (widthlua > 200)  ? "26px" : "25px" ;
    //
    String  font_adjT = (widthlua > 1600) ? "60px":
    (widthlua > 1500)  ? "58px":
    (widthlua > 1400)  ? "58px" :
    (widthlua > 1300)  ? "57px":
    (widthlua > 1200)  ? "55px" :
    (widthlua > 1100)  ? "53px":
    (widthlua > 1000)  ? "52px" :
    (widthlua > 900)  ? "52px":
    (widthlua > 800)  ? "50px" :
    (widthlua > 700)  ? "49px" :
    (widthlua > 600)  ? "48px" :
    (widthlua > 500)  ? "46px" :
    (widthlua > 400)  ? "45x" :
    (widthlua > 300)  ? "44px":
    (widthlua > 200)  ? "43px" : "42px" ;
    //
    Color _ck0 = Color.fromRGBO(0, 0, 0, 0.0);
    Color _ck7 = Color.fromRGBO(255, 0, 0, 0.4);
    Color _ck6 = Color.fromRGBO(246,151,53, 0.4);
    Color _ck5 = Color.fromRGBO(255,255,0, 0.4);
    Color _ck4 = Color.fromRGBO(51,255,0, 0.4);
    Color _ck3 = Color.fromRGBO(0,204,255, 0.4);
    Color _ck2 = Color.fromRGBO(0,0,102, 0.4);
    Color _ck1 = Color.fromRGBO(153,0,255, 0.4);
    //
    Color _ck1i = Color.fromRGBO(255, 0, 0, 1.0);
    Color _ck2i = Color.fromRGBO(246,151,53, 1.0);
    Color _ck3i = Color.fromRGBO(255,255,0, 1.0);
    Color _ck4i = Color.fromRGBO(51,255,0, 1.0);
    Color _ck5i = Color.fromRGBO(0,204,255, 1.0);
    Color _ck6i = Color.fromRGBO(0,0,102, 1.0);
    Color _ck7i = Color.fromRGBO(153,0,255, 1.0);
    //
    Color _ck1f = Color.fromRGBO(255, 0, 0, 0.1);
    Color _ck2f = Color.fromRGBO(246,151,53, 0.1);
    Color _ck3f = Color.fromRGBO(255,255,0, 0.1);
    Color _ck4f = Color.fromRGBO(51,255,0, 0.1);
    Color _ck5f = Color.fromRGBO(0,204,255, 0.1);
    Color _ck6f = Color.fromRGBO(0,0,102, 0.1);
    Color _ck7f = Color.fromRGBO(153,0,255, 0.1);
    String NomeHtml = widget._nome;
//
  String _t1d_m1d =
  "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;BÁSICO</strong> está&#32;em&#32;estado <br></p>"+
  "<p align='center' style='font-size:$font_adj'><strong>FORTEMENTE BLOQUEADO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> depressão, medos, sensação de abandono,  sensação de escassez (avareza), desânimo, dores nas pernas e pés. <br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong>Atividade física, boa alimentação com raízes  e com alimentos de coloração vermelha (beterraba, açaí) e sintonia com cristais  vermelhos (Jaspe, granada) e cinzas ou negros (hematita, ônix, turmalina negra)</p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra</strong>: o  que é estar em segurança?<br></p>";

  String _t1d_m2d =
  "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;BÁSICO</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>BLOQUEADO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> depressão, medos, sensação de abandono,  sensação de escassez (avareza), desânimo, dores nas pernas e pés. <br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong>Atividade física, boa alimentação com raízes  e com alimentos de coloração vermelha (beterraba, açaí) e sintonia com cristais  vermelhos (Jaspe, granada) e cinzas ou negros (hematita, ônix, turmalina negra)</p>"+

  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra</strong>: o  que é estar em segurança?<br></p>";

  String _t1d_m3d =
  "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;BÁSICO</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>LEVEMENTE BLOQUEADO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> depressão, medos, sensação de abandono,  sensação de escassez (avareza), desânimo, dores nas pernas e pés. <br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong>Atividade física, boa alimentação com raízes  e com alimentos de coloração vermelha (beterraba, açaí) e sintonia com cristais  vermelhos (Jaspe, granada) e cinzas ou negros (hematita, ônix, turmalina negra)</p>"+

  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra</strong>: o  que é estar em segurança?<br></p>";
  String _t1d_m4d =

  "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;BÁSICO</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>LEVEMENTE ABERTO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> depressão, medos, sensação de abandono,  sensação de escassez (avareza), desânimo, dores nas pernas e pés. <br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong>Atividade física, boa alimentação com raízes  e com alimentos de coloração vermelha (beterraba, açaí) e sintonia com cristais  vermelhos (Jaspe, granada) e cinzas ou negros (hematita, ônix, turmalina negra)</p>"+

  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra</strong>: o  que é estar em segurança?<br></p>";
  String _t1d_m5d =

  "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;BÁSICO</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>ABERTO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> depressão, medos, sensação de abandono,  sensação de escassez (avareza), desânimo, dores nas pernas e pés. <br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong>Atividade física, boa alimentação com raízes  e com alimentos de coloração vermelha (beterraba, açaí) e sintonia com cristais  vermelhos (Jaspe, granada) e cinzas ou negros (hematita, ônix, turmalina negra)</p>"+

  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra</strong>: o  que é estar em segurança?<br></p>";

  //
  String _t2d_m1d =
  "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;UMBILICAL ou SEXUAL</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>LEVEMENTE BLOQUEADO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> problemas de relacionamentos, sexualidade, problemas renais e de intestino, dor lombar e infertilidade, possessividade, apego, ciúmes e julgamentos internos e externos. <br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> Dançar, rebolar, beber muita água e alongar-se. Sintonia com cristais de coloração alaranjada (olho de tigre, cornalina, coral)<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu me entrego ao fluir da água! Sou uma pessoa criativa e resiliente.<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> tenho sentido prazer em meus relacionamentos e na vida?<br></p>";

  String _t2d_m2d ="<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;UMBILICAL ou SEXUAL</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>BLOQUEADO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> problemas de relacionamentos, sexualidade, problemas renais e de intestino, dor lombar e infertilidade, possessividade, apego, ciúmes e julgamentos internos e externos. <br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> Dançar, rebolar, beber muita água e alongar-se. Sintonia com cristais de coloração alaranjada (olho de tigre, cornalina, coral)<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu me entrego ao fluir da água! Sou uma pessoa criativa e resiliente.<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> tenho sentido prazer em meus relacionamentos e na vida?<br></p>";

  String _t2d_m3d ="<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;UMBILICAL ou SEXUAL</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>LEVEMENTE BLOQUEADO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> problemas de relacionamentos, sexualidade, problemas renais e de intestino, dor lombar e infertilidade, possessividade, apego, ciúmes e julgamentos internos e externos. <br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> Dançar, rebolar, beber muita água e alongar-se. Sintonia com cristais de coloração alaranjada (olho de tigre, cornalina, coral)<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu me entrego ao fluir da água! Sou uma pessoa criativa e resiliente.<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> tenho sentido prazer em meus relacionamentos e na vida?<br></p>";


  String _t2d_m4d = "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;UMBILICAL ou SEXUAL</strong> está&#32;em&#32;estado "
   "<p align='center' style='font-size:$font_adj'><strong>LEVEMENTE ABERTO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> problemas de relacionamentos, sexualidade, problemas renais e de intestino, dor lombar e infertilidade, possessividade, apego, ciúmes e julgamentos internos e externos. <br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> Dançar, rebolar, beber muita água e alongar-se. Sintonia com cristais de coloração alaranjada (olho de tigre, cornalina, coral)<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu me entrego ao fluir da água! Sou uma pessoa criativa e resiliente.<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> tenho sentido prazer em meus relacionamentos e na vida?<br></p>";

  String _t2d_m5d = "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;UMBILICAL ou SEXUAL</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>ABERTO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> problemas de relacionamentos, sexualidade, problemas renais e de intestino, dor lombar e infertilidade, possessividade, apego, ciúmes e julgamentos internos e externos. <br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> Dançar, rebolar, beber muita água e alongar-se. Sintonia com cristais de coloração alaranjada (olho de tigre, cornalina, coral)<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu me entrego ao fluir da água! Sou uma pessoa criativa e resiliente.<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> tenho sentido prazer em meus relacionamentos e na vida?<br></p>";
  //
  String _t3d_m1d =
  "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DO PLEXO SOLAR</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>FORTEMENTE BLOQUEADO</strong></p>"+

  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> dominação, rejeição, submissão, dores abdominais, úlceras gástricas e doenças hepáticas<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> atividades em grupo, exercícios de yoga e trabalhos de auto-conhecimento. Sintonia com cristais de coloração amarela (citrino, olho de tigre, âmbar) e sintonia com o Fogo.<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu sou forte como o fogo! Sou um com os outros!<br></p>"
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> Quem sou eu? <br></p>";

  String _t3d_m2d = "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DO PLEXO SOLAR</strong> está&#32;em&#32;estado "
   "<p align='center' style='font-size:$font_adj'><strong>BLOQUEADO</strong></p>"+

  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> dominação, rejeição, submissão, dores abdominais, úlceras gástricas e doenças hepáticas<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> atividades em grupo, exercícios de yoga e trabalhos de auto-conhecimento. Sintonia com cristais de coloração amarela (citrino, olho de tigre, âmbar) e sintonia com o Fogo.<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu sou forte como o fogo! Sou um com os outros!<br></p>"
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> Quem sou eu? <br></p>";

  String _t3d_m3d ="<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DO PLEXO SOLAR</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>LEVEMENTE BLOQUEADO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> dominação, rejeição, submissão, dores abdominais, úlceras gástricas e doenças hepáticas<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> atividades em grupo, exercícios de yoga e trabalhos de auto-conhecimento. Sintonia com cristais de coloração amarela (citrino, olho de tigre, âmbar) e sintonia com o Fogo.<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu sou forte como o fogo! Sou um com os outros!<br></p>"
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> Quem sou eu? <br></p>";

  String _t3d_m4d = "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DO PLEXO SOLAR</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>LEVEMENTE ABERTO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> dominação, rejeição, submissão, dores abdominais, úlceras gástricas e doenças hepáticas<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> atividades em grupo, exercícios de yoga e trabalhos de auto-conhecimento. Sintonia com cristais de coloração amarela (citrino, olho de tigre, âmbar) e sintonia com o Fogo.<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu sou forte como o fogo! Sou um com os outros!<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> Quem sou eu? <br></p>";


  String _t3d_m5d = "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DO PLEXO SOLAR</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>ABERTO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> dominação, rejeição, submissão, dores abdominais, úlceras gástricas e doenças hepáticas<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> atividades em grupo, exercícios de yoga e trabalhos de auto-conhecimento. Sintonia com cristais de coloração amarela (citrino, olho de tigre, âmbar) e sintonia com o Fogo.<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu sou forte como o fogo! Sou um com os outros!<br></p>"
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> Quem sou eu? <br></p>";

  //
  String _t4d_m1d =
  "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DO CORAÇÃO ou CARDÍACO</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>FORTEMENTE BLOQUEADO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> ressentimento, mágoa, doenças autoimune, carcinomas pulmonares e de mamas, dissolver-se nas dores alheias.<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> respiração consciente e meditação, trabalhos voluntários. Sintonia com cristais verdes ou rosa (quartzo rosa, quartzo verde, Jade)<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu sou amor e sou amado! Eu sou um com o Todo!<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> Quem está no comando do seu viver, sua mente ou seu coração?<br></p>";

  String _t4d_m2d =         "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DO CORAÇÃO ou CARDÍACO</strong> está&#32;em&#32;estado "+
      "<p align='center' style='font-size:$font_adj'><strong>FORTEMENTE BLOQUEADO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> ressentimento, mágoa, doenças autoimune, carcinomas pulmonares e de mamas, dissolver-se nas dores alheias.<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> respiração consciente e meditação, trabalhos voluntários. Sintonia com cristais verdes ou rosa (quartzo rosa, quartzo verde, Jade)<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu sou amor e sou amado! Eu sou um com o Todo!<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> Quem está no comando do seu viver, sua mente ou seu coração?<br></p>";

  String _t4d_m3d ="<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DO CORAÇÃO ou CARDÍACO</strong> está&#32;em&#32;estado "
   "<p align='center' style='font-size:$font_adj'><strong>LEVEMENTE BLOQUEADO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> ressentimento, mágoa, doenças autoimune, carcinomas pulmonares e de mamas, dissolver-se nas dores alheias.<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> respiração consciente e meditação, trabalhos voluntários. Sintonia com cristais verdes ou rosa (quartzo rosa, quartzo verde, Jade)<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu sou amor e sou amado! Eu sou um com o Todo!<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> Quem está no comando do seu viver, sua mente ou seu coração?<br></p>";

  String _t4d_m4d =         "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DO CORAÇÃO ou CARDÍACO</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>LEVEMENTE ABERTO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> ressentimento, mágoa, doenças autoimune, carcinomas pulmonares e de mamas, dissolver-se nas dores alheias.<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> respiração consciente e meditação, trabalhos voluntários. Sintonia com cristais verdes ou rosa (quartzo rosa, quartzo verde, Jade)<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu sou amor e sou amado! Eu sou um com o Todo!<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> Quem está no comando do seu viver, sua mente ou seu coração?<br></p>"
  ;
  String _t4d_m5d =         "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DO CORAÇÃO ou CARDÍACO</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>ABERTO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> ressentimento, mágoa, doenças autoimune, carcinomas pulmonares e de mamas, dissolver-se nas dores alheias.<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> respiração consciente e meditação, trabalhos voluntários. Sintonia com cristais verdes ou rosa (quartzo rosa, quartzo verde, Jade)<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu sou amor e sou amado! Eu sou um com o Todo!<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> Quem está no comando do seu viver, sua mente ou seu coração?<br></p>";


  //
  String _t5d_m1d =
  "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DA GARGANTA OU LARÍNGEO</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>FORTEMENTE BLOQUEADO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> medo de mudanças, autoestima baixa, problemas da tireóide, dores de garganta e pescoço, timidez, auto-cobrança<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> olhar o horizonte, cantar. Sintonia com cristais de cor azul céu (amazonita, turmalina , água marinha).<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu falo a verdade e me expresso com verdade. <br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> como você tem se expressado ao mundo?<br></p>";

  String _t5d_m2d =     "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DA GARGANTA OU LARÍNGEO</strong> está&#32;em&#32;estado "
   "<p align='center' style='font-size:$font_adj'><strong>BLOQUEADO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> medo de mudanças, autoestima baixa, problemas da tireóide, dores de garganta e pescoço, timidez, auto-cobrança<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> olhar o horizonte, cantar. Sintonia com cristais de cor azul céu (amazonita, turmalina , água marinha).<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu falo a verdade e me expresso com verdade. <br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> como você tem se expressado ao mundo?<br></p>";

  String _t5d_m3d =   "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DA GARGANTA OU LARÍNGEO</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>LEVEMENTE BLOQUEADO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> medo de mudanças, autoestima baixa, problemas da tireóide, dores de garganta e pescoço, timidez, auto-cobrança<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> olhar o horizonte, cantar. Sintonia com cristais de cor azul céu (amazonita, turmalina , água marinha).<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu falo a verdade e me expresso com verdade. <br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> como você tem se expressado ao mundo?<br></p>";

  String _t5d_m4d =  "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DA GARGANTA OU LARÍNGEO</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>LEVEMENTE ABERTO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> medo de mudanças, autoestima baixa, problemas da tireóide, dores de garganta e pescoço, timidez, auto-cobrança<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> olhar o horizonte, cantar. Sintonia com cristais de cor azul céu (amazonita, turmalina , água marinha).<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu falo a verdade e me expresso com verdade. <br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> como você tem se expressado ao mundo?<br></p>";

  String _t5d_m5d =   "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DA GARGANTA OU LARÍNGEO</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>ABERTO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> medo de mudanças, autoestima baixa, problemas da tireóide, dores de garganta e pescoço, timidez, auto-cobrança<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> olhar o horizonte, cantar. Sintonia com cristais de cor azul céu (amazonita, turmalina , água marinha).<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu falo a verdade e me expresso com verdade. <br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> como você tem se expressado ao mundo?<br></p>";

  //
  String _t6d_m1d =  "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DO FRONTAL ou TERCEIRO OLHO</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>FORTEMENTE BLOQUEADO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> dores de cabeça, problemas nos olhos e ouvidos, mentiras.<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> reconectar-se a sua espiritualidade. Sintonia com cristais da cor azul índigo (lapiz-lázuli, sodalita).<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu Vejo e estou conectado ao Divino!<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> Você tem escutado sua intuição?<br></p>";

  String _t6d_m2d =   "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DO FRONTAL ou TERCEIRO OLHO</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>BLOQUEADO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> dores de cabeça, problemas nos olhos e ouvidos, mentiras.<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> reconectar-se a sua espiritualidade. Sintonia com cristais da cor azul índigo (lapiz-lázuli, sodalita).<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu Vejo e estou conectado ao Divino!<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> Você tem escutado sua intuição?<br></p>";

  String _t6d_m3d =  "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DO FRONTAL ou TERCEIRO OLHO</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>LEVEMENTE BLOQUEADO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> dores de cabeça, problemas nos olhos e ouvidos, mentiras.<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> reconectar-se a sua espiritualidade. Sintonia com cristais da cor azul índigo (lapiz-lázuli, sodalita).<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu Vejo e estou conectado ao Divino!<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> Você tem escutado sua intuição?<br></p>";

  String _t6d_m4d =  "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DO FRONTAL ou TERCEIRO OLHO</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>LEVEMENTE ABERTO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> dores de cabeça, problemas nos olhos e ouvidos, mentiras.<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> reconectar-se a sua espiritualidade. Sintonia com cristais da cor azul índigo (lapiz-lázuli, sodalita).<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu Vejo e estou conectado ao Divino!<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> Você tem escutado sua intuição?<br></p>";

  String _t6d_m5d =  "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DO FRONTAL ou TERCEIRO OLHO</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>ABERTO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> dores de cabeça, problemas nos olhos e ouvidos, mentiras.<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> reconectar-se a sua espiritualidade. Sintonia com cristais da cor azul índigo (lapiz-lázuli, sodalita).<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu Vejo e estou conectado ao Divino!<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> Você tem escutado sua intuição?<br></p>";


  //
  String _t7d_m1d =
  "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DA COROA</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>FORTEMENTE BLOQUEADO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> descrença, apatia<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> Buscar através da espiritualidade a compreensão da missão de vida. Sintonia com cristais de cor violeta (quatzo violeta, ametista, quatzo branco)<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu sou protegido e guiado sempre pelas mãos do Divino. <br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> Honro e aceito o Divino que habita em mim!<br></p>";

  String _t7d_m2d =
  "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DA COROA</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>BLOQUEADO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> descrença, apatia<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> Buscar através da espiritualidade a compreensão da missão de vida. Sintonia com cristais de cor violeta (quatzo violeta, ametista, quatzo branco)<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu sou protegido e guiado sempre pelas mãos do Divino. <br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> Honro e aceito o Divino que habita em mim!<br></p>";

  String _t7d_m3d =
  "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DA COROA</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>LEVEMENTE BLOQUEADO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> descrença, apatia<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> Buscar através da espiritualidade a compreensão da missão de vida. Sintonia com cristais de cor violeta (quatzo violeta, ametista, quatzo branco)<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu sou protegido e guiado sempre pelas mãos do Divino. <br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> Honro e aceito o Divino que habita em mim!<br></p>";

  String _t7d_m4d =
  "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DA COROA</strong> está&#32;em&#32;estado <br></p>"+
      "<p align='center' style='font-size:$font_adj'><strong>LEVEMENTE ABERTO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> descrença, apatia<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> Buscar através da espiritualidade a compreensão da missão de vida. Sintonia com cristais de cor violeta (quatzo violeta, ametista, quatzo branco)<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu sou protegido e guiado sempre pelas mãos do Divino. <br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> Honro e aceito o Divino que habita em mim!<br></p>";

  String _t7d_m5d =
  "<p align='center' style='font-size:$font_adj'>$NomeHtml</p>"+
  "<p align='center' style='font-size:$font_adj'>O&#32;seu <strong>CHACKA&#32;DA COROA</strong> está&#32;em&#32;estado <br></p>"+
   "<p align='center' style='font-size:$font_adj'><strong>ABERTO</strong></p>"+
  "<p align='center'  style='font-size:$font_adj'><strong>SINAIS  DE BLOQUEIOS ENERGÉTICOS:</strong> descrença, apatia<br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Dicas  de desbloqueio: </strong> Buscar através da espiritualidade a compreensão da missão de vida. Sintonia com cristais de cor violeta (quatzo violeta, ametista, quatzo branco)<br></p>"+

  "<p align='center' style='font-size:$font_adj'><br /> <strong> Frase: </strong> Eu sou protegido e guiado sempre pelas mãos do Divino. <br></p>"+
  "<p align='center' style='font-size:$font_adj'><br /><strong>Reflexão para este  chakra:</strong> Honro e aceito o Divino que habita em mim!<br></p>";

  //

//
    Color _cv1 =  (widget._score1c < 4) ? Color.fromRGBO(255, 0, 0, 0.2) :
                  (widget._score1c > 3 && widget._score1c < 7) ? Color.fromRGBO(255, 0, 0, 0.4) :
                  (widget._score1c > 6 && widget._score1c < 10) ? Color.fromRGBO(255, 0, 0, 0.6) :
                  (widget._score1c > 9 && widget._score1c < 12) ? Color.fromRGBO(255, 0, 0, 0.8) :
                  (widget._score1c > 12) ? Color.fromRGBO(255, 0, 0, 1.0) :  Color.fromRGBO(255, 0, 0, 0.1);

    Color _cv2 =  (widget._score2c < 4) ? Color.fromRGBO(246,151,53, 0.2) :
                  (widget._score2c > 3 && widget._score2c < 7) ? Color.fromRGBO(246,151,53, 0.4) :
                  (widget._score2c > 6 && widget._score2c < 10) ? Color.fromRGBO(246,151,53, 0.6) :
                  (widget._score2c > 9 && widget._score2c < 12) ? Color.fromRGBO(246,151,53, 0.8) :
                  (widget._score2c > 11) ? Color.fromRGBO(246,151,53, 1.0) :  Color.fromRGBO(246,151,53, 0.1);

    Color _cv3 =  (widget._score3c < 4) ? Color.fromRGBO(255,255,0, 0.2) :
                  (widget._score3c > 3 && widget._score3c < 7) ? Color.fromRGBO(255,255,0, 0.4) :
                  (widget._score3c > 6 && widget._score3c < 10) ? Color.fromRGBO(255,255,0, 0.6) :
                  (widget._score3c > 9 && widget._score3c < 12) ? Color.fromRGBO(255,255,0, 0.8) :
                  (widget._score3c > 11) ? Color.fromRGBO(255,255,0, 1.0) :  Color.fromRGBO(255,255,0, 0.1);

    Color _cv4 =  (widget._score4c < 4) ? Color.fromRGBO(51,255,0, 0.2) :
                  (widget._score4c > 3 && widget._score4c < 7) ? Color.fromRGBO(51,255,0, 0.4) :
                  (widget._score4c > 6 && widget._score4c < 10) ? Color.fromRGBO(51,255,0, 0.6) :
                  (widget._score4c > 9 && widget._score4c < 12) ? Color.fromRGBO(51,255,0, 0.8) :
                  (widget._score4c > 11) ? Color.fromRGBO(51,255,0, 1.0) :  Color.fromRGBO(51,255,0, 0.1);

    Color _cv5 =  (widget._score5c < 4) ? Color.fromRGBO(0,204,255, 0.2) :
                  (widget._score5c > 3 && widget._score5c < 7) ? Color.fromRGBO(0,204,255, 0.4) :
                  (widget._score5c > 6 && widget._score5c < 10) ? Color.fromRGBO(0,204,255, 0.6) :
                  (widget._score5c > 9 && widget._score5c < 12) ? Color.fromRGBO(0,204,255, 0.8) :
                  (widget._score5c > 11) ? Color.fromRGBO(0,204,255, 1.0) :  Color.fromRGBO(0,204,255, 0.1);

    Color _cv6 =  (widget._score6c < 4) ? Color.fromRGBO(0,0,102, 0.2) :
                  (widget._score6c > 3 && widget._score6c < 7) ? Color.fromRGBO(0,0,102, 0.4) :
                  (widget._score6c > 6 && widget._score6c < 10) ? Color.fromRGBO(0,0,102, 0.6) :
                  (widget._score6c > 9 && widget._score6c < 12) ? Color.fromRGBO(0,0,102, 0.8) :
                  (widget._score6c > 11) ? Color.fromRGBO(0,0,102, 1.0) :  Color.fromRGBO(0,0,102, 0.1);

    Color _cv7 =  (widget._score7c < 4) ? Color.fromRGBO(153,0,255, 0.2) :
                  (widget._score7c > 3 && widget._score7c < 7) ? Color.fromRGBO(153,0,255, 0.4) :
                  (widget._score7c > 6 && widget._score7c < 10) ? Color.fromRGBO(153,0,255, 0.6) :
                  (widget._score7c > 9 && widget._score7c < 12) ? Color.fromRGBO(153,0,255, 0.8) :
                  (widget._score7c > 11) ? Color.fromRGBO(153,0,255, 1.0) :  Color.fromRGBO(153,0,255, 0.1);


    //


    String _t1d =  (widget._score1c < 4) ? _t1d_m1d :
    (widget._score1c > 3 && widget._score1c < 7) ? _t1d_m2d :
    (widget._score1c > 6 && widget._score1c < 10) ? _t1d_m3d :
    (widget._score1c > 9 && widget._score1c < 12) ? _t1d_m4d :
    (widget._score1c > 11) ? _t1d_m5d :  " ";
//
    String _t2d =  (widget._score2c < 4) ? _t2d_m1d :
    (widget._score2c > 3 && widget._score2c < 7) ? _t2d_m2d :
    (widget._score2c > 6 && widget._score2c < 10) ? _t2d_m3d :
    (widget._score2c > 9 && widget._score2c < 12) ? _t2d_m4d :
    (widget._score2c > 11) ? _t2d_m5d :  " ";
//
    String _t3d =  (widget._score3c < 4) ? _t3d_m1d :
    (widget._score3c > 3 && widget._score3c < 7) ? _t3d_m2d :
    (widget._score3c > 6 && widget._score3c < 10) ? _t3d_m3d :
    (widget._score3c > 9 && widget._score3c < 12) ? _t3d_m4d :
    (widget._score3c > 11) ? _t3d_m5d :  " ";
//
    String _t4d =  (widget._score4c < 4) ? _t4d_m1d :
    (widget._score4c > 3 && widget._score4c < 7) ? _t4d_m2d :
    (widget._score4c > 6 && widget._score4c < 10) ? _t4d_m3d :
    (widget._score4c > 9 && widget._score4c < 12) ? _t4d_m4d :
    (widget._score4c > 11) ? _t4d_m5d : "";
//
    String _t5d =  (widget._score5c < 4) ? _t5d_m1d :
    (widget._score5c > 3 && widget._score5c < 7) ? _t5d_m2d :
    (widget._score5c > 6 && widget._score5c < 10) ? _t5d_m3d :
    (widget._score5c > 9 && widget._score5c < 12) ? _t5d_m4d :
    (widget._score5c > 11) ? _t5d_m5d : " ";
//
    String _t6d =  (widget._score6c < 4) ? _t6d_m1d :
    (widget._score6c > 3 && widget._score6c < 7) ? _t6d_m2d :
    (widget._score6c > 6 && widget._score6c < 10) ? _t6d_m3d :
    (widget._score6c > 9 && widget._score6c < 12) ? _t6d_m4d :
    (widget._score6c > 11) ? _t6d_m5d :  " ";
//
    String _t7d =  (widget._score7c < 4) ? _t7d_m1d :
    (widget._score7c > 3 && widget._score7c < 7) ? _t7d_m2d :
    (widget._score7c > 6 && widget._score7c < 10) ? _t7d_m3d :
    (widget._score7c > 9 && widget._score7c < 12) ? _t7d_m4d :
    (widget._score7c > 11) ? _t7d_m5d :  " ";
//



    double  fonttit = (widthlua > 1600) ? 26:
    (widthlua > 1500)  ? 26 :
    (widthlua > 1400)  ? 25 :
    (widthlua > 1300)  ? 24:
    (widthlua > 1200)  ? 23 :
    (widthlua > 1100)  ? 22:
    (widthlua > 1000)  ? 21 :
    (widthlua > 900)  ? 21:
    (widthlua > 800)  ? 19 :
    (widthlua > 700)  ? 18 :
    (widthlua > 600)  ? 17 :
    (widthlua > 500)  ? 16 :
    (widthlua > 400)  ? 14 :
    (widthlua > 300)  ? 12:
    (widthlua > 200)  ? 11 : 10 ;

    double  _raio = (heightlua > 1600) ? 35:
    (heightlua > 1500)  ? 25 :
    (heightlua > 1400)  ? 24 :
    (heightlua > 1300)  ? 23:
    (heightlua > 1200)  ? 22 :
    (heightlua > 1100)  ? 21:
    (heightlua > 1000)  ? 20 :
    (heightlua > 900)  ? 19:
    (heightlua > 800)  ? 18 :
    (heightlua > 700)  ? 15 :
    (heightlua > 600)  ? 14 :
    (heightlua > 500)  ? 13 :
    (heightlua > 400)  ? 12:
    (heightlua > 300)  ? 10:
    (heightlua > 200)  ? 10 : 9;



    double  _value1 = widget._score1c.toDouble();
    double  _value2 = widget._score2c.toDouble();
    double  _value3 = widget._score3c.toDouble();
    double  _value4 = widget._score4c.toDouble();
    double  _value5 = widget._score5c.toDouble();
    double  _value6 = widget._score6c.toDouble();
    double  _value7 = widget._score7c.toDouble();


    double  wb1 = widthlua * 1.00;
    double  wb2 = widthlua * 0.85;
    double  wbm = widthlua * 0.15;



    double  h10p1 = heightlua * 0.117;
    double  h10p2 = heightlua * 0.12;
    double  h10p3 = heightlua * 0.12;
    double  h10p4 = heightlua * 0.120;
    double  h10p5 = heightlua * 0.12;
    double  h10p6 = heightlua * 0.123;
    double  h10p7 = heightlua * 0.117;

    double  hspace = heightlua * 0.02;

    return Scaffold(
      body: Container(
        width: widthlua,
        height: heightlua,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/chakras2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              //
              //lado esquerdo
              //
              //
              Visibility(
                  visible: _descck,
              child: Container(
                  color: _f1 ? _ck7:
                  _f2 ? _ck6:
                  _f3 ? _ck5:
                  _f4 ? _ck4:
                  _f5 ? _ck3:
                  _f6 ? _ck2:
                  _f7 ? _ck1: _ck0,
                  width: _tela? wb1: 0,
                  child:Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                width:  heightlua* 0.15,
                                height: heightlua* 0.15,
                                child: MaterialButton(
                                  child: Image(image:AssetImage(
                                      _f1 ?  "assets/images/ck1.png" :
                                      _f2 ?  "assets/images/ck2.png" :
                                      _f3 ?  "assets/images/ck3.png" :
                                      _f4 ?  "assets/images/ck4.png" :
                                      _f5 ?  "assets/images/ck5.png" :
                                      _f6 ?  "assets/images/ck6.png" :
                                      _f7 ?  "assets/images/ck7.png" : ""),fit: BoxFit.fill
                                  ),
                                  onPressed: (){
                                    setState(() {
                                      _f1 = _f2 = _f3 = _f4 =_f5 = _f6 = _f7 = _tela = false;  _descck = false;
                                    });
                                  },
                                )),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                            Container(
                                decoration: myBoxDecoration(),
                              width: wb1*0.90,
                                height: heightlua* 0.58,
                              child:SingleChildScrollView(
                             child:Column(
                               children: [
                                 SizedBox(
                                     child: MaterialButton(
                                       child: HtmlWidget(_tmd),
                                       onPressed: (){
                                         setState(() {
                                           _f1 = _f2 = _f3 = _f4 =_f5 = _f6 = _f7 = _tela = false;  _descck = false;
                                         });
                                       },
                                     ))
                               ],
                             ))),
                        Container(
                          color:Colors.white,
                          width: widthlua*0.03,
                          height: heightlua* 0.50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.keyboard_arrow_up, size: 10),
                              SizedBox(height:0.5,
                              child: Text("\n\n\n\n\n\n\n\n\n\n\n\n\n")),
                              Icon(Icons.keyboard_arrow_down, size: 10),
                            ],
                          )

                        )
                            ],
                            ),
                      Row(
                              children: [
                                SizedBox(
                                    width: wb1/2,
                                    height: heightlua* 0.15,
                                    child: MaterialButton(
                                      child:  Image(image:AssetImage("assets/images/poder.png")),
                                      onPressed: (){
                                        _launched = _launchInBrowser("https://transformacaointerna.com.br");
                                        setState(() {
                                          _f1 = _f2 = _f3 = _f4 =_f5 = _f6 = _f7 = false;  _descck = false;
                                        });
                                      },
                                    )),
                                SizedBox(
                                    width: wb1/2,
                                    height: heightlua* 0.15,
                                    child: MaterialButton(
                                      child:  Image(image:AssetImage("assets/images/reike.png")),
                                      onPressed: (){
                                        _launched = _launchInBrowser("https://transformacaointerna.com.br");
                                        setState(() {
                                          _f1 = _f2 = _f3 = _f4 =_f5 = _f6 = _f7 = false;  _descck = false;
                                        });
                                      },
                                    )),
                              ],
                            ),

                      SizedBox(

                                height: heightlua* 0.04,
                                child: MaterialButton(
                                  child: Image(image:AssetImage("assets/images/instajuliana.png")),
                                  onPressed: (){
                                    _launched = _launchInBrowser("https://instagram.com/julianalotumolo?igshid=1q3srrq6ts5ln");
                                    setState(() {
                                      _f1 = _f2 = _f3 = _f4 =_f5 = _f6 = _f7 = false;  _descck = false;
                                    });
                                  },
                                )),
                          ]
                      ))),

              // lado direito
              //
              Visibility(
                   visible: !_descck,
                   child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
//
//  CHAKRA 07
//
                    Container(
                        height:h10p1,

                    child: Row(
                    children: [

                      SizedBox(width: _tela ? 0: wbm,
                              child: Container(
                              width: h10p1,
                              height: h10p1,
                              child: MaterialButton(
                                  color: _ck7f,
                                shape: CircleBorder(side: BorderSide(width: 1, color: Colors.black, style: BorderStyle.none)),
                                child: FaIcon(FontAwesomeIcons.infoCircle,size:heightlua*0.04,color: _ck7i),
                               onPressed: (){
                                  setState(() {
                                    if(_descck == true) {_descck = _tela = false;_f1 = _f2 = _f3 = _f4 =_f5 = _f6 = false;}
                                    if(_f7 == false)
                                      {_f7 = _descck = _tela = true; _tmd = _t7d;}
                                    else if (_f7 == true)
                                      {_f1 = _f2 = _f3 = _f4 =_f5 = _f6 = _f7 = _tela = _descck = false;}

                                     });
                                },
                              )
                              ),
                    ),

                      SizedBox(
                        width: _tela ? 0 : wb2,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      width : _tela ? 0 : wb2 * 0.23,  height: h10p1 * 0.29,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Bloqueado",style: TextStyle(fontSize: fonttit, color: Colors.black, fontWeight: FontWeight.bold,))
                                          ]
                                      )),
                                  Container(
                                      width : _tela ? 0 : wb2 * 0.59,  height: h10p1 * 0.29,
                                      child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text("CHAKRA CORONÁRIO ",style: TextStyle(fontSize: fonttit+2, color: Colors.black, fontWeight: FontWeight.bold,))
                                      ]
                                  )),
                                  Container(
                                      width : _tela ? 0 : wb2 * 0.17,  height: h10p1 * 0.29,
                                     child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: <Widget>[
                                            Text("Aberto  ",style: TextStyle(fontSize: fonttit, color: Colors.black, fontWeight: FontWeight.bold,))
                                          ]
                                      ))
                                ]
                            ),
                            Row(
                                children: <Widget>[
                                  Container(
                                    width: _tela ? 0 : wb2 * 0.92, height: h10p1 * 0.39,
                                      child:
                                      SliderTheme(
                                        data: SliderTheme.of(context).copyWith(
                                          activeTrackColor: _cv7,
                                          inactiveTrackColor: Color.fromRGBO(153,0,255, 0.0),
                                          trackShape: RoundedRectSliderTrackShape(),
                                          trackHeight: 4.0,
                                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: _raio),
                                          thumbColor: _cv7,
                                          overlayColor: Colors.black.withAlpha(32),
                                          overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                                          tickMarkShape: RoundSliderTickMarkShape(),
                                          activeTickMarkColor: Colors.black,
                                          inactiveTickMarkColor: _cv7,
                                          valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                                          valueIndicatorColor: _cv7,
                                          valueIndicatorTextStyle: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                        child: Slider(
                                          value: _value7,
                                          min: 0,
                                          max: 14,
                                          divisions: 14,
                                          label: '$_value7',
                                          onChanged: (value) {
                                            setState(
                                                  () {
                                                _value7 = value;
                                              },
                                            );
                                          },
                                            ),


                            ))]

                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                                                            children: <Widget>[

                                                              Container(
                                                                decoration: BoxDecoration(
                                                                  gradient: LinearGradient(
                                                                    begin: Alignment.topLeft,
                                                                    end: Alignment.bottomRight,
                                                                    stops: [0.3, 1],
                                                                    colors: [
                                                                      Color.fromRGBO(153,0,255, 0.2),
                                                                      Color.fromRGBO(153,0,255, 1.0)
                                                                    ],
                                                                  ),
                                                                ),
                                                                width: _tela ? 0 : wb2 * 0.96, height: h10p1 * 0.29,


                                                                ),
                                                            ],

                                                          )
                            ],
                          ),
                        )])),
                    //
                      SizedBox(height: _tela? 0 : 5),
//
//  CHAKRA 06
//
                   Container(
                       height:h10p2,
                    
                       child: Row(
                    children: [
                       SizedBox(width: wbm,
                        child:
                        Container(
                            width: h10p2,
                            height: h10p2,
                            child: MaterialButton(
                                  color: _ck6f,
                              shape: CircleBorder(side: BorderSide(width: 0, color: Colors.black, style: BorderStyle.none)),
                              child: FaIcon(FontAwesomeIcons.infoCircle,size:heightlua*0.04,color: _ck6i),
                                 onPressed: (){
                                setState(() {
                                if(_descck == true) {_descck = _tela = false;_f1 = _f2 = _f3 = _f4 =_f5 = _f7 = false;}
                                  if(_f6 == false)
                                  {_f6 = true;  _descck = _tela = true; _tmd = _t6d;}
                                  else if (_f6 == true)
                                  {_f1 = _f2 = _f3 = _f4 =_f5 = _f6 = _tela = _f7 = false;  _descck = false;}
                                });
                      },
                            )
                        ),
                      ),
                      SizedBox(
                        width: _tela ? 0 : wb2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      width : _tela ? 0 : wb2 * 0.23,  height: h10p1 * 0.29,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Bloqueado",style: TextStyle(fontSize: fonttit, color: Colors.black, fontWeight: FontWeight.bold,))
                                          ]
                                      )),
                                  Container(
                                      width : _tela ? 0 : wb2 * 0.59,  height: h10p1 * 0.29,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text("CHAKRA FRONTAL ",style: TextStyle(fontSize: fonttit+2, color: Colors.black, fontWeight: FontWeight.bold,))
                                          ]
                                      )),
                                  Container(
                                      width : _tela ? 0 : wb2 * 0.17,  height: h10p1 * 0.29,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: <Widget>[
                                            Text("Aberto  ",style: TextStyle(fontSize: fonttit, color: Colors.black, fontWeight: FontWeight.bold,))
                                          ]
                                      ))
                                ]
                            ),
                            Row(
                                children: <Widget>[
                                  Container(
                                    width: _tela ? 0 : wb2 * 0.92, height: h10p2 * 0.39,
                                      child:
                                      SliderTheme(
                                        data: SliderTheme.of(context).copyWith(
                                          activeTrackColor: _cv6,
                                          inactiveTrackColor: Color.fromRGBO(0,0,102, 0.0),
                                          trackShape: RoundedRectSliderTrackShape(),
                                          trackHeight: 4.0,
                                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: _raio),
                                          thumbColor: _cv6,
                                          overlayColor: Colors.black.withAlpha(32),
                                          overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                                          tickMarkShape: RoundSliderTickMarkShape(),
                                          activeTickMarkColor: Colors.black,
                                          inactiveTickMarkColor: _cv6,
                                          valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                                          valueIndicatorColor: _cv6,
                                          valueIndicatorTextStyle: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                        child: Slider(
                                          value: _value6,
                                          min: 0,
                                          max: 14,
                                          divisions: 14,
                                          label: '$_value6',
                                          onChanged: (value) {
                                            setState(
                                                  () {
                                                _value6 = value;
                                              },
                                            );
                                          },
                                        ),


                                      ))]

                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      stops: [0.3, 1],
                                      colors: [
                                        Color.fromRGBO(0,0,102, 0.2),
                                        Color.fromRGBO(0,0,102, 1.0)
                                      ],
                                    ),
                                  ),
                                  width: _tela ? 0 : wb2 * 0.96, height: h10p2 * 0.29,


                                  ),
                              ],

                            )
                          ],
                        ),
                      )])),
                    SizedBox(height: _tela? 0 : 5),
//
//  CHAKRA 05
//
                   Container(
                       height:h10p3,

                       child: Row(
                    children: [

                    SizedBox(width: wbm,
                    child:
                    Container(
                        width: h10p3,
                        height: h10p3,
                        child: MaterialButton(
                                  color: _ck5f,
                          shape: CircleBorder(side: BorderSide(width: 0, color: Colors.black, style: BorderStyle.none)),
                          child: FaIcon(FontAwesomeIcons.infoCircle,size:heightlua*0.04,color: _ck5i),
                             onPressed: (){
                               setState(() {
                             if(_descck == true) {_descck = _tela = false;_f1 = _f2 = _f3 = _f4 = _f6 = _f7 = false;}
                                 if( _f5 == false)
                                 { _f5 = true;  _descck =  _tela =true; _tmd = _t5d;}
                                 else if ( _f5 == true)
                                 {_f1 = _f2 = _f3 = _f4 =_f5 = _f6 = _f7 = _tela = false;  _descck = false;}
                               });
                      },
                        )
                    ),
                    ),
                      SizedBox(
                        width: _tela ? 0 : wb2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      width : _tela ? 0 : wb2 * 0.23,  height: h10p1 * 0.29,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Bloqueado",style: TextStyle(fontSize: fonttit, color: Colors.black, fontWeight: FontWeight.bold,))
                                          ]
                                      )),
                                  Container(
                                      width : _tela ? 0 : wb2 * 0.59,  height: h10p1 * 0.29,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text("CHACKA LARÍNGEO",style: TextStyle(fontSize: fonttit+2, color: Colors.black, fontWeight: FontWeight.bold,))
                                          ]
                                      )),
                                  Container(
                                      width : _tela ? 0 : wb2 * 0.17,  height: h10p1 * 0.29,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: <Widget>[
                                            Text("Aberto  ",style: TextStyle(fontSize: fonttit, color: Colors.black, fontWeight: FontWeight.bold,))
                                          ]
                                      ))
                                ]
                            ),
                            Row(
                                children: <Widget>[
                                  Container(
                                    width: _tela ? 0 : wb2 * 0.92, height: h10p3 * 0.39,
                                      child:
                                      SliderTheme(
                                        data: SliderTheme.of(context).copyWith(
                                          activeTrackColor: _cv5,
                                          inactiveTrackColor: Color.fromRGBO(0,204,255, 0.0),
                                          trackShape: RoundedRectSliderTrackShape(),
                                          trackHeight: 4.0,
                                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: _raio),
                                          thumbColor: _cv5,
                                          overlayColor: Colors.black.withAlpha(32),
                                          overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                                          tickMarkShape: RoundSliderTickMarkShape(),
                                          activeTickMarkColor: Colors.black,
                                          inactiveTickMarkColor: _cv5,
                                          valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                                          valueIndicatorColor: _cv5,
                                          valueIndicatorTextStyle: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                        child: Slider(
                                          value: _value5,
                                          min: 0,
                                          max: 14,
                                          divisions: 14,
                                          label: '$_value5',
                                          onChanged: (value) {
                                            setState(
                                                  () {
                                                _value5 = value;
                                              },
                                            );
                                          },
                                        ),


                                      ))]

                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      stops: [0.3, 1],
                                      colors: [
                                        Color.fromRGBO(0,204,255, 0.2),
                                        Color.fromRGBO(0,204,255, 1.0)
                                      ],
                                    ),
                                  ),
                                  width: _tela ? 0 : wb2 * 0.96, height: h10p3 * 0.29,


                                  ),
                              ],

                            )
                          ],
                        ),
                      )])),
                    SizedBox(height: _tela? 0 : 5),
//
//  CHAKRA 04
//
                   Container(
                       height:h10p4,

                       child: Row(
                    children: [

                      SizedBox(width: wbm,
                        child:
                        Container(
                            width: h10p4,
                            height: h10p4,
                            child: MaterialButton(
                                  color: _ck4f,
                              shape: CircleBorder(side: BorderSide(width: 0, color: Colors.black, style: BorderStyle.none)),
                              child: FaIcon(FontAwesomeIcons.infoCircle,size:heightlua*0.04,color: _ck4i),
                                 onPressed: (){
                                   setState(() {
                                   if(_descck == true) {_descck = _tela = false;_f1 = _f2 = _f3 =_f5 = _f6 = _f7 = false;}
                                     if( _f4 == false)
                                     { _f4 = true;  _descck = _tela = true; _tmd = _t4d;}
                                     else if ( _f4 == true)
                                     {_f1 = _f2 = _f3 = _f4 =_f5 = _f6 = _f7 = _tela = false;  _descck = false;}
                                   });
                              },
                            )
                        ),
                      ),
                      SizedBox(
                        width: _tela ? 0 : wb2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      width : _tela ? 0 : wb2 * 0.23,  height: h10p1 * 0.29,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Bloqueado",style: TextStyle(fontSize: fonttit, color: Colors.black, fontWeight: FontWeight.bold,))
                                          ]
                                      )),
                                  Container(
                                      width : _tela ? 0 : wb2 * 0.59,  height: h10p1 * 0.29,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text("CHACKA CARDÍACO",style: TextStyle(fontSize: fonttit+2, color: Colors.black, fontWeight: FontWeight.bold,))
                                          ]
                                      )),
                                  Container(
                                      width : _tela ? 0 : wb2 * 0.17,  height: h10p1 * 0.29,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: <Widget>[
                                            Text("Aberto  ",style: TextStyle(fontSize: fonttit, color: Colors.black, fontWeight: FontWeight.bold,))
                                          ]
                                      ))
                                ]
                            ),
                            Row(
                                children: <Widget>[
                                  Container(
                                    width: _tela ? 0 : wb2 * 0.92, height: h10p4 * 0.39,
                                      child:
                                      SliderTheme(
                                        data: SliderTheme.of(context).copyWith(
                                          activeTrackColor: _cv4,
                                          inactiveTrackColor: Color.fromRGBO(51,255,0, 0.0),
                                          trackShape: RoundedRectSliderTrackShape(),
                                          trackHeight: 4.0,
                                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: _raio),
                                          thumbColor: _cv4,
                                          overlayColor: Colors.black.withAlpha(32),
                                          overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                                          tickMarkShape: RoundSliderTickMarkShape(),
                                          activeTickMarkColor: Colors.black,
                                          inactiveTickMarkColor: _cv4,
                                          valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                                          valueIndicatorColor: _cv4,
                                          valueIndicatorTextStyle: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                        child: Slider(
                                          value: _value4,
                                          min: 0,
                                          max: 14,
                                          divisions: 14,
                                          label: '$_value4',
                                          onChanged: (value) {
                                            setState(
                                                  () {
                                                _value4 = value;
                                              },
                                            );
                                          },
                                        ),


                                      ))]

                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      stops: [0.3, 1],
                                      colors: [
                                        Color.fromRGBO(51,255,0, 0.2),
                                        Color.fromRGBO(51,255,0, 1.0)
                                      ],
                                    ),
                                  ),
                                  width: _tela ? 0 : wb2 * 0.96, height: h10p4 * 0.29,


                                  ),
                              ],

                            )
                          ],
                        ),
                      )])),
                    SizedBox(height: _tela? 0 : 5),
//
//  CHAKRA 03
//
                   Container(
                       height:h10p5,

                       child: Row(
                    children: [

                      SizedBox(width: wbm,
                        child:
                        Container(
                            width: h10p5,
                            height: h10p5,
                            child: MaterialButton(
                                  color: _ck3f,
                              shape: CircleBorder(side: BorderSide(width: 0, color: Colors.black, style: BorderStyle.none)),
                              child: FaIcon(FontAwesomeIcons.infoCircle,size:heightlua*0.04,color: _ck3i),
                                 onPressed: (){
                                   setState(() {
                                   if(_descck == true) {_descck = _tela = false;_f1 = _f2 = _f4 =_f5 = _f6 = _f7 = false;}
                                     if( _f3 == false)
                                     { _f3 = true;  _descck = _tela = true; _tmd = _t3d;}
                                     else if ( _f3 == true)
                                     {_f1 = _f2 = _f3 = _f4 =_f5 = _f6 = _f7 = _tela = false;  _descck = false;}
                                   });
                      },
                            )
                        ),
                      ),
                      SizedBox(
                        width: _tela ? 0 : wb2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      width : _tela ? 0 : wb2 * 0.23,  height: h10p1 * 0.29,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Bloqueado",style: TextStyle(fontSize: fonttit, color: Colors.black, fontWeight: FontWeight.bold,))
                                          ]
                                      )),
                                  Container(
                                      width : _tela ? 0 : wb2 * 0.59,  height: h10p1 * 0.29,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text("CHACKA PLEXO SOLAR",style: TextStyle(fontSize: fonttit+2, color: Colors.black, fontWeight: FontWeight.bold,))
                                          ]
                                      )),
                                  Container(
                                      width : _tela ? 0 : wb2 * 0.17,  height: h10p1 * 0.29,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: <Widget>[
                                            Text("Aberto  ",style: TextStyle(fontSize: fonttit, color: Colors.black, fontWeight: FontWeight.bold,))
                                          ]
                                      ))
                                ]
                            ),
                            Row(
                                children: <Widget>[
                                  Container(
                                    width: _tela ? 0 : wb2 * 0.92, height: h10p5 * 0.39,
                                      child:
                                      SliderTheme(
                                        data: SliderTheme.of(context).copyWith(
                                          activeTrackColor: _cv3,
                                          inactiveTrackColor: Color.fromRGBO(255,255,0, 0.0),
                                          trackShape: RoundedRectSliderTrackShape(),
                                          trackHeight: 4.0,
                                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: _raio),
                                          thumbColor: _cv3,
                                          overlayColor: Colors.black.withAlpha(32),
                                          overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                                          tickMarkShape: RoundSliderTickMarkShape(),
                                          activeTickMarkColor: Colors.black,
                                          inactiveTickMarkColor: _cv3,
                                          valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                                          valueIndicatorColor: _cv3,
                                          valueIndicatorTextStyle: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                        child: Slider(
                                          value: _value3,
                                          min: 0,
                                          max: 14,
                                          divisions: 14,
                                          label: '$_value3',
                                          onChanged: (value) {
                                            setState(
                                                  () {
                                                _value3 = value;
                                              },
                                            );
                                          },
                                        ),


                                      ))]

                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      stops: [0.3, 1],
                                      colors: [
                                        Color.fromRGBO(255,255,0, 0.2),
                                        Color.fromRGBO(255,255,0, 1.0)
                                      ],
                                    ),
                                  ),
                                  width: _tela ? 0 : wb2 * 0.96, height: h10p5 * 0.29,


                                  ),
                              ],

                            )
                          ],
                        ),
                      )])),
                    SizedBox(height: _tela? 0 : 5),
//
//  CHAKRA 02
//
                   Container(
                       height:h10p6,

                       child: Row(
                    children: [

                      SizedBox(width: wbm,
                        child:
                        Container(
                            width: h10p6,
                            height: h10p6,
                            child: MaterialButton(
                                  color: _ck2f,
                              shape: CircleBorder(side: BorderSide(width: 0, color: Colors.black, style: BorderStyle.none)),
                              child: FaIcon(FontAwesomeIcons.infoCircle,size:heightlua*0.04,color: _ck2i),
                                 onPressed: (){
                                   setState(() {
                                   if(_descck == true) {_descck = _tela = false;_f1 = _f3 = _f4 =_f5 = _f6 = _f7 = false;}
                                     if( _f2 == false)
                                     { _f2 = true;  _descck =  _tela = true; _tmd = _t2d;}
                                     else if ( _f2 == true)
                                     {_f1 = _f2 = _f3 = _f4 =_f5 = _f6 = _f7 = _tela = false;  _descck = false;}
                                   });
                                  },
                            )
                        ),
                      ),
                      SizedBox(
                        width: _tela ? 0 : wb2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      width : _tela ? 0 : wb2 * 0.23,  height: h10p1 * 0.29,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Bloqueado",style: TextStyle(fontSize: fonttit, color: Colors.black, fontWeight: FontWeight.bold,))
                                          ]
                                      )),
                                  Container(
                                      width : _tela ? 0 : wb2 * 0.59,  height: h10p1 * 0.29,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text("CHACKA UMBILICAL",style: TextStyle(fontSize: fonttit+2, color: Colors.black, fontWeight: FontWeight.bold,))
                                          ]
                                      )),
                                  Container(
                                      width : _tela ? 0 : wb2 * 0.17,  height: h10p1 * 0.29,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: <Widget>[
                                            Text("Aberto  ",style: TextStyle(fontSize: fonttit, color: Colors.black, fontWeight: FontWeight.bold,))
                                          ]
                                      ))
                                ]
                            ),
                            Row(
                                children: <Widget>[
                                  Container(
                                    width: _tela ? 0 : wb2 * 0.92, height: h10p6 * 0.39,
                                      child:
                                      SliderTheme(
                                        data: SliderTheme.of(context).copyWith(
                                          activeTrackColor: _cv2,
                                          inactiveTrackColor: Color.fromRGBO(246,151,53, 0.0),
                                          trackShape: RoundedRectSliderTrackShape(),
                                          trackHeight: 4.0,
                                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: _raio),
                                          thumbColor: _cv2,
                                          overlayColor: Colors.black.withAlpha(32),
                                          overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                                          tickMarkShape: RoundSliderTickMarkShape(),
                                          activeTickMarkColor: Colors.black,
                                          inactiveTickMarkColor: _cv2,
                                          valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                                          valueIndicatorColor: _cv2,
                                          valueIndicatorTextStyle: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                        child: Slider(
                                          value: _value2,
                                          min: 0,
                                          max: 14,
                                          divisions: 14,
                                          label: '$_value2',
                                          onChanged: (value) {
                                            setState(
                                                  () {
                                                _value2 = value;
                                              },
                                            );
                                          },
                                        ),


                                      ))]

                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      stops: [0.3, 1],
                                      colors: [
                                        Color.fromRGBO(246,151,53, 0.2),
                                        Color.fromRGBO(246,151,53, 1.0)
                                      ],
                                    ),
                                  ),
                                  width: _tela ? 0 : wb2 * 0.96, height: h10p6 * 0.29,


                                  ),
                              ],

                            )
                          ],
                        ),
                      )])),
                    SizedBox(height: _tela? 0 : 5),
//
//  CHAKRA 01
//
                   Container(
                       height:h10p7,

                       child: Row(
                    children: [

                      SizedBox(width: wbm,
                        child:
                        Container(
                            width: h10p7,
                            height: h10p7,
                            child: MaterialButton(
                                  color: _ck1f,
                              shape: CircleBorder(side: BorderSide(width: 0, color: Colors.black, style: BorderStyle.none)),
                              child: FaIcon(FontAwesomeIcons.infoCircle,size:heightlua*0.04,color: _ck1i),
                                 onPressed: (){
                                   setState(() {
                                     if(_descck == true) {_descck = _tela = false; _f2 = _f3 = _f4 =_f5 = _f6 = _f7 = false;}
                                     if( _f1 == false)
                                     { _f1 = true;  _descck = _tela = true; _tmd = _t1d;}
                                     else if ( _f1 == true)
                                     {_f1 = _f2 = _f3 = _f4 =_f5 = _f6 = _f7 = _tela = false;  _descck = false;}
                                   });
                      },
                            )
                        ),
                      ),
                      SizedBox(
                        width: _tela ? 0 : wb2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      width : _tela ? 0 : wb2 * 0.23,  height: h10p1 * 0.29,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Bloqueado",style: TextStyle(fontSize: fonttit, color: Colors.black, fontWeight: FontWeight.bold,))
                                          ]
                                      )),
                                  Container(
                                      width : _tela ? 0 : wb2 * 0.59,  height: h10p1 * 0.29,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text("CHACKA BÁSICO",style: TextStyle(fontSize: fonttit+2, color: Colors.black, fontWeight: FontWeight.bold,))
                                          ]
                                      )),
                                  Container(
                                      width : _tela ? 0 : wb2 * 0.17,  height: h10p1 * 0.29,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: <Widget>[
                                            Text("Aberto  ",style: TextStyle(fontSize: fonttit, color: Colors.black, fontWeight: FontWeight.bold,))
                                          ]
                                      ))
                                ]
                            ),
                            Row(
                                children: <Widget>[
                                  Container(
                                    width: _tela ? 0 : wb2 * 0.92, height: h10p7 * 0.39,
                                      child:
                                      SliderTheme(
                                        data: SliderTheme.of(context).copyWith(
                                          activeTrackColor: _cv1,
                                          inactiveTrackColor: Color.fromRGBO(255,0,0, 0.0),
                                          trackShape: RoundedRectSliderTrackShape(),
                                          trackHeight: 4.0,
                                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: _raio),
                                          thumbColor: _cv1,
                                          overlayColor: Colors.black.withAlpha(32),
                                          overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                                          tickMarkShape: RoundSliderTickMarkShape(),
                                          activeTickMarkColor: Colors.black,
                                          inactiveTickMarkColor: _cv1,
                                          valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                                          valueIndicatorColor: _cv1,
                                          valueIndicatorTextStyle: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                        child: Slider(
                                          value: _value1,
                                          min: 0,
                                          max: 14,
                                          divisions: 14,
                                          label: '$_value1',
                                          onChanged: (value) {
                                            setState(
                                                  () {
                                                _value1 = value;
                                              },
                                            );
                                          },
                                        ),


                                      ))]

                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      stops: [0.3, 1],
                                      colors: [
                                        Color.fromRGBO(255, 0, 0, 0.2),
                                        Color.fromRGBO(255, 0, 0, 1.0)
                                      ],
                                    ),
                                  ),
                                  width: _tela ? 0 : wb2 * 0.96, height: h10p7 * 0.29,


                                  ),
                              ],

                            )
                          ],
                        ),
                      )])),
                    SizedBox(height: _tela ? 0: hspace),
          ],
        ))
            ]),
        Container(

            width:  _tela ? widthlua: 0,
            height: _tela ? heightlua * 0.06:0,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Color(0xFF3C5A99),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: SizedBox.expand(

              child:_tela ?
              FlatButton(
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Voltar",
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
           setState(() {
             _f1 = _f2 = _f3 = _f4 =_f5 = _f6 = _f7 = _tela = false;  _descck = false;
           });
          },
        )
                  :
             Text(""),
            ),
          )
      ])),
    );
  }
}
