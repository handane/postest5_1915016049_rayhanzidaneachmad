import 'package:flutter/material.dart';
import 'package:postest5_1915016049_rayhanzidaneachmad/splashscreen.dart';
import 'package:postest5_1915016049_rayhanzidaneachmad/custom_alert.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '1915016049_Rayhan Zidane Achmad',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Triple-X"),
      ),
      body: ListData(),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
              child: Text("berlangganan Triple-X"),
            ),
            ListTile(
              leading: Icon(Icons.code),
              title: Text("Laporkan Keluhan"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) {
                    return Keluhan();
                  },
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}

class Keluhan extends StatelessWidget {
  const Keluhan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _myController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Triple-X"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Laporkan Keluhan",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              controller: _myController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            child: const Text("Kirim Laporan"),
            onPressed: () {
              CustomAlert(context, _myController.text);
            },
          ),
        ],
      ),
    );
  }
}

class ListData extends StatefulWidget {
  const ListData({Key? key}) : super(key: key);

  @override
  _ListDataState createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  List names = [
    "HTML",
    "CSS",
    "PHP",
    "Ruby",
    "Python",
    "C++",
    "C#",
    "Dart",
    "Flutter",
    "Kotlin",
    "MySQL",
    "Swift",
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            final number = index + 1;
            final name = names[index].toString();
            return new Card(
              child: new Padding(
                padding: const EdgeInsets.all(15.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'images/_$number.JPG',
                      width: 150,
                    ),
                    Text(name),
                    Text("Rp 20K"),
                    Container(
                      child: ElevatedButton(
                          child: Text("Beli"),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (_) {
                                return ThirdPage();
                              },
                            ));
                          }),
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: names.length,
        ),
      ),
    );
  }
}

class ThirdPage extends StatefulWidget {
  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  List<BottomNavigationBarItem> bottomNavbaritems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.list),
      label: "Lihat",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.payment),
      label: "Bayar",
    ),
  ];

  int _index = 0;

  List<Widget> tabBody = [
    Container(
      child: new Padding(
        padding: const EdgeInsets.all(1.0),
        child: new Column(
          children: [
            Image.asset(
              'images/_9.JPG',
              width: 400,
            ),
            Text('Belajar Flutter Pro',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Text("Rp 20.000",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red)),
            Text(" ",
                style: TextStyle(
                  height: 3,
                )),
            Text("Apa yang dipelajari:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text("1. Dasar-dasar Pemrograman Android dengan flutter",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                )),
            Text(
                "2. menginstal aplikasi Android studio dan vscode menggunakan flutter",
                style: TextStyle(
                  fontSize: 18,
                )),
            Text("3. Belajar pengoperasian emulator android di android studio",
                style: TextStyle(
                  fontSize: 18,
                )),
            Text("4. Membuat aplikasi android pemula dengan flutter",
                style: TextStyle(
                  fontSize: 18,
                )),
          ],
        ),
      ),
    ),
    Container(
      padding: new EdgeInsets.all(10.0),
      child: new Column(
        children: <Widget>[
          new TextField(
            decoration: new InputDecoration(
                hintText: "Nama Lengkap",
                labelText: "Nama Lengkap",
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0))),
          ),
          new Padding(
            padding: new EdgeInsets.only(top: 20.0),
          ),
          new TextField(
            decoration: new InputDecoration(
                hintText: "Umur",
                labelText: "Umur",
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0))),
          ),
          new Padding(
            padding: new EdgeInsets.only(top: 20.0),
          ),
          new TextField(
            maxLines: 3,
            decoration: new InputDecoration(
                hintText: "Mengapa ingin belajar disini",
                labelText: "mengapa ingin belajar disini",
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0))),
          ),
          new Padding(
            padding: new EdgeInsets.only(top: 20.0),
          ),
          new TextField(
            maxLines: 3,
            decoration: new InputDecoration(
                hintText: "Metode Pembayaran",
                labelText: "Metode Pembayaran",
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0))),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Pelajaran"),
        backgroundColor: Color.fromARGB(255, 164, 43, 150),
      ),
      body: tabBody.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavbaritems,
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
