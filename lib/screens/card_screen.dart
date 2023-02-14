import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {

    const CardScreen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Card Widget'),
            ),
            body: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                children: const [
                    CustomCard1(),
                    SizedBox(height: 10,),
                    CustomCard2(imageUrl: 'https://fotografias-neox.atresmedia.com/clipping/cmsimages02/2020/12/18/EA6E7EBE-487F-4940-AF28-1C92CEF5D798/98.jpg?crop=1920,1080,x0,y0&width=1900&height=1069&optimize=high&format=webply', name: 'Cyberpunk 2077 - Man',),
                    SizedBox(height: 10,),
                    CustomCard2(imageUrl: 'https://gescovid.com/wp-content/uploads/2020/10/cyberpunk-2077-amenazas-de-muerte-retraso-lanzamiento.jpg', name: 'Cyberpunk 2077 - Woman',),
                    SizedBox(height: 10,),
                    CustomCard2(imageUrl: 'https://i.blogs.es/b109e9/cyberpunk2077-johnny-v-rgb_en/1366_2000.jpg'),
                    SizedBox(height: 100,),

                ],
            ),
        );
    }
}