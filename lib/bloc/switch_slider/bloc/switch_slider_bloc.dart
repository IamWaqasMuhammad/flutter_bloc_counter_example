import 'package:bloc/bloc.dart';
import 'package:counter_bloc_example/bloc/switch_slider/bloc/switch_slider_event.dart';
import 'package:counter_bloc_example/bloc/switch_slider/bloc/switch_slider_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(SwitchState()) {
    on<EnableOrDisableNotificationEvent>(_enableOrDisableNotificationEvent);
  }

  void _enableOrDisableNotificationEvent(
    EnableOrDisableNotificationEvent event,
    Emitter<SwitchState> emit,
  ) {
    emit(state.copyWith(isSwitch: !state.isSwitch));
  }
}
