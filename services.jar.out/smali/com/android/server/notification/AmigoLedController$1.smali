.class Lcom/android/server/notification/AmigoLedController$1;
.super Landroid/content/BroadcastReceiver;
.source "AmigoLedController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/AmigoLedController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/AmigoLedController;


# direct methods
.method constructor <init>(Lcom/android/server/notification/AmigoLedController;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/server/notification/AmigoLedController$1;->this$0:Lcom/android/server/notification/AmigoLedController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 190
    sget-boolean v6, Lcom/android/server/notification/AmigoLedController;->GN_FLASHLIGHT_SUPPORT:Z

    if-nez v6, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const-string v6, "level"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 193
    .local v1, "batteryLevel":I
    const-string v6, "status"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 196
    .local v2, "batteryStatus":I
    iget-object v6, p0, Lcom/android/server/notification/AmigoLedController$1;->this$0:Lcom/android/server/notification/AmigoLedController;

    iget v6, v6, Lcom/android/server/notification/AmigoLedController;->mBatteryLevel:I

    if-ne v1, v6, :cond_2

    iget-object v6, p0, Lcom/android/server/notification/AmigoLedController$1;->this$0:Lcom/android/server/notification/AmigoLedController;

    iget v6, v6, Lcom/android/server/notification/AmigoLedController;->mBatteryStatus:I

    if-eq v2, v6, :cond_3

    .line 197
    :cond_2
    iget-object v6, p0, Lcom/android/server/notification/AmigoLedController$1;->this$0:Lcom/android/server/notification/AmigoLedController;

    iput v1, v6, Lcom/android/server/notification/AmigoLedController;->mBatteryLevel:I

    .line 198
    iget-object v6, p0, Lcom/android/server/notification/AmigoLedController$1;->this$0:Lcom/android/server/notification/AmigoLedController;

    iput v2, v6, Lcom/android/server/notification/AmigoLedController;->mBatteryStatus:I

    .line 199
    iget-object v6, p0, Lcom/android/server/notification/AmigoLedController$1;->this$0:Lcom/android/server/notification/AmigoLedController;

    # invokes: Lcom/android/server/notification/AmigoLedController;->updateBatteryLight(IIZ)V
    invoke-static {v6, v1, v2, v4}, Lcom/android/server/notification/AmigoLedController;->access$000(Lcom/android/server/notification/AmigoLedController;IIZ)V

    .line 203
    .end local v1    # "batteryLevel":I
    .end local v2    # "batteryStatus":I
    :cond_3
    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 204
    const-string v6, "AmigoLedController"

    const-string v7, "ACTION_SHUTDOWN ...."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v6, p0, Lcom/android/server/notification/AmigoLedController$1;->this$0:Lcom/android/server/notification/AmigoLedController;

    # setter for: Lcom/android/server/notification/AmigoLedController;->mIsShutdowning:Z
    invoke-static {v6, v5}, Lcom/android/server/notification/AmigoLedController;->access$102(Lcom/android/server/notification/AmigoLedController;Z)Z

    .line 206
    iget-object v6, p0, Lcom/android/server/notification/AmigoLedController$1;->this$0:Lcom/android/server/notification/AmigoLedController;

    # invokes: Lcom/android/server/notification/AmigoLedController;->resetAllLights()V
    invoke-static {v6}, Lcom/android/server/notification/AmigoLedController;->access$200(Lcom/android/server/notification/AmigoLedController;)V

    .line 209
    :cond_4
    iget-object v6, p0, Lcom/android/server/notification/AmigoLedController$1;->this$0:Lcom/android/server/notification/AmigoLedController;

    invoke-virtual {v6}, Lcom/android/server/notification/AmigoLedController;->isAmigoNotifiEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 214
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 215
    const-string v4, "AmigoLedController"

    const-string v5, "boot complete...."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v4, p0, Lcom/android/server/notification/AmigoLedController$1;->this$0:Lcom/android/server/notification/AmigoLedController;

    invoke-virtual {v4}, Lcom/android/server/notification/AmigoLedController;->updateMissCallNum()V

    goto :goto_0

    .line 217
    :cond_5
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 218
    iget-object v5, p0, Lcom/android/server/notification/AmigoLedController$1;->this$0:Lcom/android/server/notification/AmigoLedController;

    # setter for: Lcom/android/server/notification/AmigoLedController;->mScreenOn:Z
    invoke-static {v5, v4}, Lcom/android/server/notification/AmigoLedController;->access$302(Lcom/android/server/notification/AmigoLedController;Z)Z

    .line 219
    iget-object v4, p0, Lcom/android/server/notification/AmigoLedController$1;->this$0:Lcom/android/server/notification/AmigoLedController;

    # invokes: Lcom/android/server/notification/AmigoLedController;->handleScreenOff()V
    invoke-static {v4}, Lcom/android/server/notification/AmigoLedController;->access$400(Lcom/android/server/notification/AmigoLedController;)V

    goto :goto_0

    .line 220
    :cond_6
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 221
    iget-object v4, p0, Lcom/android/server/notification/AmigoLedController$1;->this$0:Lcom/android/server/notification/AmigoLedController;

    # setter for: Lcom/android/server/notification/AmigoLedController;->mScreenOn:Z
    invoke-static {v4, v5}, Lcom/android/server/notification/AmigoLedController;->access$302(Lcom/android/server/notification/AmigoLedController;Z)Z

    .line 222
    iget-object v4, p0, Lcom/android/server/notification/AmigoLedController$1;->this$0:Lcom/android/server/notification/AmigoLedController;

    # invokes: Lcom/android/server/notification/AmigoLedController;->handleScreenOn()V
    invoke-static {v4}, Lcom/android/server/notification/AmigoLedController;->access$500(Lcom/android/server/notification/AmigoLedController;)V

    goto/16 :goto_0

    .line 223
    :cond_7
    const-string v6, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 224
    const-string v6, "state"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "state":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/notification/AmigoLedController$1;->this$0:Lcom/android/server/notification/AmigoLedController;

    sget-object v7, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    sget-object v7, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    move v4, v5

    :cond_9
    # setter for: Lcom/android/server/notification/AmigoLedController;->mInCall:Z
    invoke-static {v6, v4}, Lcom/android/server/notification/AmigoLedController;->access$602(Lcom/android/server/notification/AmigoLedController;Z)Z

    goto/16 :goto_0

    .line 227
    .end local v3    # "state":Ljava/lang/String;
    :cond_a
    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    iget-object v4, p0, Lcom/android/server/notification/AmigoLedController$1;->this$0:Lcom/android/server/notification/AmigoLedController;

    # invokes: Lcom/android/server/notification/AmigoLedController;->handleUserPresent()V
    invoke-static {v4}, Lcom/android/server/notification/AmigoLedController;->access$700(Lcom/android/server/notification/AmigoLedController;)V

    goto/16 :goto_0
.end method
