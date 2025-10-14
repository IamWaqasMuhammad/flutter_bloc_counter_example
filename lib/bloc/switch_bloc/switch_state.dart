import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class SwitchState extends Equatable {
  bool isSwitch;
  SwitchState({this.isSwitch = false});

  SwitchState copyWith({bool? isSwitch}) {
    return SwitchState(
      isSwitch: isSwitch??this.isSwitch,
    );
  }

  @override
  List<Object?> get props => [isSwitch];
}
