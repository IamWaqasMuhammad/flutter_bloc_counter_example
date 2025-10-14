import 'package:counter_bloc_example/bloc/slider_bloc/slider_bloc.dart';
import 'package:counter_bloc_example/bloc/slider_bloc/slider_event.dart';
import 'package:counter_bloc_example/bloc/slider_bloc/slider_state.dart';
import 'package:counter_bloc_example/bloc/switch_bloc/switch_bloc.dart';
import 'package:counter_bloc_example/bloc/switch_bloc/switch_event.dart';
import 'package:counter_bloc_example/bloc/switch_bloc/switch_state.dart';
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
                buildWhen: (previous, current) => previous != current,
                builder: (context, state) {
                  print('Notification');
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
          BlocBuilder<SliderBloc, SliderState>(
            builder: (context, state) {
              return Container(
                      height: 250,
                      color:Colors.amber.withOpacity(state.slider),
                    );
            },
          ),
          SizedBox(height: 30),
          BlocBuilder<SliderBloc, SliderState>(
            buildWhen: (previous, current) => previous != current,
            builder: (context, state) {
              return Slider(
                value: state.slider,
                onChanged: (value) {
                  print(value);
                  print('Slider');
                  context.read<SliderBloc>().add(SliderValue(slider: value));
                },
                activeColor: Colors.amber,
              );
            },
          ),
        ],
      ),
    );
  }
}
