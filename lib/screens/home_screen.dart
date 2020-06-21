import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listdemo_app/views/custom_item.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    final listaDePersonas=['juan','eduardo','laura','alex','ruben', 'ramon'];
    return Container(
      child:Material(
              child: CupertinoPageScaffold(
          // navigationBar: CupertinoNavigationBar(
          //   middle: Text('Cupertino App Bar'),
          //),
          child:CustomScrollView(
            slivers: <Widget>[
              CupertinoSliverNavigationBar(
                largeTitle: Text('ListDemoApp'),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    Card(
                      child:ListTile(
                      leading:Icon(CupertinoIcons.add_circled_solid),
                      title: Text('Elemento 1'),
                      trailing: Icon(CupertinoIcons.right_chevron),
                    ),
                    ),
                    Card(
                      child:ListTile(
                      leading:Icon(CupertinoIcons.add_circled_solid),
                      title: Text('Elemento 1'),
                      trailing: Icon(CupertinoIcons.right_chevron),
                    ),
                    ),
                    Card(
                      child:ListTile(
                      leading:Icon(CupertinoIcons.add_circled_solid),
                      title: Text('Elemento 1'),
                      trailing: Icon(CupertinoIcons.right_chevron),
                    ),
                    ),
                  ]
                )
              ),
              SliverList(
                                delegate: SliverChildBuilderDelegate(
                                        (context, index) {
                                        return CustomItemList(titulo: listaDePersonas[index]); // titulo variable titulo de CustomItemList // lista local de nombres
                                    },
                                    childCount: listaDePersonas.length, // determinacion de cuantos items a través de length
                                ),
                            )

              
              // SliverFillRemaining(
              //   child:Center(child: Text('Hola mundo'),)
              // )
            ],
          )
    ),
      )
    );
  }
}