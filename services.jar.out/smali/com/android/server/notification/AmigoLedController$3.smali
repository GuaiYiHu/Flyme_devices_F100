.class Lcom/android/server/notification/AmigoLedController$3;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/server/notification/AmigoLedController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/server/notification/AmigoLedController$3;->this$0:Lcom/android/server/notification/AmigoLedController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 564
    const-string v0, "AmigoLedController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRespirationLamp Notifi Observer onChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/android/server/notification/AmigoLedController$3;->this$0:Lcom/android/server/notification/AmigoLedController;

    invoke-virtual {v0}, Lcom/android/server/notification/AmigoLedController;->updateSettingsNotificationLedEnabled()V

    .line 566
    return-void
.end method
