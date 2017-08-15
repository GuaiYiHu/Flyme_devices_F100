.class final Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
.super Ljava/lang/Thread;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotonicModulator"
.end annotation


# static fields
.field private static final INITIAL_BACKLIGHT:I = -0x1

.field private static final INITIAL_SCREEN_STATE:I = 0x1


# instance fields
.field private mActualBacklight:I

.field private mActualState:I

.field private mChangeInProgress:Z

.field private final mLock:Ljava/lang/Object;

.field private mPendingBacklight:I

.field private mPendingState:I

.field final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 377
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 381
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    .line 383
    iput v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    .line 384
    iput v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    .line 385
    iput v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    .line 386
    iput v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayPowerState;Lcom/android/server/display/DisplayPowerState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/DisplayPowerState;
    .param p2, "x1"    # Lcom/android/server/display/DisplayPowerState$1;

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    return-void
.end method

.method private requestDisplayState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const-wide/32 v2, 0x80000

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestDisplayState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$1500(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/display/DisplayBlanker;->requestDisplayState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 479
    return-void

    .line 477
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setBrightness(I)V
    .locals 4
    .param p1, "backlight"    # I

    .prologue
    const-wide/32 v2, 0x80000

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBrightness("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mBacklight:Lcom/android/server/lights/Light;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$1600(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/lights/Light;->setBrightness(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 488
    return-void

    .line 486
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 410
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 411
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 412
    const-string v0, "Photonic Modulator State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingBacklight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActualState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActualBacklight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mChangeInProgress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    monitor-exit v1

    .line 419
    return-void

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 429
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 430
    :try_start_0
    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    .line 431
    .local v2, "state":I
    iget v8, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    if-eq v2, v8, :cond_1

    move v3, v5

    .line 432
    .local v3, "stateChanged":Z
    :goto_1
    iget v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    .line 433
    .local v0, "backlight":I
    iget v8, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    if-eq v0, v8, :cond_2

    move v1, v5

    .line 434
    .local v1, "backlightChanged":Z
    :goto_2
    if-nez v3, :cond_3

    if-nez v1, :cond_3

    .line 436
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    .line 437
    iget-object v8, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    # invokes: Lcom/android/server/display/DisplayPowerState;->postScreenUpdateThreadSafe()V
    invoke-static {v8}, Lcom/android/server/display/DisplayPowerState;->access$1300(Lcom/android/server/display/DisplayPowerState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    :try_start_1
    iget-object v8, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    :goto_3
    :try_start_2
    monitor-exit v7

    goto :goto_0

    .line 445
    .end local v0    # "backlight":I
    .end local v1    # "backlightChanged":Z
    .end local v2    # "state":I
    .end local v3    # "stateChanged":Z
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v2    # "state":I
    :cond_1
    move v3, v6

    .line 431
    goto :goto_1

    .restart local v0    # "backlight":I
    .restart local v3    # "stateChanged":Z
    :cond_2
    move v1, v6

    .line 433
    goto :goto_2

    .line 443
    .restart local v1    # "backlightChanged":Z
    :cond_3
    :try_start_3
    iput v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    .line 444
    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    .line 445
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 448
    # getter for: Lcom/android/server/display/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$600()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 449
    const-string v7, "DisplayPowerState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Updating screen state: state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", backlight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", backlightChanged="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_4
    invoke-static {v2}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v4

    .line 454
    .local v4, "suspending":Z
    if-eqz v3, :cond_5

    if-nez v4, :cond_5

    .line 455
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->requestDisplayState(I)V

    .line 457
    :cond_5
    if-eqz v1, :cond_7

    .line 458
    iget-object v7, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mDelay:I
    invoke-static {v7}, Lcom/android/server/display/DisplayPowerState;->access$1400(Lcom/android/server/display/DisplayPowerState;)I

    move-result v7

    if-lez v7, :cond_6

    .line 460
    :try_start_4
    iget-object v7, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mDelay:I
    invoke-static {v7}, Lcom/android/server/display/DisplayPowerState;->access$1400(Lcom/android/server/display/DisplayPowerState;)I

    move-result v7

    int-to-long v8, v7

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 463
    :cond_6
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->setBrightness(I)V

    .line 465
    :cond_7
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 466
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->requestDisplayState(I)V

    goto/16 :goto_0

    .line 461
    :catch_0
    move-exception v7

    goto :goto_4

    .line 440
    .end local v4    # "suspending":Z
    :catch_1
    move-exception v8

    goto :goto_3
.end method

.method public setState(II)Z
    .locals 5
    .param p1, "state"    # I
    .param p2, "backlight"    # I

    .prologue
    const/4 v0, 0x1

    .line 390
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 391
    :try_start_0
    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    if-eq p2, v2, :cond_2

    .line 392
    :cond_0
    # getter for: Lcom/android/server/display/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$600()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    const-string v2, "DisplayPowerState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting new screen state: state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", backlight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_1
    iput p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    .line 398
    iput p2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    .line 400
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    if-nez v2, :cond_2

    .line 401
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    .line 402
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 405
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    if-nez v2, :cond_3

    :goto_0
    monitor-exit v1

    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
