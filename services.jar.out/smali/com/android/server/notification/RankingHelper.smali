.class public Lcom/android/server/notification/RankingHelper;
.super Ljava/lang/Object;
.source "RankingHelper.java"

# interfaces
.implements Lcom/android/server/notification/RankingConfig;


# static fields
.field private static final ATT_NAME:Ljava/lang/String; = "name"

.field private static final ATT_PRIORITY:Ljava/lang/String; = "priority"

.field private static final ATT_UID:Ljava/lang/String; = "uid"

.field private static final ATT_VERSION:Ljava/lang/String; = "version"

.field private static final ATT_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RankingHelper"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_RANKING:Ljava/lang/String; = "ranking"

.field private static final XML_VERSION:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

.field private final mPackagePriorities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageVisibilities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

.field private final mProxyByGroupTmp:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRankingHandler:Landroid/os/Handler;

.field private final mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;[Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rankingHandler"    # Landroid/os/Handler;
    .param p3, "extractorNames"    # [Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v5, Lcom/android/server/notification/NotificationComparator;

    invoke-direct {v5}, Lcom/android/server/notification/NotificationComparator;-><init>()V

    iput-object v5, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    .line 66
    new-instance v5, Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-direct {v5}, Lcom/android/server/notification/GlobalSortKeyComparator;-><init>()V

    iput-object v5, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    .line 77
    iput-object p1, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Landroid/os/Handler;

    .line 79
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    .line 80
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/notification/RankingHelper;->mPackageVisibilities:Landroid/util/ArrayMap;

    .line 82
    array-length v0, p3

    .line 83
    .local v0, "N":I
    new-array v5, v0, [Lcom/android/server/notification/NotificationSignalExtractor;

    iput-object v5, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    .line 84
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 86
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    aget-object v6, p3, v4

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 87
    .local v3, "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationSignalExtractor;

    .line 89
    .local v2, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-interface {v2, v5}, Lcom/android/server/notification/NotificationSignalExtractor;->initialize(Landroid/content/Context;)V

    .line 90
    invoke-interface {v2, p0}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    .line 91
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aput-object v2, v5, v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 84
    .end local v2    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    .end local v3    # "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "RankingHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find extractor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p3, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 94
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/InstantiationException;
    const-string v5, "RankingHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t instantiate extractor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p3, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 96
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "RankingHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem accessing extractor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p3, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 100
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    .line 101
    return-void
.end method

.method private static safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 294
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/server/notification/RankingHelper;->tryParseInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static tryParseInt(Ljava/lang/String;I)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .prologue
    .line 299
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    .end local p1    # "defValue":I
    :goto_0
    return p1

    .line 301
    .restart local p1    # "defValue":I
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private updateConfig()V
    .locals 4

    .prologue
    .line 224
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v2

    .line 225
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 226
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    invoke-interface {v2, p0}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 229
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 357
    if-nez p3, :cond_0

    .line 358
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v1, v8

    .line 359
    .local v1, "N":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    const-string v8, "mSignalExtractors.length = "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 362
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 363
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    const-string v8, "  "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v8, v8, v2

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 369
    .restart local v1    # "N":I
    if-nez p3, :cond_1

    .line 370
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 371
    const-string v8, "package priorities:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 374
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 375
    .local v4, "name":Ljava/lang/String;
    if-eqz p3, :cond_2

    invoke-virtual {p3, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 376
    :cond_2
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseIntArray;

    .line 377
    .local v6, "priorityByUid":Landroid/util/SparseIntArray;
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 378
    .local v0, "M":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v0, :cond_3

    .line 379
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 380
    .local v7, "uid":I
    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 381
    .local v5, "priority":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 382
    const-string v8, "  "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 384
    const-string v8, " ("

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 386
    const-string v8, ") has priority: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 378
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 373
    .end local v0    # "M":I
    .end local v3    # "j":I
    .end local v5    # "priority":I
    .end local v6    # "priorityByUid":Landroid/util/SparseIntArray;
    .end local v7    # "uid":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 391
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public extractSignals(Lcom/android/server/notification/NotificationRecord;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 115
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v8

    .line 116
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 117
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v1, v8, v4

    .line 119
    .local v1, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/server/notification/NotificationSignalExtractor;->process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;

    move-result-object v6

    .line 120
    .local v6, "recon":Lcom/android/server/notification/RankingReconsideration;
    if-eqz v6, :cond_0

    .line 121
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    invoke-static {v8, v9, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 123
    .local v5, "m":Landroid/os/Message;
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8}, Lcom/android/server/notification/RankingReconsideration;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 124
    .local v2, "delay":J
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v2    # "delay":J
    .end local v5    # "m":Landroid/os/Message;
    .end local v6    # "recon":Lcom/android/server/notification/RankingReconsideration;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 126
    :catch_0
    move-exception v7

    .line 127
    .local v7, "t":Ljava/lang/Throwable;
    const-string v8, "RankingHelper"

    const-string v9, "NotificationSignalExtractor failed."

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 130
    .end local v1    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method public findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/notification/NotificationSignalExtractor;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v3

    .line 105
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 106
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v1, v3, v2

    .line 107
    .local v1, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    .end local v1    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :goto_1
    return-object v1

    .line 105
    .restart local v1    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getPackagePriority(Ljava/lang/String;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, "priority":I
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    .line 311
    .local v1, "priorityByUid":Landroid/util/SparseIntArray;
    if-eqz v1, :cond_0

    .line 312
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 314
    :cond_0
    return v0
.end method

.method public getPackageVisibilityOverride(Ljava/lang/String;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 333
    const/16 v0, -0x3e8

    .line 334
    .local v0, "visibility":I
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mPackageVisibilities:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    .line 335
    .local v1, "visibilityByUid":Landroid/util/SparseIntArray;
    if-eqz v1, :cond_0

    .line 336
    const/16 v2, -0x3e8

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 339
    :cond_0
    return v0
.end method

.method public indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I
    .locals 1
    .param p2, "target"    # Lcom/android/server/notification/NotificationRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Lcom/android/server/notification/NotificationRecord;",
            ")I"
        }
    .end annotation

    .prologue
    .line 290
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-static {p1, p2, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public initImportantListOnFirstBootup()V
    .locals 7

    .prologue
    .line 399
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7080001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "defaultList":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 402
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 403
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/server/notification/RankingHelper;->pushToPrioritiesList(Ljava/lang/String;)V

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 406
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public pushToPrioritiesList(Ljava/lang/String;)V
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 430
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 431
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    .line 432
    .local v3, "priorityByUid":Landroid/util/SparseIntArray;
    if-nez v3, :cond_0

    .line 433
    new-instance v3, Landroid/util/SparseIntArray;

    .end local v3    # "priorityByUid":Landroid/util/SparseIntArray;
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 434
    .restart local v3    # "priorityByUid":Landroid/util/SparseIntArray;
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_0
    const/16 v4, 0x2710

    .line 438
    .local v4, "uid":I
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 439
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 444
    return-void

    .line 440
    :catch_0
    move-exception v1

    .line 441
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "RankingHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pushToPrioritiesList fail : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/16 v11, -0x3e8

    .line 133
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 134
    .local v4, "type":I
    if-eq v4, v13, :cond_1

    .line 142
    :cond_0
    return-void

    .line 135
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "tag":Ljava/lang/String;
    const-string v9, "ranking"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 137
    iget-object v9, p0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->clear()V

    .line 138
    const-string v9, "version"

    invoke-static {p1, v9, v12}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 139
    .local v6, "version":I
    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-eq v4, v12, :cond_7

    .line 140
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 141
    const/4 v9, 0x3

    if-ne v4, v9, :cond_3

    const-string v9, "ranking"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 144
    :cond_3
    if-ne v4, v13, :cond_2

    .line 145
    const-string v9, "package"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 146
    const-string v9, "uid"

    const/4 v10, -0x1

    invoke-static {p1, v9, v10}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 147
    .local v5, "uid":I
    const-string v9, "priority"

    const/4 v10, 0x0

    invoke-static {p1, v9, v10}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 148
    .local v1, "priority":I
    const-string v9, "visibility"

    invoke-static {p1, v9, v11}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 150
    .local v7, "vis":I
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 153
    if-eqz v1, :cond_5

    .line 154
    iget-object v9, p0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    .line 155
    .local v2, "priorityByUid":Landroid/util/SparseIntArray;
    if-nez v2, :cond_4

    .line 156
    new-instance v2, Landroid/util/SparseIntArray;

    .end local v2    # "priorityByUid":Landroid/util/SparseIntArray;
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 157
    .restart local v2    # "priorityByUid":Landroid/util/SparseIntArray;
    iget-object v9, p0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    invoke-virtual {v9, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_4
    invoke-virtual {v2, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 161
    .end local v2    # "priorityByUid":Landroid/util/SparseIntArray;
    :cond_5
    if-eq v7, v11, :cond_2

    .line 162
    iget-object v9, p0, Lcom/android/server/notification/RankingHelper;->mPackageVisibilities:Landroid/util/ArrayMap;

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseIntArray;

    .line 163
    .local v8, "visibilityByUid":Landroid/util/SparseIntArray;
    if-nez v8, :cond_6

    .line 164
    new-instance v8, Landroid/util/SparseIntArray;

    .end local v8    # "visibilityByUid":Landroid/util/SparseIntArray;
    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    .line 165
    .restart local v8    # "visibilityByUid":Landroid/util/SparseIntArray;
    iget-object v9, p0, Lcom/android/server/notification/RankingHelper;->mPackageVisibilities:Landroid/util/ArrayMap;

    invoke-virtual {v9, v0, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_6
    invoke-virtual {v8, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 173
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "priority":I
    .end local v5    # "uid":I
    .end local v7    # "vis":I
    .end local v8    # "visibilityByUid":Landroid/util/SparseIntArray;
    :cond_7
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Failed to reach END_DOCUMENT"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public setPackagePriority(Ljava/lang/String;II)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "priority"    # I

    .prologue
    .line 319
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackagePriority(Ljava/lang/String;I)I

    move-result v1

    if-ne p3, v1, :cond_0

    .line 329
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    .line 323
    .local v0, "priorityByUid":Landroid/util/SparseIntArray;
    if-nez v0, :cond_1

    .line 324
    new-instance v0, Landroid/util/SparseIntArray;

    .end local v0    # "priorityByUid":Landroid/util/SparseIntArray;
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 325
    .restart local v0    # "priorityByUid":Landroid/util/SparseIntArray;
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 328
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    goto :goto_0
.end method

.method public setPackageVisibilityOverride(Ljava/lang/String;II)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "visibility"    # I

    .prologue
    .line 344
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackageVisibilityOverride(Ljava/lang/String;I)I

    move-result v1

    if-ne p3, v1, :cond_0

    .line 354
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mPackageVisibilities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    .line 348
    .local v0, "visibilityByUid":Landroid/util/SparseIntArray;
    if-nez v0, :cond_1

    .line 349
    new-instance v0, Landroid/util/SparseIntArray;

    .end local v0    # "visibilityByUid":Landroid/util/SparseIntArray;
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 350
    .restart local v0    # "visibilityByUid":Landroid/util/SparseIntArray;
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mPackageVisibilities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 353
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    goto :goto_0
.end method

.method public sort(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 234
    .local v0, "N":I
    add-int/lit8 v5, v0, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_0

    .line 235
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/NotificationRecord;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    .line 234
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 239
    :cond_0
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    invoke-static {p1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 241
    iget-object v9, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    monitor-enter v9

    .line 243
    add-int/lit8 v5, v0, -0x1

    :goto_1
    if-ltz v5, :cond_3

    .line 244
    :try_start_0
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 245
    .local v7, "record":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v7, v5}, Lcom/android/server/notification/NotificationRecord;->setAuthoritativeRank(I)V

    .line 246
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "groupKey":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v6

    .line 248
    .local v6, "isGroupSummary":Z
    if-nez v6, :cond_1

    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 249
    :cond_1
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 254
    .end local v1    # "groupKey":Ljava/lang/String;
    .end local v6    # "isGroupSummary":Z
    .end local v7    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_8

    .line 255
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 256
    .restart local v7    # "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 257
    .local v2, "groupProxy":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, "groupSortKey":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 266
    const-string v4, "nsk"

    .line 273
    .local v4, "groupSortKeyPortion":Ljava/lang/String;
    :goto_3
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v6

    .line 274
    .restart local v6    # "isGroupSummary":Z
    const-string v10, "intrsv=%c:grnk=0x%04x:gsmry=%c:%s:rnk=0x%04x"

    const/4 v8, 0x5

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->isRecentlyIntrusive()Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x30

    :goto_4
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v11, v12

    const/4 v8, 0x1

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    const/4 v12, 0x2

    if-eqz v6, :cond_7

    const/16 v8, 0x30

    :goto_5
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v11, v12

    const/4 v8, 0x3

    aput-object v4, v11, v8

    const/4 v8, 0x4

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    .line 254
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 267
    .end local v4    # "groupSortKeyPortion":Ljava/lang/String;
    .end local v6    # "isGroupSummary":Z
    :cond_4
    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 268
    const-string v4, "esk"

    .restart local v4    # "groupSortKeyPortion":Ljava/lang/String;
    goto :goto_3

    .line 270
    .end local v4    # "groupSortKeyPortion":Ljava/lang/String;
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gsk="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "groupSortKeyPortion":Ljava/lang/String;
    goto :goto_3

    .line 274
    .restart local v6    # "isGroupSummary":Z
    :cond_6
    const/16 v8, 0x31

    goto :goto_4

    :cond_7
    const/16 v8, 0x31

    goto :goto_5

    .line 282
    .end local v2    # "groupProxy":Lcom/android/server/notification/NotificationRecord;
    .end local v3    # "groupSortKey":Ljava/lang/String;
    .end local v4    # "groupSortKeyPortion":Ljava/lang/String;
    .end local v6    # "isGroupSummary":Z
    .end local v7    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_8
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->clear()V

    .line 283
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-static {p1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 287
    return-void

    .line 283
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method public updatePrioritiesList(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 413
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7080001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "defaultList":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 416
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 417
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 418
    const-string v5, "RankingHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "push to important list when install package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {p0, v4}, Lcom/android/server/notification/RankingHelper;->pushToPrioritiesList(Ljava/lang/String;)V

    .line 424
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_0
    return-void

    .line 416
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "pkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 16
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v13, 0x0

    const-string v14, "ranking"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 178
    const/4 v13, 0x0

    const-string v14, "version"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    new-instance v6, Landroid/util/ArraySet;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/RankingHelper;->mPackageVisibilities:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    add-int/2addr v13, v14

    invoke-direct {v6, v13}, Landroid/util/ArraySet;-><init>(I)V

    .line 182
    .local v6, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 183
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/RankingHelper;->mPackageVisibilities:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 184
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 185
    .local v7, "packageUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 186
    .local v5, "packageName":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 187
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    invoke-virtual {v13, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseIntArray;

    .line 188
    .local v9, "priorityByUid":Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/RankingHelper;->mPackageVisibilities:Landroid/util/ArrayMap;

    invoke-virtual {v13, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseIntArray;

    .line 189
    .local v12, "visibilityByUid":Landroid/util/SparseIntArray;
    if-eqz v9, :cond_1

    .line 190
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 191
    .local v1, "M":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 192
    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "M":I
    .end local v4    # "j":I
    :cond_1
    if-eqz v12, :cond_2

    .line 196
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 197
    .restart local v1    # "M":I
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 198
    invoke-virtual {v12, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 201
    .end local v1    # "M":I
    .end local v4    # "j":I
    :cond_2
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 202
    .local v10, "uid":Ljava/lang/Integer;
    const/4 v13, 0x0

    const-string v14, "package"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    const/4 v13, 0x0

    const-string v14, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 204
    if-eqz v9, :cond_3

    .line 205
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 206
    .local v8, "priority":I
    if-eqz v8, :cond_3

    .line 207
    const/4 v13, 0x0

    const-string v14, "priority"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    .end local v8    # "priority":I
    :cond_3
    if-eqz v12, :cond_4

    .line 211
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    .line 212
    .local v11, "visibility":I
    const/16 v13, -0x3e8

    if-eq v11, v13, :cond_4

    .line 213
    const/4 v13, 0x0

    const-string v14, "visibility"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    .end local v11    # "visibility":I
    :cond_4
    const/4 v13, 0x0

    const-string v14, "uid"

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    const/4 v13, 0x0

    const-string v14, "package"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 220
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v9    # "priorityByUid":Landroid/util/SparseIntArray;
    .end local v10    # "uid":Ljava/lang/Integer;
    .end local v12    # "visibilityByUid":Landroid/util/SparseIntArray;
    :cond_5
    const/4 v13, 0x0

    const-string v14, "ranking"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    return-void
.end method
