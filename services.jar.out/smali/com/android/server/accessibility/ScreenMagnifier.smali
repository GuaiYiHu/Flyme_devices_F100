.class public final Lcom/android/server/accessibility/ScreenMagnifier;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"

# interfaces
.implements Landroid/view/WindowManagerInternal$MagnificationCallbacks;
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;,
        Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;,
        Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;,
        Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;,
        Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;,
        Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;
    }
.end annotation


# static fields
.field private static final BACK_DEFAULT_TO_LIFT:I = 0x2

.field private static final DEBUG_DETECTING:Z = false

.field private static final DEBUG_MAGNIFICATION_CONTROLLER:Z = false

.field private static final DEBUG_PANNING:Z = false

.field private static final DEBUG_SCALING:Z = false

.field private static final DEBUG_SET_MAGNIFICATION_SPEC:Z = false

.field private static final DEBUG_STATE_TRANSITIONS:Z = false

.field private static final DEBUG_STATE_VIEWPORT_DRAGGING:Z = false

.field private static DEFAULT_MAGNIFICATION_SCALE:F = 0.0f

.field private static final DEFAULT_SCREEN_MAGNIFICATION_AUTO_UPDATE:I = 0x1

.field private static final DEFAULT_SCREEN_OFFSETX:F = 93.8f

.field private static final DEFAULT_SCREEN_OFFSETY:F = 166.8f

.field private static final KEY_BACK_ACTION_TIME:I = 0xbb8

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MESSAGE_KEY_BACK_ACTION:I = 0x64

.field private static final MESSAGE_ON_MAGNIFIED_BOUNDS_CHANGED:I = 0x1

.field private static final MESSAGE_ON_RECTANGLE_ON_SCREEN_REQUESTED:I = 0x2

.field private static final MESSAGE_ON_ROTATION_CHANGED:I = 0x4

.field private static final MESSAGE_ON_USER_CONTEXT_CHANGED:I = 0x3

.field private static final MULTI_TAP_TIME_SLOP_ADJUSTMENT:I = 0x32

.field private static final MY_PID:I

.field private static final STATE_DELEGATING:I = 0x1

.field private static final STATE_DETECTING:I = 0x2

.field private static final STATE_MAGNIFIED_INTERACTION:I = 0x4

.field private static final STATE_VIEWPORT_DRAGGING:I = 0x3

.field private static mIsSmallScreenSupport:Z


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private mBackAction:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mDelegatingStateDownTime:J

.field private final mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

.field private mDisplayHeight:F

.field private mDisplayPpi:F

.field private mDisplayWidth:F

.field private final mHandler:Landroid/os/Handler;

.field private final mLongAnimationDuration:J

.field private final mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

.field private final mMagnifiedBounds:Landroid/graphics/Region;

.field private final mMagnifiedContentInteractonStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

.field private final mMultiTapDistanceSlop:I

.field private final mMultiTapTimeSlop:I

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mPreviousState:I

.field private final mScreenStateObserver:Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

.field private mSmallScreen:Z

.field private final mStateViewportDraggingHandler:Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

.field private final mTapDistanceSlop:I

.field private final mTapTimeSlop:I

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private mTouchBack:Z

.field private mTranslationEnabledBeforePan:Z

.field private mUpdateMagnificationSpecOnNextBoundsChange:Z

.field private final mWindowManager:Landroid/view/WindowManagerInternal;

.field private final mWindowManagerDisplay:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-class v0, Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/accessibility/ScreenMagnifier;->mIsSmallScreenSupport:Z

    .line 140
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/ScreenMagnifier;->MY_PID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayId"    # I
    .param p3, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempRect:Landroid/graphics/Rect;

    .line 143
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempRect1:Landroid/graphics/Rect;

    .line 167
    iput-boolean v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mBackAction:Z

    .line 168
    iput-boolean v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mSmallScreen:Z

    .line 169
    iput-boolean v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTouchBack:Z

    .line 176
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;

    .line 191
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/ScreenMagnifier$1;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mHandler:Landroid/os/Handler;

    .line 282
    iput v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayWidth:F

    .line 283
    iput v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayHeight:F

    .line 284
    iput v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayPpi:F

    .line 301
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mContext:Landroid/content/Context;

    .line 302
    const-class v0, Landroid/view/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManager:Landroid/view/WindowManagerInternal;

    .line 303
    iput-object p3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 305
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManagerDisplay:Landroid/view/WindowManager;

    .line 306
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->amigoWindowDefaultSize()V

    .line 307
    const-string v0, "ro.gn.smallscreen.support"

    const-string v1, "yes"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/accessibility/ScreenMagnifier;->mIsSmallScreenSupport:Z

    .line 308
    sget-boolean v0, Lcom/android/server/accessibility/ScreenMagnifier;->mIsSmallScreenSupport:Z

    if-eqz v0, :cond_0

    .line 309
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/server/accessibility/ScreenMagnifier;->DEFAULT_MAGNIFICATION_SCALE:F

    .line 310
    iput v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTapTimeSlop:I

    .line 311
    const/16 v0, 0x4b

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapTimeSlop:I

    .line 319
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mLongAnimationDuration:J

    .line 321
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTapDistanceSlop:I

    .line 322
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapDistanceSlop:I

    .line 324
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;Lcom/android/server/accessibility/ScreenMagnifier$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    .line 325
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;Lcom/android/server/accessibility/ScreenMagnifier$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mStateViewportDraggingHandler:Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

    .line 326
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedContentInteractonStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

    .line 329
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    iget-wide v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mLongAnimationDuration:J

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;J)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    .line 331
    sget-boolean v0, Lcom/android/server/accessibility/ScreenMagnifier;->mIsSmallScreenSupport:Z

    if-nez v0, :cond_1

    .line 332
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/content/Context;Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mScreenStateObserver:Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

    .line 339
    :goto_1
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManager:Landroid/view/WindowManagerInternal;

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerInternal;->setMagnificationCallbacks(Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V

    .line 341
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V

    .line 342
    return-void

    .line 313
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/android/server/accessibility/ScreenMagnifier;->DEFAULT_MAGNIFICATION_SCALE:F

    .line 314
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTapTimeSlop:I

    .line 315
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    add-int/lit8 v0, v0, -0x32

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapTimeSlop:I

    goto :goto_0

    .line 335
    :cond_1
    iput-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mScreenStateObserver:Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/graphics/Region;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p1, "x1"    # Landroid/graphics/Region;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->handleOnMagnifiedBoundsChanged(Landroid/graphics/Region;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/ScreenMagnifier;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/ScreenMagnifier;->handleOnRectangleOnScreenRequested(IIII)V

    return-void
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 108
    sget-boolean v0, Lcom/android/server/accessibility/ScreenMagnifier;->mIsSmallScreenSupport:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/accessibility/ScreenMagnifier;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->getPersistedScale()F

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/accessibility/ScreenMagnifier;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p1, "x1"    # F

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->persistScale(F)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mPreviousState:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/accessibility/ScreenMagnifier;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p1, "x1"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/ScreenMagnifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->handleOnUserContextChanged()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/accessibility/ScreenMagnifier;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTranslationEnabledBeforePan:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/accessibility/ScreenMagnifier;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTranslationEnabledBeforePan:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapTimeSlop:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapDistanceSlop:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTapDistanceSlop:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/accessibility/ScreenMagnifier;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTouchBack:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTapTimeSlop:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/accessibility/ScreenMagnifier;I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p1, "x1"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/ScreenMagnifier;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p1, "x1"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->handleOnRotationChanged(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/accessibility/ScreenMagnifier;I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p1, "x1"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManagerDisplay:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/AccessibilityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/accessibility/ScreenMagnifier;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayWidth:F

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/accessibility/ScreenMagnifier;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayHeight:F

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/accessibility/ScreenMagnifier;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mBackAction:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/view/WindowManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManager:Landroid/view/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 108
    invoke-static {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->isScreenMagnificationAutoUpdateEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/ScreenMagnifier;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mSmallScreen:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/accessibility/ScreenMagnifier;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mSmallScreen:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/ScreenMagnifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->amigoSetSmallScreen()V

    return-void
.end method

.method private amigoDefaultSmallWindowSizeOffsetX()F
    .locals 2

    .prologue
    .line 256
    const v0, 0x42bb999a    # 93.8f

    iget v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayPpi:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private amigoDefaultSmallWindowSizeOffsetY()F
    .locals 2

    .prologue
    .line 260
    const v0, 0x4326cccd    # 166.8f

    iget v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayPpi:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private amigoDefaultSmallWindowSizeScale()F
    .locals 2

    .prologue
    .line 253
    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayWidth:F

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->amigoDefaultSmallWindowSizeOffsetX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayWidth:F

    div-float/2addr v0, v1

    return v0
.end method

.method private amigoIsBackDefaulttoRight()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 264
    sget-object v0, Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "virtual_key_value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "virtual_key_value"

    invoke-static {v2, v3, v4}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "virtual_key_value"

    invoke-static {v0, v1, v4}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private amigoOnKeyEvent(Landroid/view/KeyEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v12, 0x64

    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 467
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 468
    .local v2, "time":J
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v4, 0x10b

    if-ne v1, v4, :cond_0

    .line 469
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mStateViewportDraggingHandler:Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->clear()V

    .line 470
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4, v8, v8, v9}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    .line 472
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v11, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v10, :cond_1

    const-wide/16 v4, 0xbb8

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 475
    iput-boolean v9, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTouchBack:Z

    .line 476
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 478
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v11, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 481
    iput-boolean v10, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTouchBack:Z

    .line 482
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 484
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 486
    .end local v0    # "message":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private amigoSetDefaultSmallWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 242
    sget-object v0, Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scale : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->amigoDefaultSmallWindowSizeScale()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sget-object v0, Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultSmallWindowSizeOffsetX : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->amigoDefaultSmallWindowSizeOffsetX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-object v0, Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultSmallWindowSizeOffsetY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->amigoDefaultSmallWindowSizeOffsetY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->amigoIsBackDefaulttoRight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->amigoDefaultSmallWindowSizeScale()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->amigoDefaultSmallWindowSizeOffsetY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->amigoDefaultSmallWindowSizeScale()F

    move-result v1

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->amigoDefaultSmallWindowSizeOffsetX()F

    move-result v2

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->amigoDefaultSmallWindowSizeOffsetY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    goto :goto_0
.end method

.method private amigoSetSmallScreen()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 228
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mStateViewportDraggingHandler:Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->clear()V

    .line 229
    iput-boolean v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mBackAction:Z

    .line 230
    iget-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mSmallScreen:Z

    if-nez v0, :cond_0

    .line 231
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/ScreenMagnifier;->amigoSetSmallScreenSetting(I)V

    .line 233
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->amigoSetDefaultSmallWindow()V

    .line 238
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mBackAction:Z

    .line 239
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    .line 236
    invoke-direct {p0, v4}, Lcom/android/server/accessibility/ScreenMagnifier;->amigoSetSmallScreenSetting(I)V

    goto :goto_0
.end method

.method private amigoSetSmallScreenSetting(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 275
    sget-object v1, Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "amigoSetSmallScreenSetting mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mSmallScreen:Z

    .line 277
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "small_screen_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 281
    return-void

    .line 276
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private amigoWindowDefaultPPI()V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 296
    const-string v1, "ro.product.screensize"

    const-string v2, "5"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 297
    .local v0, "screensize":F
    iget v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayWidth:F

    float-to-double v2, v1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayHeight:F

    float-to-double v4, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayPpi:F

    .line 298
    return-void
.end method

.method private amigoWindowDefaultSize()V
    .locals 4

    .prologue
    .line 286
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 287
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManagerDisplay:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManagerDisplay:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 289
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayWidth:F

    .line 290
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayHeight:F

    .line 291
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->amigoWindowDefaultPPI()V

    .line 293
    :cond_0
    sget-object v1, Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " default dm.widthPixels : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , dm.heightPixels : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void
.end method

.method private getMagnifiedFrameInContentCoords(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    .line 448
    .local v0, "spec":Landroid/view/MagnificationSpec;
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 449
    iget v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v1, v1

    float-to-int v1, v1

    iget v2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 450
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, v0, Landroid/view/MagnificationSpec;->scale:F

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 451
    return-void
.end method

.method private getPersistedScale()F
    .locals 3

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_scale"

    sget v2, Lcom/android/server/accessibility/ScreenMagnifier;->DEFAULT_MAGNIFICATION_SCALE:F

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method private getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 5
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 600
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v4

    .line 601
    .local v1, "oldSize":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 602
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 603
    .local v2, "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    new-array v4, p1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 604
    if-eqz v2, :cond_0

    .line 605
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 608
    .end local v2    # "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    :cond_0
    move v0, v1

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 609
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v3, v0

    .line 608
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "oldSize":I
    :cond_1
    move v1, v3

    .line 600
    goto :goto_0

    .line 611
    .restart local v0    # "i":I
    .restart local v1    # "oldSize":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object v3
.end method

.method private getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 5
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 615
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    array-length v1, v4

    .line 616
    .local v1, "oldSize":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 617
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 618
    .local v2, "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    new-array v4, p1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 619
    if-eqz v2, :cond_0

    .line 620
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 623
    .end local v2    # "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    :cond_0
    move v0, v1

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 624
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v3, v0

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "oldSize":I
    :cond_1
    move v1, v3

    .line 615
    goto :goto_0

    .line 626
    .restart local v0    # "i":I
    .restart local v1    # "oldSize":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    return-object v3
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 26
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 553
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 563
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v4, :cond_3

    .line 567
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    .line 568
    .local v20, "eventX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    .line 569
    .local v21, "eventY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;

    move/from16 v0, v20

    float-to-int v5, v0

    move/from16 v0, v21

    float-to-int v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 571
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getScale()F

    move-result v23

    .line 572
    .local v23, "scale":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getOffsetX()F

    move-result v24

    .line 573
    .local v24, "scaledOffsetX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getOffsetY()F

    move-result v25

    .line 574
    .local v25, "scaledOffsetY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 575
    .local v9, "pointerCount":I
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/accessibility/ScreenMagnifier;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v11

    .line 576
    .local v11, "coords":[Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/accessibility/ScreenMagnifier;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v10

    .line 577
    .local v10, "properties":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    move/from16 v0, v22

    if-ge v0, v9, :cond_1

    .line 578
    aget-object v4, v11, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 579
    aget-object v4, v11, v22

    aget-object v5, v11, v22

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float v5, v5, v24

    div-float v5, v5, v23

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 580
    aget-object v4, v11, v22

    aget-object v5, v11, v22

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float v5, v5, v25

    div-float v5, v5, v23

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 581
    aget-object v4, v10, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 577
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 555
    .end local v9    # "pointerCount":I
    .end local v10    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v11    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v20    # "eventX":F
    .end local v21    # "eventY":F
    .end local v22    # "i":I
    .end local v23    # "scale":F
    .end local v24    # "scaledOffsetX":F
    .end local v25    # "scaledOffsetY":F
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mDelegatingStateDownTime:J

    goto/16 :goto_0

    .line 558
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v4}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->access$1100(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v4

    if-nez v4, :cond_0

    .line 559
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V

    goto/16 :goto_0

    .line 583
    .restart local v9    # "pointerCount":I
    .restart local v10    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .restart local v11    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .restart local v20    # "eventX":F
    .restart local v21    # "eventY":F
    .restart local v22    # "i":I
    .restart local v23    # "scale":F
    .restart local v24    # "scaledOffsetX":F
    .restart local v25    # "scaledOffsetY":F
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v19

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object p1

    .line 594
    .end local v9    # "pointerCount":I
    .end local v10    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v11    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v22    # "i":I
    .end local v23    # "scale":F
    .end local v24    # "scaledOffsetX":F
    .end local v25    # "scaledOffsetY":F
    :cond_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mDelegatingStateDownTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 595
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v4, v0, v1, v2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 597
    .end local v20    # "eventX":F
    .end local v21    # "eventY":F
    :cond_3
    return-void

    .line 553
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleOnMagnifiedBoundsChanged(Landroid/graphics/Region;)V
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Region;

    .prologue
    const/4 v7, 0x0

    .line 357
    iget-boolean v5, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mUpdateMagnificationSpecOnNextBoundsChange:Z

    if-eqz v5, :cond_0

    .line 358
    iput-boolean v7, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mUpdateMagnificationSpecOnNextBoundsChange:Z

    .line 359
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v5}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v4

    .line 360
    .local v4, "spec":Landroid/view/MagnificationSpec;
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempRect:Landroid/graphics/Rect;

    .line 361
    .local v2, "magnifiedFrame":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;

    invoke-virtual {v5, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 362
    iget v3, v4, Landroid/view/MagnificationSpec;->scale:F

    .line 363
    .local v3, "scale":F
    iget v5, v4, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v5, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float v0, v5, v3

    .line 364
    .local v0, "centerX":F
    iget v5, v4, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v5, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float v1, v5, v3

    .line 365
    .local v1, "centerY":F
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v5, v3, v0, v1, v7}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    .line 368
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    .end local v2    # "magnifiedFrame":Landroid/graphics/Rect;
    .end local v3    # "scale":F
    .end local v4    # "spec":Landroid/view/MagnificationSpec;
    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;

    invoke-virtual {v5, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 369
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->onMagnificationStateChanged()V

    .line 370
    return-void
.end method

.method private handleOnRectangleOnScreenRequested(IIII)V
    .locals 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 383
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempRect:Landroid/graphics/Rect;

    .line 384
    .local v2, "magnifiedFrame":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;

    invoke-virtual {v6, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 385
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v6

    if-nez v6, :cond_0

    .line 417
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempRect1:Landroid/graphics/Rect;

    .line 389
    .local v1, "magnifFrameInScreenCoords":Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->getMagnifiedFrameInContentCoords(Landroid/graphics/Rect;)V

    .line 392
    sub-int v6, p3, p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v6, v7, :cond_2

    .line 393
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    .line 394
    .local v0, "direction":I
    if-nez v0, :cond_1

    .line 395
    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, p1, v6

    int-to-float v4, v6

    .line 406
    .end local v0    # "direction":I
    .local v4, "scrollX":F
    :goto_1
    sub-int v6, p4, p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v6, v7, :cond_5

    .line 407
    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int v6, p2, v6

    int-to-float v5, v6

    .line 415
    .local v5, "scrollY":F
    :goto_2
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v6}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getScale()F

    move-result v3

    .line 416
    .local v3, "scale":F
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    mul-float v7, v4, v3

    mul-float v8, v5, v3

    invoke-virtual {v6, v7, v8}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->offsetMagnifiedRegionCenter(FF)V

    goto :goto_0

    .line 397
    .end local v3    # "scale":F
    .end local v4    # "scrollX":F
    .end local v5    # "scrollY":F
    .restart local v0    # "direction":I
    :cond_1
    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int v6, p3, v6

    int-to-float v4, v6

    .restart local v4    # "scrollX":F
    goto :goto_1

    .line 399
    .end local v0    # "direction":I
    .end local v4    # "scrollX":F
    :cond_2
    iget v6, v1, Landroid/graphics/Rect;->left:I

    if-ge p1, v6, :cond_3

    .line 400
    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, p1, v6

    int-to-float v4, v6

    .restart local v4    # "scrollX":F
    goto :goto_1

    .line 401
    .end local v4    # "scrollX":F
    :cond_3
    iget v6, v1, Landroid/graphics/Rect;->right:I

    if-le p3, v6, :cond_4

    .line 402
    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int v6, p3, v6

    int-to-float v4, v6

    .restart local v4    # "scrollX":F
    goto :goto_1

    .line 404
    .end local v4    # "scrollX":F
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "scrollX":F
    goto :goto_1

    .line 408
    :cond_5
    iget v6, v1, Landroid/graphics/Rect;->top:I

    if-ge p2, v6, :cond_6

    .line 409
    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int v6, p2, v6

    int-to-float v5, v6

    .restart local v5    # "scrollY":F
    goto :goto_2

    .line 410
    .end local v5    # "scrollY":F
    :cond_6
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    if-le p4, v6, :cond_7

    .line 411
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v6, p4, v6

    int-to-float v5, v6

    .restart local v5    # "scrollY":F
    goto :goto_2

    .line 413
    .end local v5    # "scrollY":F
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "scrollY":F
    goto :goto_2
.end method

.method private handleOnRotationChanged(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 426
    sget-boolean v0, Lcom/android/server/accessibility/ScreenMagnifier;->mIsSmallScreenSupport:Z

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->handleOnRotationChanged(I)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->resetMagnificationIfNeeded()V

    .line 430
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mUpdateMagnificationSpecOnNextBoundsChange:Z

    goto :goto_0
.end method

.method private handleOnUserContextChanged()V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->resetMagnificationIfNeeded()V

    .line 444
    return-void
.end method

.method private static isScreenMagnificationAutoUpdateEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 1091
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_magnification_auto_update"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistScale(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    .line 1074
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$2;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;F)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1082
    return-void
.end method

.method private resetMagnificationIfNeeded()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->isScreenMagnificationAutoUpdateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->reset(Z)V

    .line 458
    :cond_0
    return-void
.end method

.method private transitionToState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 649
    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mPreviousState:I

    .line 650
    iput p1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I

    .line 651
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I

    .line 529
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    .line 530
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mStateViewportDraggingHandler:Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->clear()V

    .line 531
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedContentInteractonStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->clear()V
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;)V

    .line 532
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    .line 535
    :cond_0
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 519
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 540
    sget-boolean v0, Lcom/android/server/accessibility/ScreenMagnifier;->mIsSmallScreenSupport:Z

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mScreenStateObserver:Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->destroy()V

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->reset(Z)V

    .line 548
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManager:Landroid/view/WindowManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerInternal;->setMagnificationCallbacks(Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V

    .line 549
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;Landroid/view/KeyEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "rawEvent"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 463
    sget-object v0, Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->amigoOnKeyEvent(Landroid/view/KeyEvent;)V

    .line 465
    return-void
.end method

.method public onMagnifedBoundsChanged(Landroid/graphics/Region;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Region;

    .prologue
    .line 346
    invoke-static {p1}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v0

    .line 347
    .local v0, "newBounds":Landroid/graphics/Region;
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 348
    sget v1, Lcom/android/server/accessibility/ScreenMagnifier;->MY_PID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 349
    invoke-virtual {p1}, Landroid/graphics/Region;->recycle()V

    .line 351
    :cond_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedContentInteractonStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 493
    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    .line 509
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 512
    :goto_0
    :pswitch_1
    return-void

    .line 498
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 501
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mStateViewportDraggingHandler:Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->onMotionEvent(Landroid/view/MotionEvent;I)V
    invoke-static {v0, p1, p3}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->access$900(Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 493
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onRectangleOnScreenRequested(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 374
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 375
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 376
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 377
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 378
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 379
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 380
    return-void
.end method

.method public onRotationChanged(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 422
    return-void
.end method

.method public onUserContextChanged()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 440
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 524
    return-void
.end method
