.class public Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;
.super Landroid/database/ContentObserver;
.source "MissCallObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$1;,
        Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind;,
        Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$QueryMissMessage;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartRemind-MissCall"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCr:Landroid/content/ContentResolver;

.field private mCurTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mGnUnreadLoader:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gnUnreadLoader"    # Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 44
    iput-object p1, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;->mCr:Landroid/content/ContentResolver;

    .line 48
    iput-object p2, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;->mGnUnreadLoader:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;->getMissCallCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;
    .param p1, "x1"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;->onUnReadChange(I)V

    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;->mCurTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;->mCurTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 71
    :cond_0
    return-void
.end method

.method private getMissCallCount()I
    .locals 10

    .prologue
    .line 74
    const/4 v6, 0x0

    .line 75
    .local v6, "count":I
    const/4 v7, 0x0

    .line 77
    .local v7, "csr":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "type=3 and new<>0"

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 78
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 80
    .local v9, "type":I
    const/4 v0, 0x3

    if-ne v9, v0, :cond_0

    .line 81
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 87
    .end local v9    # "type":I
    :cond_0
    if-eqz v7, :cond_1

    .line 88
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 92
    :cond_1
    :goto_0
    return v6

    .line 84
    :catch_0
    move-exception v8

    .line 85
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    if-eqz v7, :cond_1

    .line 88
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 87
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 88
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private onUnReadChange(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    .line 96
    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;->mGnUnreadLoader:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->getMissMmsCount(Landroid/content/Context;)I

    move-result v0

    .line 97
    .local v0, "missMmsCount":I
    const-string v2, "SmartRemind-MissCall"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------> Miss Call callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "          Miss Mms:   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v1, ""

    .line 100
    .local v1, "toWrite":Ljava/lang/String;
    if-lez p1, :cond_2

    .line 101
    const-string v1, "1"

    .line 105
    :cond_0
    :goto_0
    if-gtz p1, :cond_1

    if-lez v0, :cond_3

    .line 106
    :cond_1
    const-string v2, "SmartRemind-MissCall"

    const-string v3, "        Miss Call request write  1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;->mGnUnreadLoader:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->ProcessSmartRemindValue(Ljava/lang/String;)V

    .line 114
    :goto_1
    return-void

    .line 102
    :cond_2
    if-nez p1, :cond_0

    .line 103
    const-string v1, "0"

    goto :goto_0

    .line 110
    :cond_3
    const-string v2, "SmartRemind-MissCall"

    const-string v3, "        Miss Call request write  0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;->mGnUnreadLoader:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->ProcessSmartRemindValue(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;->reset()V

    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;->mCurTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;->cancel()V

    .line 63
    iput-object v1, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;->mCurTask:Landroid/os/AsyncTask;

    .line 64
    new-instance v0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$QueryMissMessage;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$QueryMissMessage;-><init>(Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;->mCurTask:Landroid/os/AsyncTask;

    .line 65
    return-void
.end method
