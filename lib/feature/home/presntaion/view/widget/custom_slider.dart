import 'package:community/core/utils/assets.dart';
import 'package:community/core/widget/width.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double _value = 75;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            thumbShape: SliderComponentShape.noThumb,
            // overlayShape: SliderComponentShape.noOverlay,
          ),
          child: SizedBox(
            width: 164,
            child: Slider(
              activeColor: Colors.white,
              inactiveColor: Colors.grey,
              padding: const EdgeInsets.all(0),
              value: _value,
              min: 0,
              max: 100,
              divisions: 100,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
          ),
        ),
        const Width(3),
        Text('${_value.toInt()}%'),
        const Spacer(),
        SvgPicture.asset(Assets.imagesAudio),
        const Width(15),
      ],
    );
  }
}
