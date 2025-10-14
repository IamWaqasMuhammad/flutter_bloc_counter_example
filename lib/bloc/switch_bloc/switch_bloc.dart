import 'package:bloc/bloc.dart';
import 'package:counter_bloc_example/bloc/switch_bloc/switch_event.dart';
import 'package:counter_bloc_example/bloc/switch_bloc/switch_state.dart';

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
