.class Lcom/android/server/pm/AmigoPermission$1;
.super Landroid/content/BroadcastReceiver;
.source "AmigoPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/AmigoPermission;->initInteral()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/AmigoPermission;


# direct methods
.method constructor <init>(Lcom/android/server/pm/AmigoPermission;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/server/pm/AmigoPermission$1;->this$0:Lcom/android/server/pm/AmigoPermission;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 270
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.gionee.action.UPDATE_PERM_DB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    const-string v1, "perm_ctrl"

    const-string v2, "pms mIntentReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v1, p0, Lcom/android/server/pm/AmigoPermission$1;->this$0:Lcom/android/server/pm/AmigoPermission;

    # getter for: Lcom/android/server/pm/AmigoPermission;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/pm/AmigoPermission;->access$000(Lcom/android/server/pm/AmigoPermission;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 275
    :cond_0
    return-void
.end method
