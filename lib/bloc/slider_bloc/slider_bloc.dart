import 'package:bloc/bloc.dart';
import 'package:counter_bloc_example/bloc/slider_bloc/slider_event.dart';
import 'package:counter_bloc_example/bloc/slider_bloc/slider_state.dart';

class SliderBloc extends Bloc<SliderEvent, SliderState> {
  SliderBloc() : super(SliderState()) {
    on<SliderValue>(_slider);
  }

  void _slider(SliderValue event, Emitter<SliderState> emit) {
    emit(state.copyWith(slider: event.slider));
  }
}
