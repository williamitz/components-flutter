import 'package:flutter/material.dart';
import 'package:components_app/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _valueSlider = 80;
  bool _chkEnable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider screen'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            value: _valueSlider,
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            // divisions: 5,
            onChanged: _chkEnable ? null : (val) {
              _valueSlider = val;
              setState(() {});
            }
          ),

          // Checkbox(
          //   value: _chkEnable,
          //   onChanged: (val) {
          //     setState(() {
          //       _chkEnable = val ?? false;
          //     });
          //   }
          // ),

          CheckboxListTile(
            title: const Text('Activar'),
            subtitle: const Text('Active o desactive slider'),
            activeColor: AppTheme.primary,
            value: _chkEnable,
            onChanged: (val) {
              setState(() {
                _chkEnable = val ?? false;
              });
            }
          ),

          SwitchListTile.adaptive(
            title: const Text('Activar'),
            subtitle: const Text('Active o desactive slider'),
            activeColor: AppTheme.primary,            
            value: _chkEnable,
            onChanged: (val) {
              setState(() {
                _chkEnable = val;
              });
            }
          ),

          // opcion que muestra modal con la info de la app
          const AboutListTile() ,       

          Expanded(
            child: SingleChildScrollView(
              child: FadeInImage(
                  fit: BoxFit.contain,
                  width: _valueSlider,
                  placeholder: const AssetImage('assets/jar-loading.gif'),
                  image: const NetworkImage(
                      'https://cdn.pixabay.com/photo/2020/07/06/17/51/batman-5377804_960_720.png')
              ),
            ),
          ),
        ],
      ),
    );
  }
}
