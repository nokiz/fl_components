import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {

    const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

    double _sliderValue = 100;
    bool _sliderEnabled = true;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Sliders and checks'),
            ),
            body: Column(
                children: [
                    Slider.adaptive(
                        activeColor: AppTheme.primary,
                        min: 50,
                        value: _sliderValue,
                        max: 400,
                        onChanged: _sliderEnabled ? (value) {
                            _sliderValue = value;
                            setState(() {});
                        } : null
                    ),
                    /*Checkbox(
                        value: _sliderEnabled,
                        onChanged: (value) {
                            _sliderEnabled = value ?? true;
                            setState(() {});
                        }
                    ),*/
                    /*CheckboxListTile(
                        activeColor: AppTheme.primary,
                        title: const Text('Habilitar slider'),
                        value: _sliderEnabled,
                        onChanged: (value) => setState(() { _sliderEnabled = value ?? true; })
                    ),*/
                    /*Switch(
                        value: _sliderEnabled,
                        onChanged: (value) => setState(() { _sliderEnabled = value; })
                    ),*/
                    SwitchListTile.adaptive(
                        activeColor: AppTheme.primary,
                        title: const Text('Habilitar slider'),
                        value: _sliderEnabled,
                        onChanged: (value) => setState(() { _sliderEnabled = value; })
                    ),
                    const AboutListTile(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Image(
                            image: const NetworkImage('https://i0.wp.com/gatecrashers.fan/wp-content/uploads/2022/04/BB.jpg'),
                            fit: BoxFit.contain,
                            width: _sliderValue,
                        ),
                      ),
                    ),
                ],
            ),
        );
    }
}