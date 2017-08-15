.class Lcom/android/server/storage/DeviceStorageMonitorService$5;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0

    .prologue
    .line 870
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$5;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 873
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 876
    .local v0, "action":Ljava/lang/String;
    const-string v1, "gn.action.memory_low"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 877
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$5;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService;->postShowMemoryLowDialog()V
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$300(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    .line 878
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$5;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService;->cancelHeadsUp()V
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$1500(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    const-string v1, "gn.action.memory_low_ignore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 881
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$5;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService;->cancelHeadsUp()V
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$1500(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    goto :goto_0

    .line 885
    :cond_2
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 886
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$5;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # setter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mIPOBootup:Z
    invoke-static {v1, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$102(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z

    .line 887
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$5;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    .line 890
    :cond_3
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 891
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$5;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # setter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mConfigChanged:Z
    invoke-static {v1, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$202(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z

    .line 892
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$5;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Lamigo/app/AmigoAlertDialog;
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$000(Lcom/android/server/storage/DeviceStorageMonitorService;)Lamigo/app/AmigoAlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 893
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$5;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Lamigo/app/AmigoAlertDialog;
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$000(Lcom/android/server/storage/DeviceStorageMonitorService;)Lamigo/app/AmigoAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lamigo/app/AmigoAlertDialog;->cancel()V

    goto :goto_0
.end method
