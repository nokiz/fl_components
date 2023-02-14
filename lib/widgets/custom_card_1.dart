import 'package:flutter/material.dart';
import 'package:fl_components/themes/app_theme.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Lorem ipsum nosequé nosecuantos. En un lugar de la mancha de cuyo nombre no me quiero acordar, con cien cañones por banda, viento en popa a toda vela, no corta el mar, sino vuela, un velero vergantil.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text('Cancel')
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text('OK'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
