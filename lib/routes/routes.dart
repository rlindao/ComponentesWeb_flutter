import 'package:flutter/material.dart';    
import '../src/pages/alert_page.dart';
import '../src/pages/avatar_page.dart';
import '../src/pages/home_page.dart';
import '../src/pages/card_page.dart';
import '../src/pages/animated_container.dart';
import '../src/pages/input_page.dart';
import '../src/pages/sliders_page.dart';
import '../src/pages/listview_page.dart';
        
Map<String , WidgetBuilder> getApllicationRoutes(){

  return <String, WidgetBuilder>{
      
        '/' : (BuildContext context ) => HomePage(),
        'alert' : (BuildContext context ) => AlertPage(),
        'avatar' : (BuildContext context ) => AvatarPage(),
        'card' : (BuildContext context ) => CardPage(),
        'animatedContainer' : (BuildContext context ) => AnimatedContainerPage(),
        'inputs' : (BuildContext context ) => InputPage(),
        'slider' : (BuildContext context ) => SliderPage(),
        'list' : (BuildContext context ) => ListaPage(),
        };

}   
