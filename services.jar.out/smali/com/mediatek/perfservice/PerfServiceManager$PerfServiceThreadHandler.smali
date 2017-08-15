.class Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
.super Landroid/os/Handler;
.source "PerfServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/perfservice/PerfServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerfServiceThreadHandler"
.end annotation


# static fields
.field private static final MESSAGE_BOOST_DISABLE:I = 0x1

.field private static final MESSAGE_BOOST_ENABLE:I = 0x0

.field private static final MESSAGE_BOOST_ENABLE_TIMEOUT:I = 0x2

.field private static final MESSAGE_BOOST_ENABLE_TIMEOUT_MS:I = 0x3

.field private static final MESSAGE_DUMP_ALL:I = 0x22

.field private static final MESSAGE_NOTIFY_APP_STATE:I = 0x4

.field private static final MESSAGE_NOTIFY_FRAME_UPDATE:I = 0x24

.field private static final MESSAGE_SET_FAVOR_PID:I = 0x23

.field private static final MESSAGE_SW_FRAME_UPDATE_TIMEOUT:I = 0x25

.field private static final MESSAGE_TIMER_DONT_USE1:I = 0xa

.field private static final MESSAGE_TIMER_SCN_APP_LAUNCH:I = 0xd

.field private static final MESSAGE_TIMER_SCN_APP_ROTATE:I = 0x6

.field private static final MESSAGE_TIMER_SCN_APP_SWITCH:I = 0x5

.field private static final MESSAGE_TIMER_SCN_APP_TOUCH:I = 0x9

.field private static final MESSAGE_TIMER_SCN_SW_CODEC:I = 0x7

.field private static final MESSAGE_TIMER_SCN_SW_CODEC_BOOST:I = 0x8

.field private static final MESSAGE_TIMER_SCN_SW_FRAME_UPDATE:I = 0xb

.field private static final MESSAGE_TIMER_SCN_USER_BASE:I = 0x40

.field private static final MESSAGE_TIMER_TOUCH_BOOST_DURATION:I = 0xc

.field private static final MESSAGE_TOUCH_BOOST_DURATION:I = 0x26

.field private static final MESSAGE_USER_DISABLE:I = 0x1e

.field private static final MESSAGE_USER_DISABLE_ALL:I = 0x20

.field private static final MESSAGE_USER_ENABLE:I = 0x1b

.field private static final MESSAGE_USER_ENABLE_TIMEOUT:I = 0x1c

.field private static final MESSAGE_USER_ENABLE_TIMEOUT_MS:I = 0x1d

.field private static final MESSAGE_USER_GET_CAPABILITY:I = 0x17

.field private static final MESSAGE_USER_REG:I = 0x14

.field private static final MESSAGE_USER_REG_BIG_LITTLE:I = 0x15

.field private static final MESSAGE_USER_REG_SCN:I = 0x18

.field private static final MESSAGE_USER_REG_SCN_CONFIG:I = 0x19

.field private static final MESSAGE_USER_RESET_ALL:I = 0x1f

.field private static final MESSAGE_USER_RESTORE_ALL:I = 0x21

.field private static final MESSAGE_USER_UNREG:I = 0x16

.field private static final MESSAGE_USER_UNREG_SCN:I = 0x1a


# instance fields
.field final synthetic this$0:Lcom/mediatek/perfservice/PerfServiceManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/perfservice/PerfServiceManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    .line 377
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 378
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTouchBoostTimer()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
    .param p1, "x1"    # I

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTimer(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
    .param p1, "x1"    # I

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckTouchBoostTimerMs(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
    .param p1, "x1"    # I

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckUserTimer(I)V

    return-void
.end method

.method private getScenarioTimer(I)I
    .locals 1
    .param p1, "scenario"    # I

    .prologue
    .line 681
    packed-switch p1, :pswitch_data_0

    .line 704
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 683
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 686
    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 689
    :pswitch_3
    const/4 v0, 0x7

    goto :goto_0

    .line 692
    :pswitch_4
    const/16 v0, 0x8

    goto :goto_0

    .line 695
    :pswitch_5
    const/16 v0, 0x9

    goto :goto_0

    .line 698
    :pswitch_6
    const/16 v0, 0xb

    goto :goto_0

    .line 701
    :pswitch_7
    const/16 v0, 0xd

    goto :goto_0

    .line 681
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private removeAllUserTimerList()V
    .locals 2

    .prologue
    .line 672
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 673
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 672
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 678
    :cond_0
    return-void
.end method

.method private startCheckTimer(II)V
    .locals 4
    .param p1, "scenario"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 607
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->getScenarioTimer(I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 608
    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 609
    :cond_0
    return-void
.end method

.method private startCheckTimerMs(II)V
    .locals 4
    .param p1, "scenario"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 613
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->getScenarioTimer(I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 614
    int-to-long v2, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 615
    :cond_0
    return-void
.end method

.method private startCheckTouchBoostTimerMs(I)V
    .locals 4
    .param p1, "timeout_ms"    # I

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 625
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 626
    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 627
    return-void
.end method

.method private startCheckUserTimer(II)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 635
    .local v0, "msg":Landroid/os/Message;
    add-int/lit8 v1, p1, 0x40

    iput v1, v0, Landroid/os/Message;->what:I

    .line 636
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 637
    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 639
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    :cond_0
    return-void
.end method

.method private startCheckUserTimerMs(II)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 647
    .local v0, "msg":Landroid/os/Message;
    add-int/lit8 v1, p1, 0x40

    iput v1, v0, Landroid/os/Message;->what:I

    .line 648
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 649
    int-to-long v2, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 651
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    :cond_0
    return-void
.end method

.method private stopAllUserTimer()V
    .locals 4

    .prologue
    .line 663
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v3, v3, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 664
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v3, v3, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 665
    .local v0, "handle":I
    add-int/lit8 v2, v0, 0x40

    .line 666
    .local v2, "timer":I
    invoke-virtual {p0, v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 669
    .end local v0    # "handle":I
    .end local v2    # "timer":I
    :cond_0
    return-void
.end method

.method private stopCheckTimer(I)V
    .locals 2
    .param p1, "scenario"    # I

    .prologue
    .line 618
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->getScenarioTimer(I)I

    move-result v0

    .line 619
    .local v0, "timer":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 620
    invoke-virtual {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 621
    :cond_0
    return-void
.end method

.method private stopCheckTouchBoostTimer()V
    .locals 1

    .prologue
    .line 630
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 631
    return-void
.end method

.method private stopCheckUserTimer(I)V
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 658
    add-int/lit8 v0, p1, 0x40

    .line 659
    .local v0, "timer":I
    invoke-virtual {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 660
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x7

    .line 383
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 593
    :pswitch_0
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_TIMER_SCN_USER_BASE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 594
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x40

    if-lt v3, v4, :cond_0

    .line 595
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnDisable(I)I

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 387
    :pswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostEnable(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Ljava/lang/NullPointerException;
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in PerfServiceThreadHandler.handleMessage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1300(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    goto :goto_0

    .line 394
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :pswitch_2
    :try_start_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto :goto_0

    .line 401
    :pswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostEnable(I)I

    .line 402
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckTimer(II)V

    goto :goto_0

    .line 408
    :pswitch_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_1

    .line 410
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z
    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->access$400(Lcom/mediatek/perfservice/PerfServiceManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 414
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;
    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->access$500(Lcom/mediatek/perfservice/PerfServiceManager;)Ldalvik/system/VMRuntime;

    move-result-object v3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 419
    :cond_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostEnable(I)I

    .line 420
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckTimerMs(II)V

    goto :goto_0

    .line 426
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;

    .line 428
    .local v1, "passedObject":Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->DEBUG:Z
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 429
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v4, "MESSAGE_NOTIFY_APP_STATE"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 431
    :cond_2
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mPackName:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->access$800(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mClassName:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->access$900(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mState:I
    invoke-static {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->access$1000(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfNotifyAppState(Ljava/lang/String;Ljava/lang/String;I)I

    .line 432
    const/4 v1, 0x0

    .line 433
    const/4 v3, 0x0

    iput-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 439
    .end local v1    # "passedObject":Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;
    :pswitch_6
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->DEBUG:Z
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 440
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v4, "MESSAGE_TIMER_SCN_APP_SWITCH"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 442
    :cond_3
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto/16 :goto_0

    .line 448
    :pswitch_7
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->DEBUG:Z
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 449
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v4, "MESSAGE_TIMER_SCN_APP_ROTATE"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 451
    :cond_4
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto/16 :goto_0

    .line 457
    :pswitch_8
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->DEBUG:Z
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 458
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v4, "MESSAGE_TIMER_SCN_SW_CODEC"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 459
    :cond_5
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto/16 :goto_0

    .line 465
    :pswitch_9
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->DEBUG:Z
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 466
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v4, "MESSAGE_TIMER_SCN_SW_CODEC_BOOST"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 468
    :cond_6
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto/16 :goto_0

    .line 474
    :pswitch_a
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->DEBUG:Z
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 475
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v4, "MESSAGE_TIMER_SCN_APP_TOUCH"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 476
    :cond_7
    const/4 v3, 0x5

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto/16 :goto_0

    .line 482
    :pswitch_b
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v4, "MESSAGE_TIMER_SCN_SW_FRAME_UPDATE"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 484
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z
    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1100(Lcom/mediatek/perfservice/PerfServiceManager;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 485
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const/4 v4, 0x0

    # setter for: Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$402(Lcom/mediatek/perfservice/PerfServiceManager;Z)Z

    .line 488
    :cond_8
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;
    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->access$500(Lcom/mediatek/perfservice/PerfServiceManager;)Ldalvik/system/VMRuntime;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mDefaultUtilization:F
    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1200(Lcom/mediatek/perfservice/PerfServiceManager;)F

    move-result v4

    invoke-virtual {v3, v4}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 489
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;
    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->access$500(Lcom/mediatek/perfservice/PerfServiceManager;)Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v2

    .line 491
    .local v2, "utilization":F
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->DEBUG:Z
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 492
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set utilization:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 494
    :cond_9
    const/4 v3, 0x7

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    .line 495
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTouchBoostTimer()V

    goto/16 :goto_0

    .line 501
    .end local v2    # "utilization":F
    :pswitch_c
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->DEBUG:Z
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 502
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v4, "MESSAGE_TIMER_TOUCH_BOOST_DURATION"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 503
    :cond_a
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const/4 v4, 0x0

    # setter for: Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$402(Lcom/mediatek/perfservice/PerfServiceManager;Z)Z

    .line 504
    const/4 v3, 0x7

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto/16 :goto_0

    .line 510
    :pswitch_d
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->DEBUG:Z
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 511
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_USER_ENABLE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 512
    :cond_b
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnEnable(I)I

    goto/16 :goto_0

    .line 518
    :pswitch_e
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->DEBUG:Z
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 519
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_USER_DISABLE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 520
    :cond_c
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnDisable(I)I

    goto/16 :goto_0

    .line 526
    :pswitch_f
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->DEBUG:Z
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 527
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_USER_ENABLE_TIMEOUT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 528
    :cond_d
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnEnable(I)I

    .line 529
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckUserTimer(II)V

    goto/16 :goto_0

    .line 535
    :pswitch_10
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->DEBUG:Z
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 536
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_USER_ENABLE_TIMEOUT_MS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 537
    :cond_e
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnEnable(I)I

    .line 538
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckUserTimerMs(II)V

    goto/16 :goto_0

    .line 544
    :pswitch_11
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->DEBUG:Z
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 545
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_USER_UNREG_SCN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 546
    :cond_f
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserUnregScn(I)I

    goto/16 :goto_0

    .line 552
    :pswitch_12
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->DEBUG:Z
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 553
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v4, "MESSAGE_USER_RESET_ALL"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 554
    :cond_10
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopAllUserTimer()V

    .line 555
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeAllUserTimerList()V

    .line 556
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnResetAll()I

    goto/16 :goto_0

    .line 562
    :pswitch_13
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->DEBUG:Z
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 563
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v4, "MESSAGE_USER_DISABLE_ALL"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 564
    :cond_11
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopAllUserTimer()V

    .line 565
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnDisableAll()I

    goto/16 :goto_0

    .line 571
    :pswitch_14
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->DEBUG:Z
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 572
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v4, "MESSAGE_USER_RESTORE_ALL"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 573
    :cond_12
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnRestoreAll()I

    goto/16 :goto_0

    .line 579
    :pswitch_15
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v4, "MESSAGE_TIMER_SCN_APP_LAUNCH"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 580
    const/16 v3, 0x8

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_e
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
