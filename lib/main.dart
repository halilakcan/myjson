import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  build(context) {
    return MaterialApp(
      title: 'My Application',
      home: Scaffold(
        appBar: AppBar(
          title: Text(MyHomePage.title),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  static String title = 'Halil Akcan Demo';
  @override
  createState() => _MyHomePageState();
}

class _MyHomePageState extends State {
  static var data;

  double balance = 0;

  @override
  void initState() {
    super.initState();
    asyncfunction().whenComplete((){
      setState(() {
      //   balance = data['accountStatement']['info']['closingBalance'] + 35000;
      balance=data['id'];
     }); });
  /*  Future.delayed(
            const Duration(seconds: 2),
            () =>
                '{"accountStatement":{"info":{"accountId":"2801387443","bankId":"2010","currency":"CZK","iban":"CZ9720100000002801387443","bic":"FIOBCZPPXXX","openingBalance":-14663.87,"closingBalance":-15603.47,"dateStart":"2022-02-01+0100","dateEnd":"2022-02-15+0100","yearList":null,"idList":null,"idFrom":24026612657,"idTo":24036743808,"idLastDownload":null},"transactionList":{"transaction":[{"column22":{"value":24026612657,"name":"ID pohybu","id":22},"column0":{"value":"2022-02-03+0100","name":"Datum","id":0},"column1":{"value":-300.00,"name":"Objem","id":1},"column14":{"value":"CZK","name":"Měna","id":14},"column2":null,"column10":{"value":"","name":"Název protiúčtu","id":10},"column3":null,"column12":null,"column4":null,"column5":{"value":"4804","name":"VS","id":5},"column6":null,"column7":{"value":"Nákup: Revolut**1284*,  4th Floor 7 Westferry Circus, internet, 08130, LTU, dne 2.2.2022, částka  300.00 CZK","name":"Uživatelská identifikace","id":7},"column16":{"value":"Nákup: Revolut**1284*,  4th Floor 7 Westferry Circus, internet, 08130, LTU, dne 2.2.2022, částka  300.00 CZK","name":"Zpráva pro příjemce","id":16},"column8":{"value":"Platba kartou","name":"Typ","id":8},"column9":{"value":"Akcan, Mehmet Halil","name":"Provedl","id":9},"column18":null,"column25":{"value":"Nákup: Revolut**1284*,  4th Floor 7 Westferry Circus, internet, 08130, LTU, dne 2.2.2022, částka  300.00 CZK","name":"Komentář","id":25},"column26":null,"column17":{"value":30265291210,"name":"ID pokynu","id":17},"column27":null},{"column22":{"value":24035344007,"name":"ID pohybu","id":22},"column0":{"value":"2022-02-11+0100","name":"Datum","id":0},"column1":{"value":-309.70,"name":"Objem","id":1},"column14":{"value":"CZK","name":"Měna","id":14},"column2":null,"column10":{"value":"","name":"Název protiúčtu","id":10},"column3":null,"column12":null,"column4":null,"column5":null,"column6":null,"column7":null,"column16":null,"column8":{"value":"Úrok z úvěru","name":"Typ","id":8},"column9":null,"column18":null,"column25":null,"column26":null,"column17":{"value":30303036591,"name":"ID pokynu","id":17},"column27":null},{"column22":{"value":24036743808,"name":"ID pohybu","id":22},"column0":{"value":"2022-02-14+0100","name":"Datum","id":0},"column1":{"value":-329.90,"name":"Objem","id":1},"column14":{"value":"CZK","name":"Měna","id":14},"column2":null,"column10":{"value":"","name":"Název protiúčtu","id":10},"column3":null,"column12":null,"column4":null,"column5":{"value":"4804","name":"VS","id":5},"column6":null,"column7":{"value":"Nákup: BENZINA CS 0615,  C.P. 234, ZERUVKY R46, OLOMOUC, 77900, CZE, dne 13.2.2022, částka  329.90 CZK","name":"Uživatelská identifikace","id":7},"column16":{"value":"Nákup: BENZINA CS 0615,  C.P. 234, ZERUVKY R46, OLOMOUC, 77900, CZE, dne 13.2.2022, částka  329.90 CZK","name":"Zpráva pro příjemce","id":16},"column8":{"value":"Platba kartou","name":"Typ","id":8},"column9":{"value":"Akcan, Mehmet Halil","name":"Provedl","id":9},"column18":null,"column25":{"value":"Nákup: BENZINA CS 0615,  C.P. 234, ZERUVKY R46, OLOMOUC, 77900, CZE, dne 13.2.2022, částka  329.90 CZK","name":"Komentář","id":25},"column26":null,"column17":{"value":30308691636,"name":"ID pokynu","id":17},"column27":null}]}}}')
        .then((value) {*/
  }
String mygetter(){return '{"accountStatement":{"info":{"accountId":"2801387443","bankId":"2010","currency":"CZK","iban":"CZ9720100000002801387443","bic":"FIOBCZPPXXX","openingBalance":-14663.87,"closingBalance":-15603.47,"dateStart":"2022-02-01+0100","dateEnd":"2022-02-15+0100","yearList":null,"idList":null,"idFrom":24026612657,"idTo":24036743808,"idLastDownload":null},"transactionList":{"transaction":[{"column22":{"value":24026612657,"name":"ID pohybu","id":22},"column0":{"value":"2022-02-03+0100","name":"Datum","id":0},"column1":{"value":-300.00,"name":"Objem","id":1},"column14":{"value":"CZK","name":"Měna","id":14},"column2":null,"column10":{"value":"","name":"Název protiúčtu","id":10},"column3":null,"column12":null,"column4":null,"column5":{"value":"4804","name":"VS","id":5},"column6":null,"column7":{"value":"Nákup: Revolut**1284*,  4th Floor 7 Westferry Circus, internet, 08130, LTU, dne 2.2.2022, částka  300.00 CZK","name":"Uživatelská identifikace","id":7},"column16":{"value":"Nákup: Revolut**1284*,  4th Floor 7 Westferry Circus, internet, 08130, LTU, dne 2.2.2022, částka  300.00 CZK","name":"Zpráva pro příjemce","id":16},"column8":{"value":"Platba kartou","name":"Typ","id":8},"column9":{"value":"Akcan, Mehmet Halil","name":"Provedl","id":9},"column18":null,"column25":{"value":"Nákup: Revolut**1284*,  4th Floor 7 Westferry Circus, internet, 08130, LTU, dne 2.2.2022, částka  300.00 CZK","name":"Komentář","id":25},"column26":null,"column17":{"value":30265291210,"name":"ID pokynu","id":17},"column27":null},{"column22":{"value":24035344007,"name":"ID pohybu","id":22},"column0":{"value":"2022-02-11+0100","name":"Datum","id":0},"column1":{"value":-309.70,"name":"Objem","id":1},"column14":{"value":"CZK","name":"Měna","id":14},"column2":null,"column10":{"value":"","name":"Název protiúčtu","id":10},"column3":null,"column12":null,"column4":null,"column5":null,"column6":null,"column7":null,"column16":null,"column8":{"value":"Úrok z úvěru","name":"Typ","id":8},"column9":null,"column18":null,"column25":null,"column26":null,"column17":{"value":30303036591,"name":"ID pokynu","id":17},"column27":null},{"column22":{"value":24036743808,"name":"ID pohybu","id":22},"column0":{"value":"2022-02-14+0100","name":"Datum","id":0},"column1":{"value":-329.90,"name":"Objem","id":1},"column14":{"value":"CZK","name":"Měna","id":14},"column2":null,"column10":{"value":"","name":"Název protiúčtu","id":10},"column3":null,"column12":null,"column4":null,"column5":{"value":"4804","name":"VS","id":5},"column6":null,"column7":{"value":"Nákup: BENZINA CS 0615,  C.P. 234, ZERUVKY R46, OLOMOUC, 77900, CZE, dne 13.2.2022, částka  329.90 CZK","name":"Uživatelská identifikace","id":7},"column16":{"value":"Nákup: BENZINA CS 0615,  C.P. 234, ZERUVKY R46, OLOMOUC, 77900, CZE, dne 13.2.2022, částka  329.90 CZK","name":"Zpráva pro příjemce","id":16},"column8":{"value":"Platba kartou","name":"Typ","id":8},"column9":{"value":"Akcan, Mehmet Halil","name":"Provedl","id":9},"column18":null,"column25":{"value":"Nákup: BENZINA CS 0615,  C.P. 234, ZERUVKY R46, OLOMOUC, 77900, CZE, dne 13.2.2022, částka  329.90 CZK","name":"Komentář","id":25},"column26":null,"column17":{"value":30308691636,"name":"ID pokynu","id":17},"column27":null}]}}}';
}
 Future<void> asyncfunction() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/albums/100');
    final response = await http.get(url);
    data= jsonDecode(response.body);
    }

  void update1() {
    setState(() {
   //   balance = data['accountStatement']['info']['openingBalance'] + 35000;
 balance=data['id'];
    });
  }

  void update2() {
    setState(() {
   //   balance = data['accountStatement']['info']['closingBalance'] + 35000;
     balance=data['userId'];  
    });
  }

  @override
  build(context) {
    if (data == null) {
      return DefaultTextStyle(
        style: Theme.of(context).textTheme.headline2!,
        textAlign: TextAlign.center,
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              'Your Data is below:',
            ),
            const CircularProgressIndicator(),
            ElevatedButton(
                onPressed: update1, child: const Text("OPENING BALANCE")),
            ElevatedButton(
                onPressed: update2, child: const Text("CLOSING BALANCE"))
          ]),
        ),
      );
    } else {
      return DefaultTextStyle(
        style: Theme.of(context).textTheme.headline2!,
        textAlign: TextAlign.center,
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              'Your Data is below:',
            ),
            Text(
              "$balance",
            ),
            ElevatedButton(
                onPressed: update1, child: const Text("OPENING BALANCE")),
            ElevatedButton(
                onPressed: update2, child: const Text("CLOSING BALANCE"))
          ]),
        ),
      );
    }
  }
}
