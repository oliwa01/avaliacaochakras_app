import 'package:avaliacaochakras_app/descricao/desc_chakras.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'model/Usuario.dart';
import 'package:url_launcher/url_launcher.dart';




class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final facebookLogin = FacebookLogin();

  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();


  //Controladores
  TextEditingController _controllerNome = TextEditingController(text: "");
  TextEditingController _controllerEmail = TextEditingController(text: "");
  TextEditingController _controllerSenha = TextEditingController(text: "");
  String _mensagemErro = "";
  String _launched = "";

  _validarCampos(){
    //Recupera dados dos campos
    String nome = _controllerNome.text;
    String email = _controllerEmail.text;
    String senha = _controllerSenha.text;

    if( nome.isNotEmpty ){

      if( email.isNotEmpty && email.contains("@") ){


          setState(() {
            _mensagemErro = "";
          });

          Usuario usuario = Usuario();
          usuario.nome = nome;
          usuario.email = email;
          usuario.senha = "";

          _cadastrarUsuario( usuario );

      }else{
        setState(() {
          _mensagemErro = "Preencha o E-mail utilizando @";
        });
      }

    }else{
      setState(() {
        _mensagemErro = "Preencha o Nome";
      });
    }

  }

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
  _cadastrarUsuario( Usuario usuario ){
    String erro1 = "FirebaseError: There is no user record corresponding to this identifier. The user may have been deleted. (auth/user-not-found)";
    String erro2 = "FirebaseError: The password is invalid or the user does not have a password. (auth/wrong-password)";
    String erro3 = "FirebaseError: Too many unsuccessful login attempts. Please try again later. (auth/too-many-requests)";
    String erro4 = "FirebaseError: The email address is already in use by another account. (auth/email-already-in-use)";
    FirebaseAuth auth = FirebaseAuth.instance;

    auth.createUserWithEmailAndPassword(
        email: usuario.email,
        password: "1234567",
    ).then((firebaseUser){

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => desc_chakras(usuario.email,usuario.nome))

      );

    }).catchError((error){
      print("erro app: " + error.toString() );
      setState(() {
        if (error.toString() == erro1) {
          _mensagemErro = "**** Erro *****  Email não cadastrado ************";}
        else
        if (error.toString() == erro2)
        {_mensagemErro = "**** Erro *****  Senha Invalida ************";}
        else
        if (error.toString() == erro3)
        {_mensagemErro = "**** Erro *****  Excedeu o Numero de tentativar ***Tente mais tarde ************";
        _controllerEmail.text = "";
        _controllerSenha.text ="";}
        else
        if (error.toString() == erro4)
        {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
              builder: (context) => desc_chakras(usuario.email,usuario.nome)));
        }
        else
        {_mensagemErro = "Erro ao autenticar usuário, verifique e-mail e senha e tente novamente!";}
      });

    });

  }

  @override
  Widget build(BuildContext context) {
    final widthlua = MediaQuery.of(context).size.width;
    final heightlua = MediaQuery.of(context).size.height;

    double  w20p = widthlua * 0.20;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/logo.png"),
            fit: widthlua > 600 ? BoxFit.fitHeight : BoxFit.fitWidth,
          ),
        ),
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: heightlua*0.01,
                child:Text(
                  'Chakras V1.00', textAlign: TextAlign.end,
                  style: new TextStyle(
                      fontSize: 7.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),
                )),
                  SizedBox(
                    width: w20p,
                    height: w20p,
                   // child: Image.asset("assets/images/logo.png"),
                  ),
                     SizedBox(width: w20p),
                     Padding(
                  padding: EdgeInsets.only(
                      left : widthlua > 1200 ? 300: widthlua > 1000 ? 150: widthlua > 800 ? 100: 0,
                      right: widthlua > 1200 ? 300: widthlua > 1000 ? 150: widthlua > 800 ? 100: 0,
                      bottom: 8),
                  child: TextField(
                    controller: _controllerNome,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Nome",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left : widthlua > 1200 ? 300: widthlua > 1000 ? 150: widthlua > 800 ? 100: 0,
                      right: widthlua > 1200 ? 300: widthlua > 1000 ? 150: widthlua > 800 ? 100: 0,
                      bottom: 8),
                  child: TextField(
                    controller: _controllerEmail,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "E-mail",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32))),
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(
                      left : widthlua > 1200 ? 300: widthlua > 1000 ? 150: widthlua > 800 ? 100: 0,
                      right: widthlua > 1200 ? 300: widthlua > 1000 ? 150: widthlua > 800 ? 100: 0,
                      top: 16,
                      bottom: 10),
                  child: RaisedButton(
                      child: Text(
                        "ENTRAR",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      color: Colors.pink,
                      padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                      onPressed: () {
                        _validarCampos();
                      }
                  ),
                ),
                Center(
                  child: Text(
                    _mensagemErro,
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 20
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
