// ignore_for_file: prefer_const_constructors, unused_import

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/widgets.dart';
import 'package:mylivetv/screens/cartoon.dart';
import 'package:mylivetv/screens/cricket.dart';
import 'package:mylivetv/screens/music.dart';
import 'package:mylivetv/screens/video_player_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'MyLiveTv'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          color: Color.fromRGBO(89, 128, 244, 1),
          height: 250,
          width: double.infinity,
          child: 
          Text('MyLiveTv')),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => cricket()));
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => VideoApp()));

                  },
                  icon: const Icon(Icons.sports_cricket_rounded),
                  iconSize: 50,
                ),
                const Text('Cricket Channels'),
                SizedBox(
                  height: 50,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Music()));
                  },
                  icon: const Icon(Icons.music_note_rounded),
                  iconSize: 50,
                ),
                const Text('Music Channels'),
                SizedBox(
                  height: 50,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cartoon()));
                  },
                  icon: const Icon(Icons.bedroom_baby_outlined),
                  iconSize: 50,
                ),
                const Text('Cartoon Channels'),
              ],
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
