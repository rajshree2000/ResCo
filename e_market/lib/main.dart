import 'package:e_market/Screen1.dart';
import 'package:e_market/Stories.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(title: 'E-Help'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Stories" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
              trailing: Icon(Icons.whatshot_rounded),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Stories()),
                );
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                SizedBox(height: 150,),
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Center(child: Image.network("https://cdn.discordapp.com/attachments/830484732792799239/833331688099807233/Asset_24x-8.png")),
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'Username',
                    alignLabelWithHint: true,
                  ),
                ),

                SizedBox(height: 12.0),

                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 12.0),
                Center(
                  child: ElevatedButton(
                    child: Text("Sign In"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ScreenOne()),
                      );
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}
