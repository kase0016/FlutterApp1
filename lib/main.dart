import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Demo',
      theme: ThemeData(primarySwatch: Colors.pink, fontFamily: 'Roboto'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Images and Assets'),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.all(3),
                      child: Row(children: [
                        Image.network('https://picsum.photos/400/400',
                            width: 300, height: 400),
                        Image.network('https://picsum.photos/400/401',
                            width: 300, height: 400),
                        Image.network('https://picsum.photos/400/403',
                            width: 300, height: 400),
                      ]));
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const ListTile(
              leading: Icon(Icons.pause),
              title: Text('Roboto Black',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w900,
                  )),
            ),
            const ListTile(
              leading: Icon(Icons.star),
              title: Text('Roboto Black Italic',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic)),
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('Roboto Bold',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  )),
            ),
            const ListTile(
              leading: Icon(Icons.search),
              title: Text('Roboto Bold Italic',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  )),
            ),
            const ListTile(
              leading: Icon(Icons.stop),
              title: Text('Roboto Medium',
                  style: TextStyle(
                    fontFamily: 'Roboto Medium',
                    fontWeight: FontWeight.w500,
                  )),
            ),
            const ListTile(
              leading: Icon(Icons.apple),
              title: Text('Roboto Medium Italic',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic)),
            ),
            const ListTile(
              leading: Icon(Icons.star),
              title: Text('Roboto Regular',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  )),
            ),
            const ListTile(
              leading: Icon(Icons.bluetooth),
              title: Text('Roboto Regular Italic',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic)),
            ),
            const ListTile(
              leading: Icon(Icons.watch),
              title: Text('Roboto Light',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                  )),
            ),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text('Roboto Light Italic',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic)),
            ),
            const ListTile(
              leading: Icon(Icons.star),
              title: Text('Roboto Thin',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w100,
                  )),
            ),
            const ListTile(
              leading: Icon(Icons.camera),
              title: Text('Roboto Thin Italic',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w100,
                      fontStyle: FontStyle.italic)),
            ),
            const ListTile(
              trailing: Icon(Icons.arrow_forward),
              title: Text('Default Device Font'),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Row(
                        children: [
                          Image.asset('assets/images/1.png',
                              width: 300, height: 300),
                          Image.asset('assets/images/2.png',
                              width: 300, height: 300),
                          Image.asset('assets/images/3.png',
                              width: 300, height: 300),
                        ],
                      ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
