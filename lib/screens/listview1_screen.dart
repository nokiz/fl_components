import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

    final options = const['super mario', 'gta v', 'skyrim', 'the witcher'];

    const ListView1Screen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('ListView1'),
            ),
            body: ListView(
                children: [
                    ...options.map(
                            (game) => ListTile(
                                title: Text(game),
                                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                            )
                    ).toList(),
                ],
            ),
        );
    }
}