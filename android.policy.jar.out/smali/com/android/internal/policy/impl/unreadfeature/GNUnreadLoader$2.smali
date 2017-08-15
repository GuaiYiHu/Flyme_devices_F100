.class Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$2;
.super Landroid/content/BroadcastReceiver;
.source "GNUnreadLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$2;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 260
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$2;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # invokes: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->phoneIsInUse()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$000(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Z

    move-result v1

    .line 262
    .local v1, "isPhoneInCall":Z
    const-string v2, "SmartRemind-GNUnreadLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mDelayRegister: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$2;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mNeedDelayRegisterSigmotionSensor:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$300(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  isPhoneInCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 264
    if-nez v1, :cond_3

    .line 265
    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$2;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mNeedDelayRegisterSigmotionSensor:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$300(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$2;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mIsRequest:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$900(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$2;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$1200(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$2;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mListener:Lcom/android/internal/policy/impl/unreadfeature/TriggerListener;
    invoke-static {v3}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$1000(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Lcom/android/internal/policy/impl/unreadfeature/TriggerListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$2;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mSigmotionSensor:Landroid/hardware/Sensor;
    invoke-static {v4}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$1100(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 268
    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$2;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # setter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mIsRequest:Z
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$902(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;Z)Z

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$2;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # setter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mIsRequest:Z
    invoke-static {v2, v6}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$902(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;Z)Z

    .line 271
    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$2;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$1200(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$2;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mListener:Lcom/android/internal/policy/impl/unreadfeature/TriggerListener;
    invoke-static {v3}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$1000(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Lcom/android/internal/policy/impl/unreadfeature/TriggerListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$2;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mSigmotionSensor:Landroid/hardware/Sensor;
    invoke-static {v4}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$1100(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 272
    const-string v2, "SmartRemind-GNUnreadLoader"

    const-string v3, "requestTriggerSensor[Screen Off , phone idle]"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$2;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # setter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mNeedDelayRegisterSigmotionSensor:Z
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$302(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;Z)Z

    .line 279
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$2;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # setter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mScreenOn:Z
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$102(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;Z)Z

    .line 284
    :cond_2
    :goto_1
    return-void

    .line 277
    :cond_3
    const-string v2, "SmartRemind-GNUnreadLoader"

    const-string v3, "Phone is in call,do nothing."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    :cond_4
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 282
    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$2;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # setter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mScreenOn:Z
    invoke-static {v2, v6}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$102(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;Z)Z

    goto :goto_1
.end method
