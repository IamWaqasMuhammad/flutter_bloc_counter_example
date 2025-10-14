import 'package:equatable/equatable.dart';

class SliderState extends Equatable {
  double slider;
  SliderState({this.slider = 1.0});

  SliderState copyWith({double? slider}) {
    return SliderState(
      slider: slider??this.slider,
    );
  }

  @override
  List<Object> get props => [slider];
}
