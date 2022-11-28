import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Getx',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  Home(),
    );
  }
}

class Home extends StatelessWidget{

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ScreenTypeLayout
          (
       /* mobile: Scaffold(
          body: Center(
            child: Container(
              //child: Text('Hi, I have created a demo screen for mobile devices'),
            ),
          ),
        ),
        desktop: Center(child: Container(
          //child: Text('Hi, I have created a demo screen for desktop devices'),
        )), */
        mobile: mobileLayout(),
          desktop: desktopLayout(),
      ),
    )
    );
  }


}

 mobileLayout() {
   return Container(
       padding: const EdgeInsets.all(20.0),
       //height: 50,
       decoration: const BoxDecoration(
           border: Border(
             // top: BorderSide(color: Colors.black),
               bottom: BorderSide(color: Colors.black)
           )
       ),
       child: ListView(
         scrollDirection: Axis.vertical,
         children:  <Widget>[
           Padding(
             padding: EdgeInsets.all(20),
             child: SizedBox(
               width: 20.0,
               child: Row(
               children: [
                 Container(
                    width: 60,
                     child: Image.network('https://picsum.photos/250?image=9')),
                 Padding(padding: EdgeInsets.only(left: 10.0)),
                 Text('Hello user, This is list first data'),
               ],
               ),
              // child: Text('23°', style: TextStyle(color: Colors.black),),
             ),
           ),
       Padding(
         padding: EdgeInsets.all(20),
         child: SizedBox(
           width: 20.0,
           child: Row(
             children: [
               Container(
                   width: 60,
                   child: Image.network('https://picsum.photos/250?image=9')),
               Padding(padding: EdgeInsets.only(left: 10.0)),
               Text('Hello user, This is list second data'),
             ],
           ),
         ),
       ),
           Padding(
             padding: EdgeInsets.all(20),
             child: SizedBox(
               width: 20.0,
               child: Row(
                 children: [
                   Container(
                       width: 60,
                       child: Image.network('https://picsum.photos/250?image=9')),
                   Padding(padding: EdgeInsets.only(left: 10.0)),
                   Text('Hello user, This is list third data'),
                 ],
               ),
             ),
           ),

           Padding(
             padding: EdgeInsets.all(20),
             child: SizedBox(
               width: 20.0,
               child: Row(
                 children: [
                   Container(
                       width: 60,
                       child: Image.network('https://picsum.photos/250?image=9')),
                   Padding(padding: EdgeInsets.only(left: 10.0)),
                   Text('Hello user, This is list fourth data'),
                 ],
               ),
             ),
           ),

           Padding(
             padding: EdgeInsets.all(20),
             child: SizedBox(
               width: 20.0,
               child: Row(
                 children: [
                   Container(
                       width: 60,
                       child: Image.network('https://picsum.photos/250?image=9')),
                   Padding(padding: EdgeInsets.only(left: 10.0)),
                   Text('Hello user, This is list fifth data'),
                 ],
               ),
             ),
           ),

         ],

       )
   );
 }

   desktopLayout() {
  return Container(
      padding: const EdgeInsets.all(20.0),
      //height: 50,
      decoration: const BoxDecoration(
          border: Border(
            // top: BorderSide(color: Colors.black),
              bottom: BorderSide(color: Colors.black)
          )
      ),
      child: GridView.count(
        crossAxisCount: 4,
     crossAxisSpacing: 4.0,
     mainAxisSpacing: 8.0,
     children: List.generate(choices.length, (index) {
     return Center(
     child: SelectCard(choice: choices[index]),

     );

     },
     )
     ),
  );
     }

class Choice {
  const Choice({ required this.title,required this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Home', icon: Icons.home),
  const Choice(title: 'Contact', icon: Icons.contacts),
  const Choice(title: 'Map', icon: Icons.map),
  const Choice(title: 'Phone', icon: Icons.phone),
  const Choice(title: 'Camera', icon: Icons.camera_alt),
  const Choice(title: 'Setting', icon: Icons.settings),
  const Choice(title: 'Album', icon: Icons.photo_album),
  const Choice(title: 'WiFi', icon: Icons.wifi),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    //final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
        color: Colors.orange,
        child: Center(child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(child: Icon(choice.icon, size:50.0, color: Colors.black)),
              Text(choice.title, style: TextStyle(color: Colors.black)),
            ]
        ),
        )
    );
  }
}




class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
