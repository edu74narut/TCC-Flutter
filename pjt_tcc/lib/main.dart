// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(Page());
}

class Page extends StatefulWidget {
  const Page({super.key});

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  int itemSelecionado = 0;
  String dropdownvalue = 'Localização atual';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: itemSelecionado,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Perfil'),
            BottomNavigationBarItem(
                icon: Icon(Icons.question_mark_rounded), label: 'Sobre nós')
          ],
          onTap: (valor) {
            setState(() {
              itemSelecionado = valor;
            });
          },
        ),
        body: Stack(children: [
          Positioned(
            right: 250,
            height: 150,
            width: 150,
            child: Image.network(
              "https://media.discordapp.net/attachments/825116188770041887/1169985004621799454/Sport.png?ex=663cc972&is=663b77f2&hm=d0d9771711273ba2952a5a55f8e66c02d48f0f9ff748444a5734f8419ccf5602&=&format=webp&quality=lossless",
            ),
          ),
          Positioned(
            right: 40,
            height: 30,
            width: 170,
            bottom: 680,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Cancelar Chamada', style: TextStyle(fontSize: 14)),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.black),
            ),
          ),
          Positioned(
            right: 40,
            height: 30,
            width: 160,
            bottom: 720,
            child: DropdownButton<String>(
              borderRadius: BorderRadius.circular(10),
              value: dropdownvalue,
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
              items: <String>['Localização atual', 'Minha localização']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Positioned(
            right: 120,
            height: 30,
            width: 170,
            bottom: 500,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Inserir mídias', style: TextStyle(fontSize: 16)),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Color.fromARGB(255, 6, 130, 212),
                  foregroundColor: Colors.black),
            ),
          ),
          Positioned(
            right: 10,
            height: 450,
            width: 400,
            bottom: 1,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('CHAMAR', style: TextStyle(fontSize: 30)),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.black),
            ),
          )
        ]),
      ),
    );
  }
}
