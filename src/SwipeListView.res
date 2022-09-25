include Types

@module("react-native-swipe-list-view") @react.component
external make: (
  ~dataSource: 'ListViewDataSource=?,
  // onScroll(event: NativeSyntheticEvent<NativeScrollEvent>): ()
  /*
   * To render a custom ListView component, if you don't want to use ReactNative one.
   * Note: This will call `renderRow`, not `renderItem`
   */
  // ~renderListView: (props: 'iRenderListViewProps<T>, setRefCallback: unknown, onScrollCallback: (event: NativeSyntheticEvent<NativeScrollEvent>) => (), renderItemOrRowCallback: ((rowData: ListRenderItemInfo<T>, rowMap<'a>) => JSX.Element | null) | ((rowData: ListRenderItemInfo<T>, secId: string, rowId: string, rowMap<'a>) => JSX.Element)): ListView
  /*
   * How to render a row in a FlatList. Should return a valid React Element.
   */
  ~data: array<'item>=?,
  ~renderItem: (ReactNative.VirtualizedList.renderItemProps<'item>, rowMap<'a>) => React.element=?,
  // ~renderItem: (rowData: ListRenderItemInfo<T>, rowMap<'a>): JSX.Element | null
  /*
   * How to render a hidden row in a FlatList (renders behind the row). Should return a valid React Element.
   * This is required unless renderItem is passing a SwipeRow.
   */
  ~renderHiddenItem: (
    ReactNative.VirtualizedList.renderItemProps<'item>,
    rowMap<'a>,
  ) => React.element=?,
  /*
   * [DEPRECATED] How to render a row in a ListView. Should return a valid React Element.
   */
  // [TODO] ~renderRow: (rowData: T, secId: string, rowId: string, rowMap<'a>): JSX.Element
  /*
   * [DEPRECATED] How to render a hidden row in a ListView (renders behind the row). Should return a valid React Element.
   * This is required unless renderRow is passing a SwipeRow.
   */
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
   * Should open rows be closed when the listView begins scrolling
   */
  ~closeOnScroll: bool=?,
  /*
   * Should open rows be closed when a row is pressed
   */
  ~closeOnRowPress: bool=?,
  /*
   * Should open rows be closed when a row begins to swipe open
   */
  ~closeOnRowBeginSwipe: bool=?,
  /*
   * Should open rows be closed when another row is opened
   */
  ~closeOnRowOpen: bool=?,
  /*
   * Disable ability to swipe rows left
   */
  ~disableLeftSwipe: bool=?,
  /*
   * Disable ability to swipe rows right
   */
  ~disableRightSwipe: bool=?,
  /*
   * Enable hidden row onLayout calculations to run always.
   *
   * By default, hidden row size calculations are only done on the first onLayout event
   * for performance reasons.
   * Passing ```true``` here will cause calculations to run on every onLayout event.
   * You may want to do this if your rows' sizes can change.
   * One case is a SwipeListView with rows of different heights and an options to delete rows.
   */
  ~recalculateHiddenLayout: bool=?,
  /*
   * Disable hidden row onLayout calculations
   *
   * Instead, {width: '100%', height: '100%'} will be used.
   * Improves performance by a()ing component updates, while still working with orientation changes.
   */
  ~disableHiddenLayoutCalculation: bool=?,
  /*
   * Called when a swipe row is animating swipe
   */
  ~swipeGestureBegan: string => unit=?,
  /*
   * Called when user has ended their swipe gesture
   */
  ~swipeGestureEnded: (string, swipeGestureEndedData) => unit=?,
  /*
   * Called when a swipe row is animating open=?,
   */
  ~onRowOpen: (string, rowMap<'a>, float) => unit=?,
  /*
   * Called when a swipe row has animated open
   */
  ~onRowDidOpen: (string, rowMap<'a>, float) => unit=?,
  /*
   * Called when a swipe row is animating closed
   */
  ~onRowClose: (string, rowMap<'a>) => unit=?,
  /*
   * Called when a swipe row has animated closed
   */
  ~onRowDidClose: (string, rowMap<'a>) => unit=?,
  /*
   * Called when row shifted to leftActivationValue
   */
  ~onLeftAction: (string, rowMap<'a>) => unit=?,
  /*
   * Called when row shifted to rightActivationValue
   */
  ~onRightAction: (string, rowMap<'a>) => unit=?,
  /*
   * Called once when swipe value crosses the leftActivationValue
   */
  ~onLeftActionStatusChange: statusChangePayload => unit=?,
  /*
   * Called once when swipe value crosses the rightActivationValue
   */
  ~onRightActionStatusChange: statusChangePayload => unit=?,
  /*
   * Called when scrolling on the SwipeListView has been enabled/disabled
   */
  ~onScrollEnabled: bool => unit=?,
  /*
   * Styles for the parent wrapper View of the SwipeRow
   */
  ~swipeRowStyle: ReactNative.Style.t=?,
  /*
   * Called when the ListView (or FlatList) ref is set and passes a ref to the ListView (or FlatList)
   * e.g. listViewRef={ ref => this._swipeListViewRef = ref }
   */
  // [TODO] ~listViewRef: (SwipeListView<T>) => ()=?,
  /*
   * Should the row with this key do a slide out preview to show that the list is swipeable
   */
  ~preview: string=?,
  /*
   * [DEPRECATED] Should the first SwipeRow do a slide out preview to show that the list is swipeable
   */
  ~previewFirstRow: bool=?,
  /*
   * [DEPRECATED] Should the specified rowId do a slide out preview to show that the list is swipeable
   * Note: This ID will be passed to this function to get the correct row index
   * https://facebook.github.io/react-native/docs/listviewdatasource.html#getrowidforflatindex
   */
  ~previewRowIndex: float=?,
  /*
   * Duration of the slide out preview animation (milliseconds)
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
   * Delay of the slide out preview animation (milliseconds) // default 700ms
   */
  ~previewOpenDelay: float=?,
  /*
   * TranslateX value for the slide out preview animation
   * Default: 0.5 * props.rightOpenValue
   */
  ~previewOpenValue: float=?,
  /* =?,
   * Friction for the open / close animation
   */
  ~friction: float=?,
  /* =?,
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
   * The dx value used to detect when a user has begun a swipe gesture
   */
  ~directionalDistanceChangeThreshold: float=?,
  /*
   * What % of the left/right openValue does the user need to swipe
   * past to trigger the row opening.
   */
  ~swipeToOpenPercent: float=?,
  /*
   * Describes how much the ending velocity of the gesture affects whether the swipe will result in the item being closed or open.
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
   * Callback invoked any time the swipe value of a SwipeRow is changed
   */
  ~onSwipeValueChange: {
    "key": string,
    "value": float,
    "direction": [#left | #right],
    "isOpen": bool,
  } => unit=?,
  /*
   * Use Animated.Flatlist or Animated.Sectionlist
   */
  ~useAnimatedList: bool=?,
  /*
   * useNativeDriver: true for all animations where possible
   */
  ~useNativeDriver: bool=?,
) => React.element = "SwipeListView"
