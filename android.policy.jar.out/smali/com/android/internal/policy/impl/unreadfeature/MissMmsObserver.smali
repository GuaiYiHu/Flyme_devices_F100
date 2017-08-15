.class public Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;
.super Landroid/database/ContentObserver;
.source "MissMmsObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind;,
        Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$QueryMissMessage;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartRemind-MissMms"


# instance fields
.field private mContext:Landroid/content/Context;

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

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gnUnreadLoader"    # Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 126
    new-instance v0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$1;-><init>(Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->mHandler:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->mGnUnreadLoader:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->getCount(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;
    .param p1, "x1"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->onUnReadChange(I)V

    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->mCurTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->mCurTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 98
    :cond_0
    return-void
.end method

.method private getCount(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v6, 0x0

    .line 53
    .local v6, "count":I
    const/4 v7, 0x0

    .line 54
    .local v7, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 56
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 57
    if-eqz v7, :cond_0

    .line 58
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 63
    :cond_0
    if-eqz v7, :cond_1

    .line 64
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 67
    :cond_1
    :goto_0
    return v6

    .line 60
    :catch_0
    move-exception v8

    .line 61
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    if-eqz v7, :cond_1

    .line 64
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 63
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_2

    .line 64
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private onUnReadChange(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    .line 101
    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->mGnUnreadLoader:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->getMissCallCount(Landroid/content/Context;)I

    move-result v0

    .line 102
    .local v0, "missCallCount":I
    const-string v3, "SmartRemind-MissMms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------> Miss Mms  callback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "          Miss Call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v2, ""

    .line 105
    .local v2, "toWrite":Ljava/lang/String;
    if-lez p1, :cond_2

    .line 106
    const-string v2, "1"

    .line 111
    :cond_0
    :goto_0
    if-gtz p1, :cond_1

    if-lez v0, :cond_3

    .line 112
    :cond_1
    const-string v3, "SmartRemind-MissMms"

    const-string v4, "        Miss Mms request write  1,delay 3s"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 116
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 124
    .end local v1    # "msg":Landroid/os/Message;
    :goto_1
    return-void

    .line 107
    :cond_2
    if-nez p1, :cond_0

    .line 108
    const-string v2, "0"

    goto :goto_0

    .line 119
    :cond_3
    const-string v3, "SmartRemind-MissMms"

    const-string v4, "        Miss Mms request write  0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->mGnUnreadLoader:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->ProcessSmartRemindValue(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->reset()V

    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->mCurTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->cancel()V

    .line 90
    iput-object v1, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->mCurTask:Landroid/os/AsyncTask;

    .line 91
    new-instance v0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$QueryMissMessage;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$QueryMissMessage;-><init>(Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->mCurTask:Landroid/os/AsyncTask;

    .line 92
    return-void
.end method
