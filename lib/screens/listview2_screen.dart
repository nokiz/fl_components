import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ['super mario', 'gta v', 'skyrim', 'the witcher'];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView2'),
          backgroundColor: Colors.indigo,
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.indigo,
            ),
            onTap: () {
              //final game = options[index];
              //print(game);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        )
    );
  }
}
