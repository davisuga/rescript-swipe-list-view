open ReactNative
type swipeGestureEndedData = {
  translateX: float,
  direction: [#left | #right],
  event: Event.pressEvent,
  gestureState: PanResponder.gestureState,
}

type rowMap<'t>
type statusChangePayload = {
  isActivated: bool,
  value: float,
  key: string,
}
