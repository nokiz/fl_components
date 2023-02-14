import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {

    const AvatarScreen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Uve'),
                actions: [
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      child: const CircleAvatar(
                          backgroundColor: Colors.cyan,
                          child: Text('V'),
                      ),
                    )
                ],
            ),
            body: const Center(
                child: CircleAvatar(
                    maxRadius: 100,
                    backgroundImage: NetworkImage('https://cloudfront-us-east-1.images.arcpublishing.com/elcomercio/QVNSZTXWSREX7N46AWTTXF227E.jpg'),
                ),
            ),
        );
    }
}