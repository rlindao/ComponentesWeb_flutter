import 'package:flutter/material.dart';

// ! librerias creadas por mi
import '../providers/menu_provider.dart';
import '../utils/icono_string_util.dart';
//import 'package:componentes/src/pages/alert_page.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build ( BuildContext context){
    return Scaffold(
      
      appBar:  AppBar(
          title: Text('Componentes'),
      ),
      body: _lista(),
      );
  }

  Widget _lista() {
      /*  menuprovider.cargarData().then((opciones) {
          print('_lista');
          print(opciones);
      }); */
      /* print(menuprovider.opciones);
      */
      
    /*  return ListView(
          children:  _listaItems(),
      );  */

      return FutureBuilder(
          future: menuprovider.cargarData(),
          initialData: [],
          builder: (BuildContext context , AsyncSnapshot<List<dynamic>> snapshot){

          return  ListView(
                        children:  _listaItems(snapshot.data , context),
            );
          },
      );

  }

  List<Widget>_listaItems(List<dynamic> data , BuildContext context) {

      final List<Widget> opciones = [];

      data.forEach((opt) { 
          final widgetTemp = ListTile(
              title: Text(opt['texto']),
              leading: getIcon(opt['icon']),
              trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
              onTap: (){

                Navigator.pushNamed(context, opt['ruta']);
                  /*final route = MaterialPageRoute(
                    builder: ( context ) {
                        return AlertPage();
                    }
                  );
                  Navigator.push(context, route);*/
              },
          );

          opciones..add(widgetTemp)
                  ..add(Divider());
      });
      return opciones;
  }
}