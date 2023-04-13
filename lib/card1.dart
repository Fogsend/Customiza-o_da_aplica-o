import 'package:flutter/material.dart';
import 'matui_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});
  //1
  final String category = 'Nike';
  final String title = 'Just Do It';
  final String description = 'Swoosh by Nike';
  final String tourist = 'Run It';
//2
  @override
  Widget build(BuildContext context) {
//3
    return Center(
        child: Container(
            //1
            padding: const EdgeInsets.all(16),
            //2
            constraints: const BoxConstraints.expand(
              width: 350,
              height: 450,
            ),
            //3
            decoration: const BoxDecoration(
              //4
              image: DecorationImage(
                //5
                image: NetworkImage(
                    'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.phaidon.com%2Fresource%2Fnike-logo.jpg&f=1&nofb=1&ipt=fd13515b8ef4d4642ac8d63fabcd37eb897d9aa164d308cf4c98430460a50c2c&ipo=images'),
                //6
                fit: BoxFit.cover,
              ),
              //7
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Stack(
              children: [
                //8
                Text(
                  category,
                  style: GpsdoMundoTheme.darkTextTheme.bodyText1,
                ),
                //9
                Positioned(
                  top: 20,
                  child: Text(
                    title,
                    style: GpsdoMundoTheme.darkTextTheme.headline2,
                  ),
                ),
                //10
                Positioned(
                  bottom: 30,
                  right: 0,
                  child: Text(
                    description,
                    style: GpsdoMundoTheme.darkTextTheme.bodyText1,
                  ),
                ),
                //1
                Positioned(
                  bottom: 10,
                  right: 0,
                  child: Text(
                    tourist,
                    style: GpsdoMundoTheme.darkTextTheme.bodyText1,
                  ),
                )
              ],
            )));
  }
}
