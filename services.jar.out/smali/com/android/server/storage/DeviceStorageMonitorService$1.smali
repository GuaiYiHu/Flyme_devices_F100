.class Lcom/android/server/storage/DeviceStorageMonitorService$1;
.super Landroid/os/Handler;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 217
    iget v8, p1, Landroid/os/Message;->what:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 218
    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Lamigo/app/AmigoAlertDialog;
    invoke-static {v6}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$000(Lcom/android/server/storage/DeviceStorageMonitorService;)Lamigo/app/AmigoAlertDialog;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mIPOBootup:Z
    invoke-static {v6}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$100(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mConfigChanged:Z
    invoke-static {v6}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$200(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 219
    :cond_0
    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # setter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mIPOBootup:Z
    invoke-static {v6, v7}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$102(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z

    .line 220
    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mConfigChanged:Z
    invoke-static {v6}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$200(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 221
    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # setter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mConfigChanged:Z
    invoke-static {v6, v7}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$202(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z

    .line 223
    :cond_1
    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v6}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 225
    .local v1, "context":Landroid/content/Context;
    const v6, 0x707002d

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 226
    .local v5, "title":Ljava/lang/CharSequence;
    const v6, 0x707002e

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 227
    .local v2, "details":Ljava/lang/CharSequence;
    const v6, 0x707002a

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 228
    .local v3, "negativeText":Ljava/lang/CharSequence;
    const v6, 0x7070029

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 229
    .local v4, "positiveText":Ljava/lang/CharSequence;
    new-instance v6, Lamigo/app/AmigoAlertDialog$Builder;

    invoke-direct {v6, v1}, Lamigo/app/AmigoAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Lamigo/app/AmigoAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lamigo/app/AmigoAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v6

    new-instance v8, Lcom/android/server/storage/DeviceStorageMonitorService$1$1;

    invoke-direct {v8, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$1$1;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService$1;)V

    invoke-virtual {v6, v3, v8}, Lamigo/app/AmigoAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v8}, Lamigo/app/AmigoAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v0

    .line 259
    .local v0, "builder":Lamigo/app/AmigoAlertDialog$Builder;
    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalSize:J
    invoke-static {v6}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$400(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v8

    const-wide/32 v10, 0x3200000

    cmp-long v6, v8, v10

    if-lez v6, :cond_2

    .line 260
    const v6, 0x805003e

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v8, Lcom/android/server/storage/DeviceStorageMonitorService$1$2;

    invoke-direct {v8, p0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService$1$2;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService$1;Landroid/content/Context;)V

    invoke-virtual {v0, v6, v8}, Lamigo/app/AmigoAlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;

    .line 272
    :cond_2
    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0}, Lamigo/app/AmigoAlertDialog$Builder;->create()Lamigo/app/AmigoAlertDialog;

    move-result-object v8

    # setter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Lamigo/app/AmigoAlertDialog;
    invoke-static {v6, v8}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$002(Lcom/android/server/storage/DeviceStorageMonitorService;Lamigo/app/AmigoAlertDialog;)Lamigo/app/AmigoAlertDialog;

    .line 275
    .end local v0    # "builder":Lamigo/app/AmigoAlertDialog$Builder;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "details":Ljava/lang/CharSequence;
    .end local v3    # "negativeText":Ljava/lang/CharSequence;
    .end local v4    # "positiveText":Ljava/lang/CharSequence;
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_3
    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Lamigo/app/AmigoAlertDialog;
    invoke-static {v6}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$000(Lcom/android/server/storage/DeviceStorageMonitorService;)Lamigo/app/AmigoAlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Lamigo/app/AmigoAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v8, 0x7d3

    invoke-virtual {v6, v8}, Landroid/view/Window;->setType(I)V

    .line 276
    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Lamigo/app/AmigoAlertDialog;
    invoke-static {v6}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$000(Lcom/android/server/storage/DeviceStorageMonitorService;)Lamigo/app/AmigoAlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Lamigo/app/AmigoAlertDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_4

    .line 278
    const-string v6, "ctsrunning"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_5

    .line 279
    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Lamigo/app/AmigoAlertDialog;
    invoke-static {v6}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$000(Lcom/android/server/storage/DeviceStorageMonitorService;)Lamigo/app/AmigoAlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Lamigo/app/AmigoAlertDialog;->show()V

    .line 299
    :cond_4
    :goto_0
    return-void

    .line 281
    :cond_5
    const-string v6, "DeviceStorageMonitorService"

    const-string v7, "In CTS Running,do not show the no space dailog"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    :cond_6
    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0x6e

    if-ne v8, v9, :cond_7

    .line 289
    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService;->showMemeoryLowDialog()V
    invoke-static {v6}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$500(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    goto :goto_0

    .line 294
    :cond_7
    iget v8, p1, Landroid/os/Message;->what:I

    if-eq v8, v6, :cond_8

    .line 295
    const-string v6, "DeviceStorageMonitorService"

    const-string v7, "Will not process invalid message"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    :cond_8
    iget-object v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v6, :cond_9

    :goto_1
    invoke-virtual {v8, v6}, Lcom/android/server/storage/DeviceStorageMonitorService;->checkMemory(Z)V

    goto :goto_0

    :cond_9
    move v6, v7

    goto :goto_1
.end method
