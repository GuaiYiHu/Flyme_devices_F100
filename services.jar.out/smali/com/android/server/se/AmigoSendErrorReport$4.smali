.class Lcom/android/server/se/AmigoSendErrorReport$4;
.super Ljava/lang/Thread;
.source "AmigoSendErrorReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/se/AmigoSendErrorReport;->sendErrorLog(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/se/AmigoSendErrorReport;

.field final synthetic val$msg:Ljava/lang/CharSequence;

.field final synthetic val$saveLog:Z


# direct methods
.method constructor <init>(Lcom/android/server/se/AmigoSendErrorReport;Ljava/lang/CharSequence;Z)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/server/se/AmigoSendErrorReport$4;->this$0:Lcom/android/server/se/AmigoSendErrorReport;

    iput-object p2, p0, Lcom/android/server/se/AmigoSendErrorReport$4;->val$msg:Ljava/lang/CharSequence;

    iput-boolean p3, p0, Lcom/android/server/se/AmigoSendErrorReport$4;->val$saveLog:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 194
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v0, "attachments":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v6, p0, Lcom/android/server/se/AmigoSendErrorReport$4;->this$0:Lcom/android/server/se/AmigoSendErrorReport;

    # getter for: Lcom/android/server/se/AmigoSendErrorReport;->mCommonUtil:Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;
    invoke-static {v6}, Lcom/android/server/se/AmigoSendErrorReport;->access$400(Lcom/android/server/se/AmigoSendErrorReport;)Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->getSystemLogAndCompressor()V

    .line 196
    new-instance v3, Ljava/io/File;

    const-string v6, "/data/errorlog/zip/log.zip"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v3, "logFile":Ljava/io/File;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v6, p0, Lcom/android/server/se/AmigoSendErrorReport$4;->this$0:Lcom/android/server/se/AmigoSendErrorReport;

    # getter for: Lcom/android/server/se/AmigoSendErrorReport;->mCommonUtil:Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;
    invoke-static {v6}, Lcom/android/server/se/AmigoSendErrorReport;->access$400(Lcom/android/server/se/AmigoSendErrorReport;)Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->getUUID()Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, "uuid":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/se/AmigoSendErrorReport$4;->this$0:Lcom/android/server/se/AmigoSendErrorReport;

    # getter for: Lcom/android/server/se/AmigoSendErrorReport;->mCommonUtil:Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;
    invoke-static {v6}, Lcom/android/server/se/AmigoSendErrorReport;->access$400(Lcom/android/server/se/AmigoSendErrorReport;)Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->getImei()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "imei":Ljava/lang/String;
    new-instance v4, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;

    iget-object v6, p0, Lcom/android/server/se/AmigoSendErrorReport$4;->this$0:Lcom/android/server/se/AmigoSendErrorReport;

    invoke-direct {v4, v6}, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;-><init>(Lcom/android/server/se/AmigoSendErrorReport;)V

    .line 201
    .local v4, "systemLog":Lcom/android/server/se/AmigoSendErrorReport$SystemLog;
    const/16 v6, 0x3e8

    invoke-virtual {v4, v6}, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->setType(I)V

    .line 202
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->setTag(I)V

    .line 203
    invoke-virtual {v4, v5}, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->setUuid(Ljava/lang/String;)V

    .line 204
    iget-object v6, p0, Lcom/android/server/se/AmigoSendErrorReport$4;->this$0:Lcom/android/server/se/AmigoSendErrorReport;

    # getter for: Lcom/android/server/se/AmigoSendErrorReport;->mGNRSAHelper:Lcom/android/server/se/AmigoSendErrorReport$GNRSAHelper;
    invoke-static {v6}, Lcom/android/server/se/AmigoSendErrorReport;->access$500(Lcom/android/server/se/AmigoSendErrorReport;)Lcom/android/server/se/AmigoSendErrorReport$GNRSAHelper;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/se/AmigoSendErrorReport$4;->this$0:Lcom/android/server/se/AmigoSendErrorReport;

    # getter for: Lcom/android/server/se/AmigoSendErrorReport;->mGNRSAHelper:Lcom/android/server/se/AmigoSendErrorReport$GNRSAHelper;
    invoke-static {v8}, Lcom/android/server/se/AmigoSendErrorReport;->access$500(Lcom/android/server/se/AmigoSendErrorReport;)Lcom/android/server/se/AmigoSendErrorReport$GNRSAHelper;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/se/AmigoSendErrorReport$GNRSAHelper;->publicKeyString:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/se/AmigoSendErrorReport$GNRSAHelper;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->setSign(Ljava/lang/String;)V

    .line 206
    iget-object v6, p0, Lcom/android/server/se/AmigoSendErrorReport$4;->this$0:Lcom/android/server/se/AmigoSendErrorReport;

    # getter for: Lcom/android/server/se/AmigoSendErrorReport;->mCommonUtil:Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;
    invoke-static {v6}, Lcom/android/server/se/AmigoSendErrorReport;->access$400(Lcom/android/server/se/AmigoSendErrorReport;)Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->getModel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->setModel(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v4, v2}, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->setImei(Ljava/lang/String;)V

    .line 208
    iget-object v6, p0, Lcom/android/server/se/AmigoSendErrorReport$4;->val$msg:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->setDescription(Ljava/lang/String;)V

    .line 209
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/se/AmigoSendErrorReport$4;->this$0:Lcom/android/server/se/AmigoSendErrorReport;

    # getter for: Lcom/android/server/se/AmigoSendErrorReport;->mCommonUtil:Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;
    invoke-static {v7}, Lcom/android/server/se/AmigoSendErrorReport;->access$400(Lcom/android/server/se/AmigoSendErrorReport;)Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->getRomVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/se/AmigoSendErrorReport$4;->this$0:Lcom/android/server/se/AmigoSendErrorReport;

    # getter for: Lcom/android/server/se/AmigoSendErrorReport;->mCommonUtil:Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;
    invoke-static {v7}, Lcom/android/server/se/AmigoSendErrorReport;->access$400(Lcom/android/server/se/AmigoSendErrorReport;)Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->getStatus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->setVersion(Ljava/lang/String;)V

    .line 211
    iget-boolean v6, p0, Lcom/android/server/se/AmigoSendErrorReport$4;->val$saveLog:Z

    if-eqz v6, :cond_0

    .line 212
    invoke-virtual {v4, v0}, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->setAttachments(Ljava/util/List;)V

    .line 216
    :goto_0
    iget-object v6, p0, Lcom/android/server/se/AmigoSendErrorReport$4;->this$0:Lcom/android/server/se/AmigoSendErrorReport;

    iget-object v7, p0, Lcom/android/server/se/AmigoSendErrorReport$4;->this$0:Lcom/android/server/se/AmigoSendErrorReport;

    # invokes: Lcom/android/server/se/AmigoSendErrorReport;->isTestEnv()Z
    invoke-static {v7}, Lcom/android/server/se/AmigoSendErrorReport;->access$600(Lcom/android/server/se/AmigoSendErrorReport;)Z

    move-result v7

    # invokes: Lcom/android/server/se/AmigoSendErrorReport;->sendSystemLog(ZLcom/android/server/se/AmigoSendErrorReport$SystemLog;)V
    invoke-static {v6, v7, v4}, Lcom/android/server/se/AmigoSendErrorReport;->access$700(Lcom/android/server/se/AmigoSendErrorReport;ZLcom/android/server/se/AmigoSendErrorReport$SystemLog;)V

    .line 220
    .end local v0    # "attachments":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v2    # "imei":Ljava/lang/String;
    .end local v3    # "logFile":Ljava/io/File;
    .end local v4    # "systemLog":Lcom/android/server/se/AmigoSendErrorReport$SystemLog;
    .end local v5    # "uuid":Ljava/lang/String;
    :goto_1
    return-void

    .line 214
    .restart local v0    # "attachments":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v2    # "imei":Ljava/lang/String;
    .restart local v3    # "logFile":Ljava/io/File;
    .restart local v4    # "systemLog":Lcom/android/server/se/AmigoSendErrorReport$SystemLog;
    .restart local v5    # "uuid":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->setApp(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    .end local v0    # "attachments":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v2    # "imei":Ljava/lang/String;
    .end local v3    # "logFile":Ljava/io/File;
    .end local v4    # "systemLog":Lcom/android/server/se/AmigoSendErrorReport$SystemLog;
    .end local v5    # "uuid":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
