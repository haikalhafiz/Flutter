import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
// type stless then press [tab]
class HomePage extends StatelessWidget {

  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Welcome to My app")),
        body : SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text("Hello world",
                  style: TextStyle(fontSize: 30, color: Colors.red),),
                SizedBox(height: 10,),
                Text("welcome to my aplikasi"),
                SizedBox(height: 10,),
                Image.network(
                    "https://cdn.britannica.com/s:800x450,c:crop/79/189379-138-C16A98A4/video-Kuala-Lumpur-Malaysia.jpg"),
                Text("This is my first app"),
                Text("Jom cuba"),
                Row(
                    children: [
                      Text("First col of my row"),
                      SizedBox(width: 10,),
                      Text("Second col of my row"),
                      SizedBox(width: 10,),
                      Text("Third col of my row"),
                    ]
                ),
                TextField(
                  decoration: InputDecoration(labelText: "What is your name"),
                  controller: nameController,),
                FlatButton(color: Colors.yellow, onPressed: () {
                  print("Hello ${nameController.text}!",);
                }, child: Text("Press me!")),
                RaisedButton(onPressed: (){},child: Text("Show Toast"),),
                RaisedButton(onPressed: (){},child: Text("Show Snackbar"),color: Colors.yellow,),
              ]
        ),
          )

    )
    );
  }
}
