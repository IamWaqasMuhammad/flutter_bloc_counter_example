import 'package:counter_bloc_example/bloc/switch_slider/bloc/switch_slider_bloc.dart';
import 'package:counter_bloc_example/bloc/switch_slider/bloc/switch_slider_event.dart';
import 'package:counter_bloc_example/bloc/switch_slider/bloc/switch_slider_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchSlider extends StatelessWidget {
  const SwitchSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Slider and Switch Example'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Notifications'),
              BlocBuilder<SwitchBloc, SwitchState>(
                builder: (context, state) {
                  return Switch(
                    value: state.isSwitch,
                    onChanged: (value) {
                      context.read<SwitchBloc>().add(
                        EnableOrDisableNotificationEvent(),
                      );
                    },
                    activeThumbColor: Colors.amber,
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 30),
          Slider(value: 0.5, onChanged: (value) {}, activeColor: Colors.amber),
        ],
      ),
    );
  }
}
