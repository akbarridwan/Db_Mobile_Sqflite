import 'package:flutter/material.dart';
void main() => runApp(App());

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter penyimpanan data',
      home: Scaffold(
        appBar: AppBar(
          title: Text('2018020610-6SIA6'),
        ),
        body: Barbershop(),
      ),
    );
  }
}

class BARBERSHOP{
  
  String kids;
  String adult;
  
  
  TARIFBIAYA({ this.kids, this.adult});
  
}

// class Barbershop
// ignore: camel_case_types
class Barbershop extends StatefulWidget {
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Barbershop> {
  //deklarasi variabel
  final txtkids = TextEditingController();
  final txtadult = TextEditingController();
  final txtpilihan = TextEditingController();
  

  List<Widget> data = [];

  onTambah() {
    setState(() {
      data.add(ListTile(
        leading:  Text(txtkids.text),
        subtitle: Text(txtadult.text),
        trailing: Text(txtpilihan.text),
      ));
      txtkids.clear();
      txtadult.clear();
      txtpilihan.clear();
    });
  }

  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        new Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
           
              TextField(
                controller: txtkids,
                decoration: InputDecoration(hintText: 'kids'),
              ),
              TextField(
                controller: txtadult,
                decoration: InputDecoration(hintText: 'adult'),
              ),
               TextField(
                controller: txtpilihan,
                decoration: InputDecoration(hintText: 'pilihan'),
              ),
              Divider(height: 5.0),
              ElevatedButton(child: Text("Tambah"), onPressed: onTambah),
            ],
          ),
        ),
        new Column(
          children: data,
        )
      ],
    );
  }
}
