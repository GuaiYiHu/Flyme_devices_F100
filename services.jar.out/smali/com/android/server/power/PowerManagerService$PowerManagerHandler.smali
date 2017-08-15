.class final Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3475
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 3476
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 3477
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x6

    .line 3481
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 3519
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3483
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$4600(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    .line 3486
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleSandman()V
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$4700(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    .line 3489
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleScreenBrightnessBoostTimeout()V
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$4800(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    .line 3493
    :pswitch_4
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mIsSmartStayEnable:Z
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$4900(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3494
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->isInteractiveInternal()Z
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$5000(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$1800(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mSmartStayChecking:Z
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$5100(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->isScreenOnLockHolding()Z
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->isCameraRunning()Z
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$5300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3496
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mSmartStayChecking:Z
    invoke-static {v3, v4}, Lcom/android/server/power/PowerManagerService;->access$5102(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3497
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3498
    .local v1, "startService":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.gionee.smartstay"

    const-string v4, "com.gionee.smartstay.SmartStayService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3499
    .local v0, "cmp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3500
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$2500(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3502
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$4300(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 3503
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$4300(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v3

    # getter for: Lcom/android/server/power/PowerManagerService;->SMART_STAY_MONITOR_TIMEOUT:I
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$5400()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3508
    .end local v0    # "cmp":Landroid/content/ComponentName;
    .end local v1    # "startService":Landroid/content/Intent;
    :pswitch_5
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mIsSmartStayEnable:Z
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$4900(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3509
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3510
    .local v2, "stopService":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.gionee.smartstay"

    const-string v4, "com.gionee.smartstay.SmartStayService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3511
    .restart local v0    # "cmp":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3512
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$2500(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 3513
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mSmartStayChecking:Z
    invoke-static {v3, v4}, Lcom/android/server/power/PowerManagerService;->access$5102(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3514
    const-string v3, "SmartStay"

    const-string v4, "SmartStayService detected timeout or has been killed..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3481
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
