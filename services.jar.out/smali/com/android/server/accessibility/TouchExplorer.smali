.class Lcom/android/server/accessibility/TouchExplorer;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/TouchExplorer$1;,
        Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;,
        Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;,
        Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;
    }
.end annotation


# static fields
.field private static final ALL_POINTER_ID_BITS:I = -0x1

.field private static final CLICK_LOCATION_ACCESSIBILITY_FOCUS:I = 0x1

.field private static final CLICK_LOCATION_LAST_TOUCH_EXPLORED:I = 0x2

.field private static final CLICK_LOCATION_NONE:I = 0x0

.field private static final DEBUG:Z = false

.field private static final EXIT_GESTURE_DETECTION_TIMEOUT:I = 0x7d0

.field private static final GESTURE_DETECTION_VELOCITY_DIP:I = 0x3e8

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TouchExplorer"

.field private static final MAX_DRAGGING_ANGLE_COS:F = 0.52532196f

.field private static final MAX_POINTER_COUNT:I = 0x20

.field private static final MIN_POINTER_DISTANCE_TO_USE_MIDDLE_LOCATION_DIP:I = 0xc8

.field private static final MIN_PREDICTION_SCORE:F = 2.0f

.field private static final STATE_DELEGATING:I = 0x4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_GESTURE_DETECTING:I = 0x5

.field private static final STATE_TOUCH_EXPLORING:I = 0x1

.field private static final TOUCH_TOLERANCE:I = 0x3


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private final mDetermineUserIntentTimeout:I

.field private final mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

.field private final mDoubleTapSlop:I

.field private final mDoubleTapTimeout:I

.field private mDraggingPointerId:I

.field private final mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

.field private mGestureLibrary:Landroid/gesture/GestureLibrary;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

.field private mLastTouchedWindowId:I

.field private mLongPressingPointerDeltaX:I

.field private mLongPressingPointerDeltaY:I

.field private mLongPressingPointerId:I

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private final mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

.field private mPreviousX:F

.field private mPreviousY:F

.field private final mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

.field private final mScaledGestureDetectionVelocity:I

.field private final mScaledMinPointerDistanceToUseMiddleLocation:I

.field private final mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

.field private final mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

.field private final mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

.field private final mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

.field private final mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mTapTimeout:I

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchExplorationInProgress:Z

.field private final mTouchSlop:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    const/4 v4, 0x0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 167
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 179
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempRect:Landroid/graphics/Rect;

    .line 182
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 206
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    .line 227
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mContext:Landroid/content/Context;

    .line 228
    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 229
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    .line 230
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 231
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTapTimeout:I

    .line 232
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    .line 233
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapTimeout:I

    .line 234
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchSlop:I

    .line 235
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    .line 236
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 237
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-direct {v1, p0, v4}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    .line 238
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-direct {v1, p0, v4}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    .line 239
    const v1, 0x1100002

    invoke-static {p1, v1}, Landroid/gesture/GestureLibraries;->fromRawResource(Landroid/content/Context;I)Landroid/gesture/GestureLibrary;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    .line 240
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/gesture/GestureLibrary;->setOrientationStyle(I)V

    .line 241
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/gesture/GestureLibrary;->setSequenceType(I)V

    .line 242
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v1}, Landroid/gesture/GestureLibrary;->load()Z

    .line 243
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    .line 244
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    .line 245
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    const/16 v2, 0x400

    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;II)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    .line 248
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    const/high16 v2, 0x200000

    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;II)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    .line 251
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    invoke-direct {v1, p0, v4}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 253
    .local v0, "density":F
    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    .line 255
    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mScaledGestureDetectionVelocity:I

    .line 256
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/accessibility/TouchExplorer;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/accessibility/TouchExplorer;Landroid/graphics/Point;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # Landroid/graphics/Point;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/accessibility/TouchExplorer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/accessibility/TouchExplorer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    return p1
.end method

.method static synthetic access$2202(Lcom/android/server/accessibility/TouchExplorer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    return p1
.end method

.method static synthetic access$2302(Lcom/android/server/accessibility/TouchExplorer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/accessibility/TouchExplorer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/server/accessibility/TouchExplorer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/accessibility/TouchExplorer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/TouchExplorer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTapTimeout:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/TouchExplorer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/TouchExplorer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapTimeout:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/TouchExplorer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    return v0
.end method

.method private clear(Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 272
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    .line 292
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 293
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 294
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 295
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 296
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 297
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 299
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->clear()V

    .line 300
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->clear()V

    .line 302
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->clear()V

    .line 305
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    .line 306
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    .line 307
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    .line 308
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 309
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    .line 312
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    .line 313
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 314
    return-void

    .line 275
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto :goto_0

    .line 278
    :pswitch_2
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 280
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 284
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 288
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private computeClickLocation(Landroid/graphics/Point;)I
    .locals 6
    .param p1, "outLocation"    # Landroid/graphics/Point;

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 1236
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1237
    .local v0, "lastExploreEvent":Landroid/view/MotionEvent;
    if-eqz v0, :cond_2

    .line 1238
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 1239
    .local v1, "lastExplorePointerIndex":I
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p1, Landroid/graphics/Point;->x:I

    .line 1240
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p1, Landroid/graphics/Point;->y:I

    .line 1241
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->accessibilityFocusOnlyInActiveWindow()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    iget-object v5, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 1243
    :cond_0
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 1256
    .end local v1    # "lastExplorePointerIndex":I
    :cond_1
    :goto_0
    return v2

    .line 1253
    :cond_2
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    .line 1254
    goto :goto_0

    .line 1256
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private computeInjectionAction(II)I
    .locals 3
    .param p1, "actionMasked"    # I
    .param p2, "pointerIndex"    # I

    .prologue
    const/4 v1, 0x1

    .line 1066
    sparse-switch p1, :sswitch_data_0

    .line 1089
    .end local p1    # "actionMasked":I
    :goto_0
    return p1

    .line 1069
    .restart local p1    # "actionMasked":I
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 1071
    .local v0, "injectedTracker":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1072
    const/4 p1, 0x0

    goto :goto_0

    .line 1074
    :cond_0
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 p1, v1, 0x5

    goto :goto_0

    .line 1079
    .end local v0    # "injectedTracker":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 1081
    .restart local v0    # "injectedTracker":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result v2

    if-ne v2, v1, :cond_1

    move p1, v1

    .line 1082
    goto :goto_0

    .line 1084
    :cond_1
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 p1, v1, 0x6

    goto :goto_0

    .line 1066
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method private static getStateSymbolicName(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    .prologue
    .line 1266
    packed-switch p0, :pswitch_data_0

    .line 1276
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1268
    :pswitch_1
    const-string v0, "STATE_TOUCH_EXPLORING"

    .line 1274
    :goto_0
    return-object v0

    .line 1270
    :pswitch_2
    const-string v0, "STATE_DRAGGING"

    goto :goto_0

    .line 1272
    :pswitch_3
    const-string v0, "STATE_DELEGATING"

    goto :goto_0

    .line 1274
    :pswitch_4
    const-string v0, "STATE_GESTURE_DETECTING"

    goto :goto_0

    .line 1266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleMotionEventGestureDetecting(Landroid/view/MotionEvent;I)V
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 789
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 791
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 792
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 793
    .local v8, "y":F
    iput v7, p0, Lcom/android/server/accessibility/TouchExplorer;->mPreviousX:F

    .line 794
    iput v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mPreviousY:F

    .line 795
    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v10, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-direct {v10, v7, v8, v12, v13}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 798
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 799
    .restart local v7    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 800
    .restart local v8    # "y":F
    iget v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mPreviousX:F

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 801
    .local v1, "dX":F
    iget v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mPreviousY:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 802
    .local v2, "dY":F
    const/high16 v9, 0x40400000    # 3.0f

    cmpl-float v9, v1, v9

    if-gez v9, :cond_1

    const/high16 v9, 0x40400000    # 3.0f

    cmpl-float v9, v2, v9

    if-ltz v9, :cond_0

    .line 803
    :cond_1
    iput v7, p0, Lcom/android/server/accessibility/TouchExplorer;->mPreviousX:F

    .line 804
    iput v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mPreviousY:F

    .line 805
    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v10, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-direct {v10, v7, v8, v12, v13}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 809
    .end local v1    # "dX":F
    .end local v2    # "dY":F
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_2
    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 811
    const/high16 v9, 0x80000

    invoke-direct {p0, v9}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 813
    const/high16 v9, 0x200000

    invoke-direct {p0, v9}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 815
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 816
    .restart local v7    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 817
    .restart local v8    # "y":F
    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v10, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-direct {v10, v7, v8, v12, v13}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    new-instance v3, Landroid/gesture/Gesture;

    invoke-direct {v3}, Landroid/gesture/Gesture;-><init>()V

    .line 820
    .local v3, "gesture":Landroid/gesture/Gesture;
    new-instance v9, Landroid/gesture/GestureStroke;

    iget-object v10, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-direct {v9, v10}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v9}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 822
    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v9, v3}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v6

    .line 823
    .local v6, "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Prediction;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 824
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Prediction;

    .line 825
    .local v0, "bestPrediction":Landroid/gesture/Prediction;
    iget-wide v10, v0, Landroid/gesture/Prediction;->score:D

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    cmpl-double v9, v10, v12

    if-ltz v9, :cond_2

    .line 831
    :try_start_0
    iget-object v9, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 832
    .local v4, "gestureId":I
    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    .end local v0    # "bestPrediction":Landroid/gesture/Prediction;
    .end local v4    # "gestureId":I
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 840
    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v9}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 841
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    goto/16 :goto_0

    .line 833
    .restart local v0    # "bestPrediction":Landroid/gesture/Prediction;
    :catch_0
    move-exception v5

    .line 834
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    const-string v9, "TouchExplorer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Non numeric gesture id:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 844
    .end local v0    # "bestPrediction":Landroid/gesture/Prediction;
    .end local v3    # "gesture":Landroid/gesture/Gesture;
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    .end local v6    # "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Prediction;>;"
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_3
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .line 789
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 752
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 783
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 786
    :goto_0
    return-void

    .line 754
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Delegating state can only be reached if there is at least one pointer down!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :pswitch_2
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    if-ltz v0, :cond_0

    .line 761
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    neg-int v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object p1

    .line 764
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    .line 765
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    .line 766
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    .line 770
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 773
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 774
    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 776
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    goto :goto_0

    .line 779
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 752
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 659
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    shl-int v11, v14, v15

    .line 660
    .local v11, "pointerIdBits":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    .line 743
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 662
    :pswitch_1
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v15, "Dragging state can be reached only if two pointers are already down"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 668
    :pswitch_2
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 669
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    .line 670
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 672
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 675
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    packed-switch v14, :pswitch_data_1

    .line 709
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 711
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 714
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 680
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 681
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 682
    .local v8, "firstPtrX":F
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 683
    .local v9, "firstPtrY":F
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    .line 684
    .local v12, "secondPtrX":F
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    .line 686
    .local v13, "secondPtrY":F
    sub-float v4, v8, v12

    .line 687
    .local v4, "deltaX":F
    sub-float v5, v9, v13

    .line 688
    .local v5, "deltaY":F
    float-to-double v14, v4

    float-to-double v0, v5

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    .line 690
    .local v6, "distance":D
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    int-to-double v14, v14

    cmpl-double v14, v6, v14

    if-lez v14, :cond_2

    .line 691
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v4, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 695
    :cond_2
    const/4 v14, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_0

    .line 700
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    .end local v6    # "distance":D
    .end local v8    # "firstPtrX":F
    .end local v9    # "firstPtrY":F
    .end local v12    # "secondPtrX":F
    .end local v13    # "secondPtrY":F
    :cond_3
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 702
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 705
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .line 719
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    .line 720
    .local v10, "pointerId":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    if-ne v10, v14, :cond_0

    .line 721
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 723
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_0

    .line 727
    .end local v10    # "pointerId":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 729
    const/high16 v14, 0x200000

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 731
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    .line 732
    .restart local v10    # "pointerId":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    if-ne v10, v14, :cond_4

    .line 733
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 735
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 737
    :cond_4
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    goto/16 :goto_0

    .line 740
    .end local v10    # "pointerId":I
    :pswitch_7
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .line 660
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 675
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 402
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    .line 404
    .local v12, "receivedTracker":Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v13, v0, v1}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->onMotionEvent(Landroid/view/MotionEvent;I)V

    .line 408
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 650
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 410
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionStart()V

    .line 416
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventGestureDetecting(Landroid/view/MotionEvent;I)V

    .line 417
    const/high16 v13, 0x100000

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 422
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 423
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 424
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 426
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 427
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 430
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 431
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 440
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->firstTapDetected()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 442
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v13, v0, v1}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->post(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 445
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    if-nez v13, :cond_0

    .line 446
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$400(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 449
    invoke-virtual {v12}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v7

    .line 450
    .local v7, "pointerId":I
    const/4 v13, 0x1

    shl-int v10, v13, v7

    .line 451
    .local v10, "pointerIdBits":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    const/4 v14, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v13, v0, v14, v10, v1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->post(Landroid/view/MotionEvent;ZII)V

    goto/16 :goto_0

    .line 455
    .end local v7    # "pointerId":I
    .end local v10    # "pointerIdBits":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 463
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 464
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 465
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    goto/16 :goto_0

    .line 468
    :pswitch_3
    invoke-virtual {v12}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v7

    .line 469
    .restart local v7    # "pointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 470
    .local v11, "pointerIndex":I
    const/4 v13, 0x1

    shl-int v10, v13, v7

    .line 471
    .restart local v10    # "pointerIdBits":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    packed-switch v13, :pswitch_data_1

    .line 602
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$400(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 605
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 606
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 607
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 616
    :goto_1
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 617
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 618
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v13}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 475
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$400(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 480
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventGestureDetecting(Landroid/view/MotionEvent;I)V

    .line 483
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    .line 487
    invoke-virtual {v12, v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    sub-float v4, v13, v14

    .line 489
    .local v4, "deltaX":F
    invoke-virtual {v12, v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    sub-float v5, v13, v14

    .line 491
    .local v5, "deltaY":F
    float-to-double v14, v4

    float-to-double v0, v5

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    .line 493
    .local v8, "moveDelta":D
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    int-to-double v14, v13

    cmpl-double v13, v8, v14

    if-lez v13, :cond_0

    .line 497
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v14, 0x3e8

    invoke-virtual {v13, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 498
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v13, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v14, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 501
    .local v6, "maxAbsVelocity":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mScaledGestureDetectionVelocity:I

    int-to-float v13, v13

    cmpl-float v13, v6, v13

    if-lez v13, :cond_5

    .line 504
    const/4 v13, 0x5

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 505
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v13}, Landroid/view/VelocityTracker;->clear()V

    .line 506
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 507
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 508
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 509
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->post()V

    .line 512
    const/high16 v13, 0x40000

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    goto/16 :goto_0

    .line 517
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->forceSendAndRemove()V

    .line 518
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 519
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 520
    const/4 v13, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v13, v10, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_0

    .line 528
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    .end local v6    # "maxAbsVelocity":F
    .end local v8    # "moveDelta":D
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    # invokes: Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->isPending()Z
    invoke-static {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->access$500(Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 529
    invoke-virtual {v12, v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    sub-float v4, v13, v14

    .line 532
    .restart local v4    # "deltaX":F
    invoke-virtual {v12, v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    sub-float v5, v13, v14

    .line 535
    .restart local v5    # "deltaY":F
    float-to-double v14, v4

    float-to-double v0, v5

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    .line 537
    .restart local v8    # "moveDelta":D
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchSlop:I

    int-to-double v14, v13

    cmpl-double v13, v8, v14

    if-lez v13, :cond_7

    .line 538
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 541
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    .end local v8    # "moveDelta":D
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    if-eqz v13, :cond_0

    .line 542
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V

    .line 543
    const/4 v13, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v13, v10, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_0

    .line 551
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$400(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 554
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 555
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 556
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 582
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 584
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 587
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 588
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 589
    invoke-virtual {v12}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedDownEdgeFlags()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 590
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v13, v10, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 597
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v13}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 558
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 559
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    if-eqz v13, :cond_8

    .line 565
    invoke-virtual {v12, v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    sub-float v4, v13, v14

    .line 567
    .restart local v4    # "deltaX":F
    invoke-virtual {v12, v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    sub-float v5, v13, v14

    .line 569
    .restart local v5    # "deltaY":F
    float-to-double v14, v4

    float-to-double v0, v5

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    .line 570
    .restart local v8    # "moveDelta":D
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    int-to-double v14, v13

    cmpg-double v13, v8, v14

    if-ltz v13, :cond_0

    .line 575
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto :goto_2

    .line 594
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    .end local v8    # "moveDelta":D
    :cond_a
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 595
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_3

    .line 609
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 612
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto/16 :goto_1

    .line 623
    .end local v7    # "pointerId":I
    .end local v10    # "pointerIdBits":I
    .end local v11    # "pointerIndex":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 626
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 627
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 628
    .restart local v7    # "pointerId":I
    const/4 v13, 0x1

    shl-int v10, v13, v7

    .line 630
    .restart local v10    # "pointerIdBits":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 631
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v13}, Landroid/view/VelocityTracker;->clear()V

    .line 633
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$400(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 635
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v13, v0, v10, v1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->post(Landroid/view/MotionEvent;II)V

    .line 641
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v13

    if-nez v13, :cond_0

    .line 642
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    goto/16 :goto_0

    .line 638
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto :goto_4

    .line 647
    .end local v7    # "pointerId":I
    .end local v10    # "pointerIdBits":I
    :pswitch_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .line 408
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 471
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private isDraggingGesture(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 1218
    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    .line 1220
    .local v9, "receivedTracker":Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1221
    .local v4, "firstPtrX":F
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 1222
    .local v5, "firstPtrY":F
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 1223
    .local v6, "secondPtrX":F
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 1225
    .local v7, "secondPtrY":F
    invoke-virtual {v9, v8}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v0

    .line 1226
    .local v0, "firstPtrDownX":F
    invoke-virtual {v9, v8}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v1

    .line 1227
    .local v1, "firstPtrDownY":F
    invoke-virtual {v9, v10}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v2

    .line 1228
    .local v2, "secondPtrDownX":F
    invoke-virtual {v9, v10}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v3

    .line 1230
    .local v3, "secondPtrDownY":F
    const v8, 0x3f067b80

    invoke-static/range {v0 .. v8}, Lcom/android/server/accessibility/GestureUtils;->isDraggingGesture(FFFFFFFFF)Z

    move-result v8

    return v8
.end method

.method private offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;
    .locals 21
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    .prologue
    .line 1035
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1050
    .end local p1    # "event":Landroid/view/MotionEvent;
    :goto_0
    return-object p1

    .line 1038
    .restart local p1    # "event":Landroid/view/MotionEvent;
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v20

    .line 1039
    .local v20, "remappedIndex":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v19

    .line 1040
    .local v19, "pointerCount":I
    invoke-static/range {v19 .. v19}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    .line 1041
    .local v8, "props":[Landroid/view/MotionEvent$PointerProperties;
    invoke-static/range {v19 .. v19}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 1042
    .local v9, "coords":[Landroid/view/MotionEvent$PointerCoords;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 1043
    aget-object v2, v8, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 1044
    aget-object v2, v9, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1045
    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 1046
    aget-object v2, v9, v18

    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v0, p2

    int-to-float v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1047
    aget-object v2, v9, v18

    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v0, p3

    int-to-float v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1042
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1050
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

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

    move-result-object p1

    goto :goto_0
.end method

.method private sendAccessibilityEvent(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 855
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 856
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 858
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 859
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 860
    sparse-switch p1, :sswitch_data_0

    .line 869
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    :goto_0
    return-void

    .line 862
    .restart local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :sswitch_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    goto :goto_0

    .line 865
    :sswitch_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    goto :goto_0

    .line 860
    :sswitch_data_0
    .sparse-switch
        0x200 -> :sswitch_0
        0x400 -> :sswitch_1
    .end sparse-switch
.end method

.method private sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V
    .locals 4
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I
    .param p3, "targetAccessibilityFocus"    # Z

    .prologue
    const/4 v3, 0x1

    .line 960
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 961
    .local v0, "pointerId":I
    shl-int v1, v3, v0

    .line 962
    .local v1, "pointerIdBits":I
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 963
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 964
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 965
    invoke-direct {p0, p1, v3, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 966
    return-void
.end method

.method private sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V
    .locals 7
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 879
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 882
    .local v2, "injectedPointers":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    const/4 v5, 0x0

    .line 883
    .local v5, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 884
    .local v3, "pointerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 885
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 887
    .local v4, "pointerId":I
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 888
    const/4 v6, 0x1

    shl-int/2addr v6, v4

    or-int/2addr v5, v6

    .line 889
    const/4 v6, 0x0

    invoke-direct {p0, v6, v1}, Lcom/android/server/accessibility/TouchExplorer;->computeInjectionAction(II)I

    move-result v0

    .line 890
    .local v0, "action":I
    invoke-direct {p0, p1, v0, v5, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 884
    .end local v0    # "action":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 893
    .end local v4    # "pointerId":I
    :cond_1
    return-void
.end method

.method private sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V
    .locals 4
    .param p1, "policyFlags"    # I

    .prologue
    const/16 v3, 0xa

    .line 902
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 903
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 904
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    .line 905
    .local v1, "pointerIdBits":I
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v2

    if-nez v2, :cond_0

    .line 906
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    .line 908
    :cond_0
    invoke-direct {p0, v0, v3, v1, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 910
    .end local v1    # "pointerIdBits":I
    :cond_1
    return-void
.end method

.method private sendMotionEvent(Landroid/view/MotionEvent;III)V
    .locals 4
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I
    .param p3, "pointerIdBits"    # I
    .param p4, "policyFlags"    # I

    .prologue
    .line 978
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 980
    const/4 v0, 0x0

    .line 981
    .local v0, "event":Landroid/view/MotionEvent;
    const/4 v1, -0x1

    if-ne p3, v1, :cond_3

    .line 982
    move-object v0, p1

    .line 986
    :goto_0
    if-nez p2, :cond_4

    .line 987
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 998
    :goto_1
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    if-ltz v1, :cond_0

    .line 999
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    neg-int v1, v1

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    neg-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1009
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr p4, v1

    .line 1010
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_1

    .line 1014
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, p4}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1017
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 1019
    if-eq v0, p1, :cond_2

    .line 1020
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1022
    :cond_2
    return-void

    .line 984
    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v0

    goto :goto_0

    .line 989
    :cond_4
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedDownEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    goto :goto_1
.end method

.method private sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V
    .locals 4
    .param p1, "policyFlags"    # I

    .prologue
    .line 919
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 920
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 921
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    .line 922
    .local v1, "pointerIdBits":I
    const/16 v2, 0x200

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 923
    const/16 v2, 0x9

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 925
    .end local v1    # "pointerIdBits":I
    :cond_0
    return-void
.end method

.method private sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V
    .locals 8
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v7, 0x1

    .line 935
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 936
    .local v2, "injectedTracked":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    const/4 v5, 0x0

    .line 937
    .local v5, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 938
    .local v3, "pointerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 939
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 941
    .local v4, "pointerId":I
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 938
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 944
    :cond_0
    shl-int v6, v7, v4

    or-int/2addr v5, v6

    .line 945
    invoke-direct {p0, v7, v1}, Lcom/android/server/accessibility/TouchExplorer;->computeInjectionAction(II)I

    move-result v0

    .line 946
    .local v0, "action":I
    invoke-direct {p0, p1, v0, v5, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_1

    .line 948
    .end local v0    # "action":I
    .end local v4    # "pointerId":I
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 262
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v1

    const/high16 v2, 0x2000000

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    .line 265
    :cond_0
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/16 v2, 0x100

    .line 354
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 358
    .local v0, "eventType":I
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v0, v2, :cond_0

    .line 360
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 361
    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne v0, v2, :cond_1

    .line 368
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 369
    const/high16 v1, 0x200000

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 374
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 388
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_2

    .line 389
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 391
    :cond_2
    return-void

    .line 377
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    # getter for: Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->access$300(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 378
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    # getter for: Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->access$300(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 379
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;
    invoke-static {v1, v2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->access$302(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 381
    :cond_3
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    goto :goto_0

    .line 385
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    goto :goto_0

    .line 374
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x80 -> :sswitch_1
        0x100 -> :sswitch_1
        0x8000 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;Landroid/view/KeyEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "rawEvent"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 323
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 335
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    .line 349
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 351
    :goto_0
    return-void

    .line 340
    :pswitch_2
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 343
    :pswitch_3
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 346
    :pswitch_4
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventGestureDetecting(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 319
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1540
    const-string v0, "TouchExplorer"

    return-object v0
.end method
