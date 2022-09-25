open Types

@module("react-native-swipe-list-view") @react.component
external make: (
  /*
   * Used by the SwipeListView to close rows on scroll events.
   * You shouldn't need to use this prop explicitly.
   */
  ~setScrollEnabled: bool => unit=?,
  /*
   * Called when it has been detected that a row should be swiped open.
   */
  ~swipeGestureBegan: unit => unit=?,
  /*
   * Called when user has ended their swipe gesture
   */
  ~swipeGestureEnded: (~swipeKey: string, swipeGestureEndedData) => unit=?,
  /*
   * Called when a swipe row is animating open. Used by the SwipeListView
   * to keep references to open rows.
   */
  ~onRowOpen: float => unit=?,
  /*
   * Called when a swipe row has animated open.
   */
  ~onRowDidOpen: float => unit=?,
  ~onRowPress: unit => unit=?,
  /*
   * TranslateX value for opening the row to the left (positive float)
   */
  ~leftOpenValue: float=?,
  /*
   * TranslateX value for opening the row to the right (negative float)
   */
  ~rightOpenValue: float=?,
  /*
   * TranslateX value for firing onLeftActionStatusChange (positive float)
   */
  ~leftActivationValue: float=?,
  /*
   * TranslateX value for firing onRightActionStatusChange (negative float)
   */
  ~rightActivationValue: float=?,
  /*
   * TranslateX value for left action to which the row will be shifted after gesture release
   */
  ~leftActionValue: float=?,
  /*
   * TranslateX value for right action to which the row will be shifted after gesture release
   */
  ~rightActionValue: float=?,
  /*
   * Initial value for left action state (default is false)
   */
  ~initialLeftActionState: bool=?,
  /*
   * Initial value for right action state (default is false)
   */
  ~initialRightActionState: bool=?,
  /*
   * TranslateX value for stop the row to the left (positive float)
   */
  ~stopLeftSwipe: float=?,
  /*
   * TranslateX value for stop the row to the right (negative float)
   */
  ~stopRightSwipe: float=?,
  /*
   * Friction for the open / close animation
   */
  ~friction: float=?,
  /*
   * Tension for the open / close animation
   */
  ~tension: float=?,
  /*
   * RestSpeedThreshold for the open / close animation
   */
  ~restSpeedThreshold: float=?,
  /*
   * RestDisplacementThreshold for the open / close animation
   */
  ~restDisplacementThreshold: float=?,
  /*
   * Should the row be closed when it is tapped
   */
  ~closeOnRowPress: bool=?,
  /*
   * Disable ability to swipe the row left
   */
  ~disableLeftSwipe: bool=?,
  /*
   * Disable ability to swipe the row right
   */
  ~disableRightSwipe: bool=?,
  /*
   * Enable hidden row onLayout calculations to run always
   */
  ~recalculateHiddenLayout: bool=?,
  /*
   * Disable hidden row onLayout calculations
   */
  ~disableHiddenLayoutCalculation: bool=?,
  /*
   * Called when a swipe row is animating closed
   */
  ~onRowClose: unit => unit=?,
  /*
   * Called when a swipe row has animated closed
   */
  ~onRowDidClose: unit => unit=?,
  /*
   * Called when row shifted to leftActivationValue
   */
  ~onLeftAction: (string, rowMap<'t>) => unit=?,
  /*
   * Called when row shifted to rightActivationValue
   */
  ~onRightAction: (string, rowMap<'t>) => unit=?,
  /*
   * Called once when swipe value crosses the leftActivationValue
   */
  ~onLeftActionStatusChange: statusChangePayload => unit=?,
  /*
   * Called once when swipe value crosses the rightActivationValue
   */
  ~onRightActionStatusChange: statusChangePayload => unit=?,
  /*
   * Styles for the parent wrapper View of the SwipeRow
   */
  ~style: ReactNative.Style.t=?,
  /*
   * Should the row do a slide out preview to show that it is swipeable
   */
  ~preview: bool=?,
  /*
   * Duration of the slide out preview animation
   */
  ~previewDuration: float=?,
  /*
   * Should the animation repeat until false is provided
   */
  ~previewRepeat: bool=?,
  /*
   * Time between each full completed animation in milliseconds
   * Default: 1000 (1 second)
   */
  ~previewRepeatDelay: float=?,
  /*
   * TranslateX value for the slide out preview animation
   * Default: 0.5 * props.rightOpenValue
   */
  ~previewOpenValue: float=?,
  /*
   * The dx value used to detect when a user has begun a swipe gesture
   */
  ~directionalDistanceChangeThreshold: float=?,
  /*
   * What % of the left/right openValue does the user need to swipe
   * past to trigger the row opening.
   */
  ~swipeToOpenPercent: float=?,
  /*
   * Describes how much the ending velocity of the gesture contributes to whether the swipe will result in the item being closed or open.
   * A velocity factor of 0 means that the velocity will have no bearing on whether the swipe settles on a closed or open position
   * and it'll just take into consideration the swipeToOpenPercent.
   */
  ~swipeToOpenVelocityContribution: float=?,
  /*
   * What % of the left/right openValue does the user need to swipe
   * past to trigger the row closing.
   */
  ~swipeToClosePercent: float=?,
  /*
   * callback to determine whether component should update (currentItem, newItem)
   */
  ~shouldItemUpdate: ('item, 'item) => unit=?,
  /*
   * Callback invoked any time the swipe value of the row is changed
   */
  ~onSwipeValueChange: {"value": float, "direction": [#left | #right], "isOpen": bool} => unit=?,
  ~item: 'item=?,
  /*
   * useNativeDriver: true for all animations where possible
   */
  ~useNativeDriver: bool=?,
) => React.element = "SwipeRow"
