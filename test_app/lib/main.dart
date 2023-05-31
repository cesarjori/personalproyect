import 'dart:js';

import 'package:flutter/material.dart';
import 'package:test_app/data/images_data.dart';
import 'package:test_app/image_page.dart';
import 'package:test_app/providers/theme.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      
      title: 'Mi App',
      initialRoute: '/',
      routes: {
        '/': (context) => Inicio(),
        '/detalle': (context) => Detalle(),
        '/configuracion': (context) => Configuracion(),
        '/galeria': (context) => Galeria(),
      },
    );
  }
}

class Inicio extends StatelessWidget {
  Inicio({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MI APP PERSONALIZADA"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "BIENVENIDOS A LA APP",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/detalle'),
              child: Text(
                'Ver detalles 👨🏻‍💻',
                style: TextStyle(fontSize: 20),), 
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/configuracion'),
              child: Text(
                'Configuracion ⚙️',
                style: TextStyle(fontSize: 20),),
            ),
            SizedBox(height: 20),
          
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/galeria'),
              child: Text(
                'Galeria 📸🤳',
                style: TextStyle(fontSize: 20),
                ),
            ),
          ],
        ),
      ),
    );
  }
}

class Detalle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Detalles",
          style: TextStyle(fontSize: 38),
       ),
       backgroundColor: Color.fromARGB(255, 30, 235, 125),
      ),
      body: Center(
        child: Column(
          children: [
          // Container(
           //   padding: EdgeInsets.all(50.0),
          //    child: Text("") ,
          //  ),
            Container(
              padding: EdgeInsets.all(50.0),
              child: Text("NOMBRES:  CESAR JOAQUIN") ,
            ),
            Container(
              padding: EdgeInsets.all(50.0),
              child: Text("APELLIDOS:  RIVERA GIRON") ,
            ),
            Container(
              padding: EdgeInsets.all(50.0),
              child: Text("FECHA DE NACIMIENTO:  12-01-2001") ,
            ),
          ],
        ),
      )
    );
  }
  
}
    
        

class Configuracion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Aqui configuraremos"),
               backgroundColor: Color.fromARGB(255, 22, 144, 192),
      ),
      
      );
    
  }
}

class Galeria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Galeria"),
               backgroundColor: Color.fromARGB(255, 18, 15, 1),
     ),
      body: GridView.extent(
        maxCrossAxisExtent: 150.0,
        padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        children: _listaimagenes,
        
        ),
    );
    }

  List<Widget> get _listaimagenes {
    
    List<Widget>_listaimagenes = [];

    for (var image in images) {
      _listaimagenes.add(
        GestureDetector(
          onTap: (){
           Navigator.push(context as BuildContext,MaterialPageRoute(builder: (context) => ImagePage(Url: image)));
          },
          child: Image.network(image, fit: BoxFit.cover)));
    }

    return _listaimagenes;
  }
    }