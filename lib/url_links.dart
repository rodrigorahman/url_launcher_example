import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLinks extends StatelessWidget {

  Future<void> _launchLink(String url) async {
    if(await canLaunch(url)){
      await launch(url, forceWebView: false, forceSafariVC: false);
    }else{
      print('Não pode executar o link $url');
    }

  }

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: Text('Links'),),
           body: Container(
             width: double.infinity,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 TextButton.icon(
                   icon: Icon(Icons.link),
                   label: Text('Link Externo'),
                   onPressed: () => _launchLink('http://www.globo.com'),
                 ),
                 TextButton.icon(
                   icon: Icon(Icons.phone),
                   label: Text('Telefone'),
                   onPressed: () => _launchLink('tel:11980755887'),
                 ),
                 TextButton.icon(
                   icon: Icon(Icons.mail),
                   label: Text('E-mail'),
                   onPressed: () => _launchLink('mailto:rodrigorahman@gmail.com'),
                 ),
                 TextButton.icon(
                   icon: Icon(FontAwesome.youtube, color: Colors.red),
                   label: Text('Youtube'),
                   onPressed: () => _launchLink('https://www.youtube.com/watch?v=5zdJqQFUUHI'),
                 ),
                 TextButton.icon(
                   icon: Icon(FontAwesome.instagram, color: Colors.orange),
                   label: Text('Instagram'),
                   onPressed: () => _launchLink('http://instagram.com/rodrigorahman.dev'),
                 ),
               ],
             ),
           ),
       );
  }
}