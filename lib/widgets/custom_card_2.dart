import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({
    super.key,
    required this.imageUrl,
    this.name,
  });

  final String imageUrl;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      elevation: 6,
      shadowColor: Colors.cyanAccent.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/loading.gif'),
            image: NetworkImage(imageUrl),
            width: double.infinity,
            height: 195,
            fit: BoxFit.contain,
            fadeInDuration: const Duration(milliseconds: 300),
          ),

          if (name != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(top: 10, right: 20, bottom: 10),
            child: Text(name!),
          ),
        ],
      ),
    );
  }
}
