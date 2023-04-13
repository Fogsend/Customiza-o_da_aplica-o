import 'package:flutter/material.dart';
import 'author_card.dart';
import 'matui_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        //1
        child: Container(
            constraints: const BoxConstraints.expand(
              width: 350,
              height: 450,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimg.eukicks.com%2Fstorage%2F2019%2F05%2F03021051%2FTravis-Scott-x-Air-Jordan-1-Low-header.jpg&f=1&nofb=1&ipt=ca66ff621ffef56c57e4ebc45ed3fdd9e03c625bb24ae07aabe825231e77fe47&ipo=images'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            //2
            child: Column(children: [
              const AuthorCard(
                authorName: 'Travis Scott',
                title: 'Mocha Reverse',
                imageProvider: NetworkImage(
                    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwallpapercave.com%2Fwp%2Fwp6873787.jpg&f=1&nofb=1&ipt=2af55dbb22fda7765594592a9a0f06321b189210182e1ab3e245558f6423a450&ipo=images'),
              ),
              IconButton(
                //4
                icon: const Icon(Icons.favorite_border),
                iconSize: 30,
                color: Colors.grey[400],
                //5
                onPressed: () {
                  const snackBar = SnackBar(content: Text('Favorite Pressed'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              ),
              Expanded(
                  //2
                  child: Stack(children: [
                //3
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: Text(
                    'Nike',
                    style: GpsdoMundoTheme.lightTextTheme.headline1,
                  ),
                ),
                //4
                Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          '',
                          style: GpsdoMundoTheme.lightTextTheme.headline1,
                        ))),
              ]))
            ])));
  }
}
