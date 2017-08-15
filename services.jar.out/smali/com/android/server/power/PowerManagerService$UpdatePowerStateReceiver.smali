.class final Lcom/android/server/power/PowerManagerService$UpdatePowerStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UpdatePowerStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 3445
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$UpdatePowerStateReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 3445
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$UpdatePowerStateReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 3448
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$UpdatePowerStateReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mGN_SSG_Switch:I
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4100(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$UpdatePowerStateReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mSmartStaySwitch:I
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4200(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 3449
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$UpdatePowerStateReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4300(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 3450
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$UpdatePowerStateReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4300(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 3451
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$UpdatePowerStateReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const-string v1, "result"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/power/PowerManagerService;->mSmartStayMonitorResult:I
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$4402(Lcom/android/server/power/PowerManagerService;I)I

    .line 3452
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$UpdatePowerStateReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->doFaceSmartStay()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4500(Lcom/android/server/power/PowerManagerService;)V

    .line 3454
    :cond_0
    return-void
.end method
