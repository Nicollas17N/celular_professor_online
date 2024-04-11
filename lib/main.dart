// Aplicativo do Professor Online
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfApp(),
  ));

}

class ProfApp extends StatelessWidget{
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 97, 68),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(90),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Image.asset('img-flutter/professor_img.png', color: Color.fromARGB(255, 255, 255, 255), width: 150, height: 150,),
              Text("Professor Online", style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 231, 139, 0)),), 
              widgetTextField("CPF", Icons.person,),
              widgetTextField("Senha", Icons.lock_rounded),
              ElevatedButton(
                child: Text('Entrar'),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>  SegundaRota()),
                  );
                },
              ),
              ],
            ),
          ),
        ),
      );
  }
}

class SegundaRota extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplicativo Teste'),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
          backgroundColor: Color.fromARGB(255, 0, 97, 68),
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [Container(
                child: Center(
                  child:Text("Professor Online SEDUC",style: TextStyle(fontSize: 35, color: Colors.black)),
                ),
                color: Color.fromARGB(255, 0, 163, 114),
                width: MediaQuery.of(context).size.width,
              ),
                Container(
                child: Center(
                  child: Text("Bem vindo ao portal do professor", style: TextStyle(fontSize: 20, color: Colors.black),),
                ),
                color: Color.fromARGB(255, 59, 218, 170),
                width: MediaQuery.of(context).size.width,
              ),],
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
          padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(
                height: 110,
                child: DrawerHeader(
                  child: Text('Menu', style: TextStyle(fontSize: 20)),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Dados Pessoais'),
              ),
              ListTile(
                leading: Icon(Icons.watch_later),
                title: Text('Horários'),
              ),
              ListTile(
                leading: Icon(Icons.calendar_month),
                title: Text('Calendário Letivo'),
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text('Minhas Turmas'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Frequência'),
              ),
              ListTile(
                leading: Icon(Icons.text_decrease_sharp),
                title: Text('Avaliações e Notas'),
              ),
              ListTile(
                leading: Icon(Icons.book),
                title: Text('Plano de Estudo'),
              ),
              ListTile(
                leading: Icon(Icons.note_alt),
                title: Text('Registro de Aulas'),
              ),
              ListTile(
                leading: Icon(Icons.book),
                title: Text('Atividades'),
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                },
                leading: Icon(Icons.exit_to_app),
                title: Text('Sair'),
              ),
              Container(
                height: 0.5,
                color: Colors.black,
                margin: EdgeInsets.symmetric(vertical: 10),
              ),
              SizedBox(
                height: 110,
                child: DrawerHeader(
                  child: Text('Informações', style: TextStyle(fontSize: 18),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


widgetTextField(String texto, IconData icone) {
  return TextField(
    decoration: InputDecoration(
      border: InputBorder.none,
      icon: Icon(icone, color: Colors.white,),
      hintText: texto,
      contentPadding: EdgeInsets.all(30),
    ),
  );
}
