import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'allemand.dart';
import 'anglais.dart';
import 'arabe.dart';
import 'chat_screen.dart';
import 'anglisfrancais.dart';
import 'chinois.dart';
import 'espagnol.dart';
import 'italien.dart';

class DICTIONNAIRE extends StatelessWidget {
  final List<String> chats = [
    '[Français - Chinois]',
    '[Français - Anglais]',
    '[Français - Allemand]',
    '[Français - Espagnol]',
    '[Français - Italien]',
    '[Français - Arabe]'
  ];

  final List<String> chatImages = [
    'images/chinois.png',
    'images/télécharger.jpg',
    'images/imana.jpg',
    'images/avnoir.png',
    'images/avnoir.png',
    'images/télécharger.png',
  ];

  bool isDarkModeEnabled;
  DICTIONNAIRE({required this.isDarkModeEnabled});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: isDarkModeEnabled? Colors.black : Colors.white,
          leading: IconButton(
            icon: Icon(
                Icons.arrow_back,
                color: isDarkModeEnabled? Colors.white : Colors.black
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Dictionnaire Bilingue',  style: TextStyle(
            color: isDarkModeEnabled ? Colors.white : Colors.black,
          ),
          ),
          centerTitle: true, // Centrer le texte dans la AppBar
        ),
        body: Container(
          color: Colors.white,
          child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  if (chats[index] == '[Français - Allemand]') {
                    if(isDarkModeEnabled){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            allemand(chatName: 'Français - Italien', index: 0, isDarkModeEnabled: true,)),
                      );
                    }else{
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            allemand(chatName: 'Français - Italien', index: 0, isDarkModeEnabled: false,)),
                      );
                    }
                  }
                  if (chats[index] == '[Français - Anglais]') {
                    if(isDarkModeEnabled){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            anglais(chatName: 'Français - Italien', index: 0, isDarkModeEnabled: true,)),
                      );
                    }else{
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            anglais(chatName: 'Français - Italien', index: 0, isDarkModeEnabled: false,)),
                      );
                    }
                  }
                  if (chats[index] == '[Français - Espagnol]') {
                    if(isDarkModeEnabled){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            espagnol(chatName: 'Français - Italien', index: 0, isDarkModeEnabled: true,)),
                      );
                    }else{
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            espagnol(chatName: 'Français - Italien', index: 0, isDarkModeEnabled: false,)),
                      );
                    }
                  }
                  if (chats[index] == '[Français - Chinois]') {
                    if(isDarkModeEnabled){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            chinois(chatName: 'Français - Italien', index: 0, isDarkModeEnabled: true,)),
                      );
                    }else{
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            chinois(chatName: 'Français - Italien', index: 0, isDarkModeEnabled: false,)),
                      );
                    }
                  }
                  if (chats[index] == '[Français - Italien]') {
                    if(isDarkModeEnabled){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            italien(chatName: 'Français - Italien', index: 0, isDarkModeEnabled: true,)),
                      );
                    }else{
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            italien(chatName: 'Français - Italien', index: 0, isDarkModeEnabled: false,)),
                      );
                    }
                  }
                  if (chats[index] == '[Français - Arabe]') {
                    if(isDarkModeEnabled){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            arabe(chatName: 'Français - Italien', index: 0, isDarkModeEnabled: true,)),
                      );
                    }else{
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            arabe(chatName: 'Français - Italien', index: 0, isDarkModeEnabled: false,)),
                      );
                    }
                  }
                },
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Conteneur légèrement incurvé aux bords
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(16.0),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(chatImages[index]),
                    ),
                    title: Center(
                      child: Text(
                        chats[index],
                        style: TextStyle(
                          fontFamily: AutofillHints.birthday,
                          fontWeight: FontWeight.bold,
                          color: isDarkModeEnabled ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        )
    );
  }
}

