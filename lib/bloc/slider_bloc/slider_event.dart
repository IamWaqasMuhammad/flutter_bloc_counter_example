import 'package:equatable/equatable.dart';

abstract class SliderEvent extends Equatable {
  const SliderEvent();
  @override
  List<Object> get props => [];
}

class SliderValue extends SliderEvent {
  double slider;
  SliderValue({required this.slider});

  List<Object> get props => [slider];
}
