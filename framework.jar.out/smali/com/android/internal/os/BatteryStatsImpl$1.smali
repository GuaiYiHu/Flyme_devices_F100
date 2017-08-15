.class Lcom/android/internal/os/BatteryStatsImpl$1;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->recordBatteryStats()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 0

    .prologue
    .line 6880
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$1;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6883
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6884
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.gionee.intent.action.SYSTEM_FLUSH_BATTERY_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6885
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$1;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImpl;->access$100(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6886
    return-void
.end method
