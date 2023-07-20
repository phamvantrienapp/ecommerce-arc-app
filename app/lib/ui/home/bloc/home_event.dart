part of app.ui.home;

abstract class HomeEvent {}

class IncrementEvent extends HomeEvent {
  final int increment;
  IncrementEvent(this.increment);
}

class DecrementEvent extends HomeEvent {
  final int decrement;
  DecrementEvent(this.decrement);
}

class CallTheApi extends HomeEvent {
  CallTheApi();
}
