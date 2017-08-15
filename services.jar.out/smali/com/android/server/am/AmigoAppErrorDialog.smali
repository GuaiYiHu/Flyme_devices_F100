.class Lcom/android/server/am/AmigoAppErrorDialog;
.super Ljava/lang/Object;
.source "AmigoAppErrorDialog.java"


# static fields
.field private static isSystemApp:Z

.field private static mContext:Landroid/content/Context;

.field private static mMessage:Ljava/lang/CharSequence;

.field private static mProcessRecord:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendErrorReport()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gionee.telepath.action.FRAMEWORK_SEND_LOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "msg"

    sget-object v2, Lcom/android/server/am/AmigoAppErrorDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 37
    sget-object v1, Lcom/android/server/am/AmigoAppErrorDialog;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/am/AmigoAppErrorDialog;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 38
    const-string v1, "package"

    sget-object v2, Lcom/android/server/am/AmigoAppErrorDialog;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    :cond_0
    sget-object v1, Lcom/android/server/am/AmigoAppErrorDialog;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 41
    sget-object v1, Lcom/android/server/am/AmigoAppErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 43
    :cond_1
    return-void
.end method

.method public static sendErrorReport(I)V
    .locals 4
    .param p0, "flag"    # I

    .prologue
    const/4 v1, 0x1

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.gionee.telepath.action.FRAMEWORK_SEND_LOG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "msg"

    sget-object v3, Lcom/android/server/am/AmigoAppErrorDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 48
    if-eq p0, v1, :cond_0

    if-nez p0, :cond_3

    sget-boolean v2, Lcom/android/server/am/AmigoAppErrorDialog;->isSystemApp:Z

    if-eqz v2, :cond_3

    .line 50
    .local v1, "saveLog":Z
    :cond_0
    :goto_0
    const-string v2, "saveLog"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    sget-object v2, Lcom/android/server/am/AmigoAppErrorDialog;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/am/AmigoAppErrorDialog;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    .line 52
    const-string v2, "package"

    sget-object v3, Lcom/android/server/am/AmigoAppErrorDialog;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    :cond_1
    sget-object v2, Lcom/android/server/am/AmigoAppErrorDialog;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 55
    sget-object v2, Lcom/android/server/am/AmigoAppErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 57
    :cond_2
    return-void

    .line 48
    .end local v1    # "saveLog":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setErrorReportMessage(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/server/am/ProcessRecord;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v1, 0x0

    .line 22
    sput-object p0, Lcom/android/server/am/AmigoAppErrorDialog;->mContext:Landroid/content/Context;

    .line 24
    :try_start_0
    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flagsEx:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    sput-boolean v1, Lcom/android/server/am/AmigoAppErrorDialog;->isSystemApp:Z

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/AmigoAppErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/AmigoAppErrorDialog;->mMessage:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    sput-object p2, Lcom/android/server/am/AmigoAppErrorDialog;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    .line 32
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    sput-object p1, Lcom/android/server/am/AmigoAppErrorDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method
