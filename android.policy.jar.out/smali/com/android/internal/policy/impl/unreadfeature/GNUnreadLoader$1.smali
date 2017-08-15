.class Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$1;
.super Lcom/android/internal/policy/impl/unreadfeature/TriggerListener;
.source "GNUnreadLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->registerAndInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;Landroid/content/Context;Landroid/os/Vibrator;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Vibrator;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$1;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/unreadfeature/TriggerListener;-><init>(Landroid/content/Context;Landroid/os/Vibrator;)V

    return-void
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$1;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # invokes: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->phoneIsInUse()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$000(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Z

    move-result v0

    .line 99
    .local v0, "isPhoneInCall":Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$1;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mScreenOn:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$100(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 100
    const-string v1, "SmartRemind-GNUnreadLoader"

    const-string v2, "onTrigger"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$1;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v1}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$200(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Landroid/os/Vibrator;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 102
    iget-object v1, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$1;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mNeedDelayRegisterSigmotionSensor:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$302(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;Z)Z

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v1, "SmartRemind-GNUnreadLoader"

    const-string v2, "onTrigger, [but] register again later"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v1, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$1;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mNeedDelayRegisterSigmotionSensor:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$302(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;Z)Z

    goto :goto_0

    .line 101
    :array_0
    .array-data 8
        0x64
        0xc8
        0x64
        0xc8
    .end array-data
.end method
