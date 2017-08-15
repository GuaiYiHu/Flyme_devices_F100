.class Lcom/android/server/AlarmManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AlarmManagerService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    .prologue
    .line 801
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v4, -0x1

    .line 804
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 808
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->canDisablePowerOffAlarm()Z
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$200(Lcom/android/server/AlarmManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 810
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    const-string v2, "com.android.deskclock"

    invoke-virtual {v1, v2}, Lcom/android/server/AlarmManagerService;->cancelPoweroffAlarmImpl(Ljava/lang/String;)V

    .line 813
    :cond_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->shutdownCheckPoweroffAlarm()V
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$300(Lcom/android/server/AlarmManagerService;)V

    .line 814
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z
    invoke-static {v1, v2}, Lcom/android/server/AlarmManagerService;->access$402(Lcom/android/server/AlarmManagerService;Z)Z

    .line 815
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNativeData:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 817
    const-string v1, "AlarmManager"

    const-string v2, "receive ACTION_SHUTDOWN_IPO , so close the fd "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService;->mNativeData:J

    # invokes: Lcom/android/server/AlarmManagerService;->close(J)V
    invoke-static {v1, v2, v3}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;J)V

    .line 819
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v4, v1, Lcom/android/server/AlarmManagerService;->mNativeData:J

    .line 840
    :cond_2
    :goto_0
    return-void

    .line 824
    :cond_3
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 825
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z
    invoke-static {v1, v2}, Lcom/android/server/AlarmManagerService;->access$402(Lcom/android/server/AlarmManagerService;Z)Z

    .line 826
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->init()J
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNativeData:J

    .line 827
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J
    invoke-static {v2, v4, v5}, Lcom/android/server/AlarmManagerService;->access$802(Lcom/android/server/AlarmManagerService;J)J

    move-result-wide v2

    # setter for: Lcom/android/server/AlarmManagerService;->mNextWakeup:J
    invoke-static {v1, v2, v3}, Lcom/android/server/AlarmManagerService;->access$702(Lcom/android/server/AlarmManagerService;J)J

    .line 830
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 831
    .local v0, "timeChangeIntent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 832
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 834
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 835
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 836
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mWaitThreadlock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 837
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mWaitThreadlock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 838
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
