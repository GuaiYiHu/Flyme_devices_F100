.class final Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DetectingStateHandler"
.end annotation


# static fields
.field private static final ACTION_TAP_COUNT:I = 0x3

.field private static final MESSAGE_ON_ACTION_TAP_AND_HOLD:I = 0x1

.field private static final MESSAGE_TRANSITION_TO_DELEGATING_STATE:I = 0x2


# instance fields
.field private mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mLastDownEvent:Landroid/view/MotionEvent;

.field private mLastTapUpEvent:Landroid/view/MotionEvent;

.field private mTapCount:I

.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;)V
    .locals 1

    .prologue
    .line 833
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler$1;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;Lcom/android/server/accessibility/ScreenMagnifier$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p2, "x1"    # Lcom/android/server/accessibility/ScreenMagnifier$1;

    .prologue
    .line 833
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I

    .prologue
    .line 833
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->onActionTapAndHold(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->sendDelayedMotionEvents()V

    return-void
.end method

.method private cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 991
    invoke-static {p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v0

    .line 993
    .local v0, "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    if-nez v2, :cond_0

    .line 994
    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 1002
    :goto_0
    return-void

    .line 996
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 997
    .local v1, "tail":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    :goto_1
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->access$2800(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 998
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->access$2800(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v1

    goto :goto_1

    .line 1000
    :cond_1
    # setter for: Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v1, v0}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->access$2802(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    goto :goto_0
.end method

.method private clearDelayedMotionEvents()V
    .locals 2

    .prologue
    .line 1036
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    if-eqz v1, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 1038
    .local v0, "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->access$2800(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 1039
    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->recycle()V

    goto :goto_0

    .line 1041
    .end local v0    # "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    :cond_0
    return-void
.end method

.method private clearLastDownEvent()V
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 985
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    .line 987
    :cond_0
    return-void
.end method

.method private clearLastTapUpEvent()V
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 978
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    .line 980
    :cond_0
    return-void
.end method

.method private clearTapDetectionState()V
    .locals 1

    .prologue
    .line 970
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    .line 971
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearLastTapUpEvent()V

    .line 972
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearLastDownEvent()V

    .line 973
    return-void
.end method

.method private obtainEventWithOffsetTimeAndDownTime(Landroid/view/MotionEvent;J)Landroid/view/MotionEvent;
    .locals 20
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "offset"    # J

    .prologue
    .line 1019
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 1020
    .local v7, "pointerCount":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v6, v7}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2900(Lcom/android/server/accessibility/ScreenMagnifier;I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 1021
    .local v9, "coords":[Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;
    invoke-static {v6, v7}, Lcom/android/server/accessibility/ScreenMagnifier;->access$3000(Lcom/android/server/accessibility/ScreenMagnifier;I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    .line 1022
    .local v8, "properties":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v7, :cond_0

    .line 1023
    aget-object v6, v9, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1024
    aget-object v6, v8, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 1022
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1026
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    add-long v2, v10, p2

    .line 1027
    .local v2, "downTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    add-long v4, v10, p2

    .line 1028
    .local v4, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v6

    return-object v6
.end method

.method private onActionTap(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "up"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v4, 0x1

    .line 1053
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1400(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1400(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->getPersistedScale()F
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1500(Lcom/android/server/accessibility/ScreenMagnifier;)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    .line 1059
    :goto_0
    return-void

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1400(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->reset(Z)V

    goto :goto_0
.end method

.method private onActionTapAndHold(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "down"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 1065
    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    .line 1066
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1400(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v1

    # setter for: Lcom/android/server/accessibility/ScreenMagnifier;->mTranslationEnabledBeforePan:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2002(Lcom/android/server/accessibility/ScreenMagnifier;Z)Z

    .line 1067
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1400(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->getPersistedScale()F
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1500(Lcom/android/server/accessibility/ScreenMagnifier;)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    .line 1069
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v1, 0x3

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1800(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    .line 1070
    return-void
.end method

.method private sendDelayedMotionEvents()V
    .locals 10

    .prologue
    .line 1005
    :goto_0
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    if-eqz v5, :cond_0

    .line 1006
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 1007
    .local v1, "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->access$2800(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 1008
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mCachedTimeMillis:J

    sub-long v2, v6, v8

    .line 1009
    .local v2, "offset":J
    iget-object v5, v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v5, v2, v3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->obtainEventWithOffsetTimeAndDownTime(Landroid/view/MotionEvent;J)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1010
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v5, v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v5, v2, v3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->obtainEventWithOffsetTimeAndDownTime(Landroid/view/MotionEvent;J)Landroid/view/MotionEvent;

    move-result-object v4

    .line 1011
    .local v4, "rawEvent":Landroid/view/MotionEvent;
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    iget v6, v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mPolicyFlags:I

    invoke-virtual {v5, v0, v4, v6}, Lcom/android/server/accessibility/ScreenMagnifier;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1012
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1013
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 1014
    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->recycle()V

    goto :goto_0

    .line 1016
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v1    # "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    .end local v2    # "offset":J
    .end local v4    # "rawEvent":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method private transitionToDelegatingStateAndClear()V
    .locals 2

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1800(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    .line 1045
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->sendDelayedMotionEvents()V

    .line 1046
    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    .line 1047
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 964
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 965
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearTapDetectionState()V

    .line 966
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearDelayedMotionEvents()V

    .line 967
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 870
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 871
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 872
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 960
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 874
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 875
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;
    invoke-static {v4}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1900(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 877
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto :goto_0

    .line 880
    :cond_1
    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    if-ne v4, v8, :cond_3

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapTimeSlop:I
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2300(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapDistanceSlop:I
    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2400(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v6

    invoke-static {v4, p1, v5, v6, v7}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 883
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9, p3, v7, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 885
    .local v1, "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 892
    .end local v1    # "message":Landroid/os/Message;
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearLastDownEvent()V

    .line 893
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 887
    :cond_3
    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    if-ge v4, v10, :cond_2

    .line 888
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 890
    .restart local v1    # "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapTimeSlop:I
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2300(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 897
    .end local v1    # "message":Landroid/os/Message;
    :pswitch_2
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mIsSmallScreenSupport:Z
    invoke-static {}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1200()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 898
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-lt v4, v10, :cond_0

    .line 903
    :cond_4
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v4}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1400(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 904
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v5, 0x4

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V
    invoke-static {v4, v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1800(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    .line 905
    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    goto/16 :goto_0

    .line 907
    :cond_5
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_0

    .line 911
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    if-ge v4, v8, :cond_0

    .line 912
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    invoke-static {v4, p1, v7}, Lcom/android/server/accessibility/GestureUtils;->computeDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)D

    move-result-wide v2

    .line 914
    .local v2, "distance":D
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mTapDistanceSlop:I
    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2500(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v6

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 915
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_0

    .line 920
    .end local v2    # "distance":D
    :pswitch_4
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-nez v4, :cond_6

    .line 922
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mTouchBack:Z
    invoke-static {v4}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2600(Lcom/android/server/accessibility/ScreenMagnifier;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 923
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 924
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_0

    .line 929
    :cond_6
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 930
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;
    invoke-static {v4}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1900(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-nez v4, :cond_7

    .line 931
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_0

    .line 934
    :cond_7
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mTapTimeSlop:I
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2700(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mTapDistanceSlop:I
    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2500(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v6

    invoke-static {v4, p1, v5, v6, v7}, Lcom/android/server/accessibility/GestureUtils;->isTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v4

    if-nez v4, :cond_8

    .line 936
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_0

    .line 939
    :cond_8
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapTimeSlop:I
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2300(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapDistanceSlop:I
    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2400(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v6

    invoke-static {v4, p1, v5, v6, v7}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v4

    if-nez v4, :cond_9

    .line 941
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_0

    .line 944
    :cond_9
    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    .line 948
    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    if-ne v4, v10, :cond_a

    .line 949
    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    .line 950
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->onActionTap(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .line 953
    :cond_a
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearLastTapUpEvent()V

    .line 954
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 872
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
