.class Lcom/android/server/MasterClearReceiver$1;
.super Ljava/lang/Thread;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MasterClearReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MasterClearReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$eraseSD:Z

.field final synthetic val$mode:Ljava/lang/String;

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$shutdown:Z


# direct methods
.method constructor <init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Context;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iput-object p3, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iput-object p5, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/server/MasterClearReceiver$1;->val$eraseSD:Z

    iput-object p7, p0, Lcom/android/server/MasterClearReceiver$1;->val$mode:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 57
    :try_start_0
    const-string v1, "MasterClear"

    const-string v2, "Call mtehod: rebootWipeUserData"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v1, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/server/MasterClearReceiver$1;->val$eraseSD:Z

    iget-object v5, p0, Lcom/android/server/MasterClearReceiver$1;->val$mode:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/os/RecoverySystem;->amigoRebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 62
    const-string v1, "MasterClear"

    const-string v2, "Still running after master clear?!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "MasterClear"

    const-string v2, "Can\'t perform master clear/factory reset"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "MasterClear"

    const-string v2, "Can\'t perform master clear/factory reset"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
