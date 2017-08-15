.class Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$2;
.super Landroid/content/BroadcastReceiver;
.source "GsmCellBroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$2;->this$0:Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 432
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    const-string v2, "plmn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "plmn":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 435
    const/4 v2, 0x3

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "mcc":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$2;->this$0:Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive Plmn Changed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mcc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->access$300(Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;Ljava/lang/String;)V

    .line 437
    const-string v2, "466"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 438
    const/4 v2, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mIsCellAreaInTw:Z
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->access$402(Z)Z

    .line 444
    .end local v0    # "mcc":Ljava/lang/String;
    .end local v1    # "plmn":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 440
    .restart local v0    # "mcc":Ljava/lang/String;
    .restart local v1    # "plmn":Ljava/lang/String;
    :cond_1
    # setter for: Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mIsCellAreaInTw:Z
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->access$402(Z)Z

    goto :goto_0
.end method
