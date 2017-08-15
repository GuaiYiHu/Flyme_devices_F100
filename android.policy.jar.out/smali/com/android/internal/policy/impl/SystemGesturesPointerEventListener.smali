.class public Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;
.super Ljava/lang/Object;
.source "SystemGesturesPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_TRACKED_POINTERS:I = 0x20

.field private static final SWIPE_FROM_BOTTOM:I = 0x2

.field private static final SWIPE_FROM_RIGHT:I = 0x3

.field private static final SWIPE_FROM_TOP:I = 0x1

.field private static final SWIPE_NONE:I = 0x0

.field private static final SWIPE_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "SystemGestures"

.field private static final UNTRACKED_POINTER:I = -0x1


# instance fields
.field private final mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

.field private mContext:Landroid/content/Context;

.field private mDebugFireable:Z

.field private final mDownPointerId:[I

.field private mDownPointers:I

.field private final mDownTime:[J

.field private final mDownX:[F

.field private final mDownY:[F

.field private mGnSwiping:Z

.field private final mSwipeDistanceThreshold:I

.field private mSwipeFireable:Z

.field private final mSwipeStartThreshold:I

.field private final mVelocity:Landroid/view/VelocityTracker;

.field screenHeight:I

.field screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    .prologue
    const/16 v1, 0x20

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointerId:[I

    .line 50
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownX:[F

    .line 51
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownY:[F

    .line 52
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownTime:[J

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mGnSwiping:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 67
    const-string v0, "callbacks"

    invoke-static {v0, p2}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    .line 68
    const-string v0, "context"

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    .line 70
    iget v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iput v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 72
    iput-object p1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mVelocity:Landroid/view/VelocityTracker;

    .line 77
    return-void
.end method

.method private captureDown(Landroid/view/MotionEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 160
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 161
    .local v1, "pointerId":I
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v0

    .line 164
    .local v0, "i":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownX:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v0

    .line 166
    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownY:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v0

    .line 167
    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownTime:[J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 171
    :cond_0
    return-void
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    return-object p1
.end method

.method private detectSwipe(IJFF)I
    .locals 10
    .param p1, "i"    # I
    .param p2, "time"    # J
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    const-wide/16 v8, 0x1f4

    .line 220
    iget-object v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownX:[F

    aget v2, v6, p1

    .line 221
    .local v2, "fromX":F
    iget-object v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownY:[F

    aget v3, v6, p1

    .line 222
    .local v3, "fromY":F
    iget-object v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownTime:[J

    aget-wide v6, v6, p1

    sub-long v0, p2, v6

    .line 225
    .local v0, "elapsed":J
    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_0

    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    cmpl-float v6, p5, v6

    if-lez v6, :cond_0

    cmp-long v6, v0, v8

    if-gez v6, :cond_0

    .line 228
    const/4 v6, 0x1

    .line 245
    :goto_0
    return v6

    .line 231
    :cond_0
    const/4 v5, 0x3

    .line 232
    .local v5, "mSwipeStartThresholdBottom":I
    const/16 v4, 0x30

    .line 234
    .local v4, "mSwipeDistanceThresholdBottom":I
    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v6, v5

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_1

    int-to-float v6, v4

    sub-float v6, v3, v6

    cmpg-float v6, p5, v6

    if-gez v6, :cond_1

    cmp-long v6, v0, v8

    if-gez v6, :cond_1

    .line 237
    const/4 v6, 0x2

    goto :goto_0

    .line 240
    :cond_1
    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    iget v7, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_2

    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v6, v6

    sub-float v6, v2, v6

    cmpg-float v6, p4, v6

    if-gez v6, :cond_2

    cmp-long v6, v0, v8

    if-gez v6, :cond_2

    .line 243
    const/4 v6, 0x3

    goto :goto_0

    .line 245
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private detectSwipe(Landroid/view/MotionEvent;)I
    .locals 24
    .param p1, "move"    # Landroid/view/MotionEvent;

    .prologue
    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v19

    .line 188
    .local v19, "historySize":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v21

    .line 189
    .local v21, "pointerCount":I
    const/16 v20, 0x0

    .local v20, "p":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 190
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    .line 191
    .local v22, "pointerId":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v5

    .line 192
    .local v5, "i":I
    const/4 v4, -0x1

    if-eq v5, v4, :cond_3

    .line 193
    const/16 v18, 0x0

    .local v18, "h":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 194
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    .line 195
    .local v6, "time":J
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v8

    .line 196
    .local v8, "x":F
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v9

    .local v9, "y":F
    move-object/from16 v4, p0

    .line 197
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v23

    .line 198
    .local v23, "swipe":I
    if-eqz v23, :cond_1

    .line 216
    .end local v5    # "i":I
    .end local v6    # "time":J
    .end local v8    # "x":F
    .end local v9    # "y":F
    .end local v18    # "h":I
    .end local v22    # "pointerId":I
    .end local v23    # "swipe":I
    :cond_0
    :goto_2
    return v23

    .line 193
    .restart local v5    # "i":I
    .restart local v6    # "time":J
    .restart local v8    # "x":F
    .restart local v9    # "y":F
    .restart local v18    # "h":I
    .restart local v22    # "pointerId":I
    .restart local v23    # "swipe":I
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 202
    .end local v6    # "time":J
    .end local v8    # "x":F
    .end local v9    # "y":F
    .end local v23    # "swipe":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    move-object/from16 v10, p0

    move v11, v5

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v23

    .line 203
    .restart local v23    # "swipe":I
    if-nez v23, :cond_0

    .line 208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownY:[F

    aget v17, v4, v5

    .line 209
    .local v17, "fromY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mVelocity:Landroid/view/VelocityTracker;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v16

    .line 210
    .local v16, "Yv":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenHeight:I

    add-int/lit8 v4, v4, -0x2a

    int-to-float v4, v4

    cmpl-float v4, v17, v4

    if-ltz v4, :cond_3

    const/high16 v4, -0x3f800000    # -4.0f

    cmpg-float v4, v16, v4

    if-gez v4, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->keyguardIsShowing()Z

    move-result v4

    if-nez v4, :cond_3

    .line 211
    const/16 v23, 0x2

    goto :goto_2

    .line 189
    .end local v16    # "Yv":F
    .end local v17    # "fromY":F
    .end local v18    # "h":I
    .end local v23    # "swipe":I
    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 216
    .end local v5    # "i":I
    .end local v22    # "pointerId":I
    :cond_4
    const/16 v23, 0x0

    goto :goto_2
.end method

.method private findIndex(I)I
    .locals 4
    .param p1, "pointerId"    # I

    .prologue
    const/4 v1, -0x1

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    if-ge v0, v2, :cond_1

    .line 175
    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointerId:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 183
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 174
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    const/16 v3, 0x20

    if-eq v2, v3, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    move v0, v1

    .line 180
    goto :goto_1

    .line 182
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointerId:[I

    iget v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    aput p1, v1, v2

    .line 183
    iget v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method private keyguardIsShowing()Z
    .locals 3

    .prologue
    .line 259
    iget-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 260
    .local v0, "mKeyguardManager":Landroid/app/KeyguardManager;
    if-nez v0, :cond_0

    .line 261
    const/4 v1, 0x0

    .line 264
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v3

    if-nez v3, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 94
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 95
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 96
    iput v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    .line 97
    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 99
    iget-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 100
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mGnSwiping:Z

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onPointerEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 106
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 107
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 109
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-nez v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onDebug()V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 108
    goto :goto_1

    .line 116
    :pswitch_3
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-eqz v3, :cond_4

    .line 118
    iget-object v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 119
    iget-object v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 121
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->detectSwipe(Landroid/view/MotionEvent;)I

    move-result v0

    .line 122
    .local v0, "swipe":I
    if-nez v0, :cond_3

    move v2, v1

    :cond_3
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 123
    if-ne v0, v1, :cond_5

    .line 125
    iget-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromTop()V

    .line 138
    .end local v0    # "swipe":I
    :cond_4
    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mGnSwiping:Z

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onPointerEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 126
    .restart local v0    # "swipe":I
    :cond_5
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 128
    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromBottom()V

    .line 130
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mGnSwiping:Z

    goto :goto_2

    .line 132
    :cond_6
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 134
    iget-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromRight()V

    goto :goto_2

    .line 145
    .end local v0    # "swipe":I
    :pswitch_4
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 146
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 148
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mGnSwiping:Z

    if-eqz v1, :cond_7

    .line 149
    iget-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onPointerEvent(Landroid/view/MotionEvent;)V

    .line 151
    :cond_7
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mGnSwiping:Z

    goto/16 :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
