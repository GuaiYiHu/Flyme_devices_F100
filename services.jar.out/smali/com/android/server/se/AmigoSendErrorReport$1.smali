.class Lcom/android/server/se/AmigoSendErrorReport$1;
.super Landroid/content/BroadcastReceiver;
.source "AmigoSendErrorReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/se/AmigoSendErrorReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/se/AmigoSendErrorReport;


# direct methods
.method constructor <init>(Lcom/android/server/se/AmigoSendErrorReport;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/server/se/AmigoSendErrorReport$1;->this$0:Lcom/android/server/se/AmigoSendErrorReport;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 92
    iget-object v3, p0, Lcom/android/server/se/AmigoSendErrorReport$1;->this$0:Lcom/android/server/se/AmigoSendErrorReport;

    # setter for: Lcom/android/server/se/AmigoSendErrorReport;->mContext:Landroid/content/Context;
    invoke-static {v3, p1}, Lcom/android/server/se/AmigoSendErrorReport;->access$002(Lcom/android/server/se/AmigoSendErrorReport;Landroid/content/Context;)Landroid/content/Context;

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "msg":Ljava/lang/CharSequence;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v3, "AmigoSendErrorReport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v3, "com.gionee.telepath.action.FRAMEWORK_SEND_LOG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 100
    const-string v3, "msg"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 101
    if-nez v1, :cond_2

    .line 102
    const-string v1, ""

    .line 104
    :cond_2
    const-string v3, "saveLog"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 105
    .local v2, "saveLog":Z
    iget-object v3, p0, Lcom/android/server/se/AmigoSendErrorReport$1;->this$0:Lcom/android/server/se/AmigoSendErrorReport;

    # invokes: Lcom/android/server/se/AmigoSendErrorReport;->sendErrorLog(Ljava/lang/CharSequence;Z)V
    invoke-static {v3, v1, v2}, Lcom/android/server/se/AmigoSendErrorReport;->access$100(Lcom/android/server/se/AmigoSendErrorReport;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 106
    .end local v2    # "saveLog":Z
    :cond_3
    const-string v3, "com.mediatek.log2server.EXCEPTION_HAPPEND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "db_filename"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "dbFileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/se/AmigoSendErrorReport$1;->this$0:Lcom/android/server/se/AmigoSendErrorReport;

    # invokes: Lcom/android/server/se/AmigoSendErrorReport;->handleExceptionHanppened(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/server/se/AmigoSendErrorReport;->access$200(Lcom/android/server/se/AmigoSendErrorReport;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    .end local v0    # "dbFileName":Ljava/lang/String;
    :cond_4
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    const-string v3, "debug.mtk.aee.db"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .restart local v0    # "dbFileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 113
    iget-object v3, p0, Lcom/android/server/se/AmigoSendErrorReport$1;->this$0:Lcom/android/server/se/AmigoSendErrorReport;

    # invokes: Lcom/android/server/se/AmigoSendErrorReport;->handleRebootHanppened(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/server/se/AmigoSendErrorReport;->access$300(Lcom/android/server/se/AmigoSendErrorReport;Ljava/lang/String;)V

    goto :goto_0
.end method
