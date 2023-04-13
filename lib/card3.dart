import 'dart:developer';
import 'package:flutter/material.dart';
import 'matui_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            constraints: const BoxConstraints.expand(
              width: 350,
              height: 450,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.stirlingsports.co.nz%2Fproductimages%2Fmagnify%2F1%2F29922_178874_28041.jpg&f=1&nofb=1&ipt=3e4b2f2b4fdc7e10c5099828813e831252f4b33d9b5f5dffb3aad24aac8735c3&ipo=images'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Stack(children: [
              //TODO: adic um boxdecoration
              //TODO: adic um container. column
              Center(
                  //11
                  child: Wrap(
                //12
                alignment: WrapAlignment.start,
                //13
                spacing: 12,
                //14
                runSpacing: 12,
                //15
                children: [
                  Chip(
                    label: Text('Just',
                        style: GpsdoMundoTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      log('delete');
                    },
                  ),
                  Chip(
                    label: Text('Air J',
                        style: GpsdoMundoTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      log('delete');
                    },
                  ),
                  Chip(
                    label: Text('Air F',
                        style: GpsdoMundoTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      log('delete');
                    },
                  ),
                ],
              ))
            ])));
  }
}
