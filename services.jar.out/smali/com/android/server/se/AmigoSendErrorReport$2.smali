.class Lcom/android/server/se/AmigoSendErrorReport$2;
.super Ljava/lang/Thread;
.source "AmigoSendErrorReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/se/AmigoSendErrorReport;->handleExceptionHanppened(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/se/AmigoSendErrorReport;

.field final synthetic val$dbFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/se/AmigoSendErrorReport;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/server/se/AmigoSendErrorReport$2;->this$0:Lcom/android/server/se/AmigoSendErrorReport;

    iput-object p2, p0, Lcom/android/server/se/AmigoSendErrorReport$2;->val$dbFileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 126
    :try_start_0
    const-string v1, ""

    .line 127
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/se/AmigoSendErrorReport$2;->val$dbFileName:Ljava/lang/String;

    const-string v3, "NE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    const-string v1, "NE"

    .line 139
    :goto_0
    const-string v2, "AmigoSendErrorReport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "youjuOnEvent dbFileName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/se/AmigoSendErrorReport$2;->val$dbFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v2, p0, Lcom/android/server/se/AmigoSendErrorReport$2;->this$0:Lcom/android/server/se/AmigoSendErrorReport;

    # getter for: Lcom/android/server/se/AmigoSendErrorReport;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/se/AmigoSendErrorReport;->access$000(Lcom/android/server/se/AmigoSendErrorReport;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "A36A627762AB4605ADFFC2AD959FDD09"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/gionee/youju/statistics/sdk/YouJuAgent;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/android/server/se/AmigoSendErrorReport$2;->this$0:Lcom/android/server/se/AmigoSendErrorReport;

    # getter for: Lcom/android/server/se/AmigoSendErrorReport;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/se/AmigoSendErrorReport;->access$000(Lcom/android/server/se/AmigoSendErrorReport;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/gionee/youju/statistics/sdk/YouJuAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 129
    .restart local v1    # "type":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/server/se/AmigoSendErrorReport$2;->val$dbFileName:Ljava/lang/String;

    const-string v3, "EE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    const-string v1, "EE"

    goto :goto_0

    .line 131
    :cond_2
    iget-object v2, p0, Lcom/android/server/se/AmigoSendErrorReport$2;->val$dbFileName:Ljava/lang/String;

    const-string v3, "KE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    const-string v1, "KE"

    goto :goto_0

    .line 133
    :cond_3
    iget-object v2, p0, Lcom/android/server/se/AmigoSendErrorReport$2;->val$dbFileName:Ljava/lang/String;

    const-string v3, "SWT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    const-string v1, "SWT"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v1    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
