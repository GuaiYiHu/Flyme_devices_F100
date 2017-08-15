.class Lcom/android/server/notification/AmigoLedController$5;
.super Ljava/lang/Object;
.source "AmigoLedController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/AmigoLedController;->updateMissCallNum()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/AmigoLedController;


# direct methods
.method constructor <init>(Lcom/android/server/notification/AmigoLedController;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/android/server/notification/AmigoLedController$5;->this$0:Lcom/android/server/notification/AmigoLedController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 593
    iget-object v1, p0, Lcom/android/server/notification/AmigoLedController$5;->this$0:Lcom/android/server/notification/AmigoLedController;

    # getter for: Lcom/android/server/notification/AmigoLedController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/notification/AmigoLedController;->access$800(Lcom/android/server/notification/AmigoLedController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 594
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 595
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 597
    .local v8, "mCount":I
    :try_start_0
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "type=3 and new<>0"

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 600
    if-eqz v6, :cond_0

    .line 601
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v8, v1

    .line 602
    const-string v1, "AmigoLedController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MissCall num ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v1, p0, Lcom/android/server/notification/AmigoLedController$5;->this$0:Lcom/android/server/notification/AmigoLedController;

    # setter for: Lcom/android/server/notification/AmigoLedController;->mMissNum:I
    invoke-static {v1, v8}, Lcom/android/server/notification/AmigoLedController;->access$902(Lcom/android/server/notification/AmigoLedController;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    :cond_0
    if-eqz v6, :cond_1

    .line 609
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 612
    :cond_1
    :goto_0
    return-void

    .line 605
    :catch_0
    move-exception v7

    .line 606
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "AmigoLedController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>exception query miss call="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    if-eqz v6, :cond_1

    .line 609
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 608
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 609
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method
