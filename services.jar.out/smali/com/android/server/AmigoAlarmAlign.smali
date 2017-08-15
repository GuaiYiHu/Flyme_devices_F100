.class public Lcom/android/server/AmigoAlarmAlign;
.super Ljava/lang/Object;
.source "AmigoAlarmAlign.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;
    }
.end annotation


# static fields
.field private static final ALIGN_META_DATA_KEY:Ljava/lang/String; = "AmigoAlarmAlignPermissioin"

.field private static final COUNT_OF_SAMEALARM_IN_DUATION_DEFVALUE:I = 0xc

.field private static final DUATION_CHECK_SAMEALARM_DEFVALUE:I = 0x6ddd00

.field private static final EVENT_CLEAR_OLD_CACHEEDALARM:I = 0xa

.field private static final MILLS_MINUTE:I = 0xea60

.field private static final MILLS_SECCOND:I = 0x3e8

.field private static final SYNC_STEP_MINUTE_DEFVALUE:I = 0xa

.field private static final TAG_ALIGN:Ljava/lang/String; = "AmigoAlarmAlign"

.field private static final TAG_ALIGNED:I = 0x1

.field private static final TAG_ALIGN_NOT_SET:I = 0x0

.field private static final TIME_NOT_TO_ALIGN:I = 0x4e20

.field private static mInstance:Lcom/android/server/AmigoAlarmAlign;


# instance fields
.field private COUNT_OF_SAMEALARM_IN_DUATION:I

.field private DUATION_CHECK_SAMEALARM:I

.field private SYNC_STEP_MINUTE:I

.field private mAlignWakeExist:Z

.field mCachedAlarm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mSmartAlignWakeExist:Z

.field private mSyncDelta:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/AmigoAlarmAlign;->mInstance:Lcom/android/server/AmigoAlarmAlign;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/AmigoAlarmAlign;->SYNC_STEP_MINUTE:I

    .line 81
    const v0, 0x6ddd00

    iput v0, p0, Lcom/android/server/AmigoAlarmAlign;->DUATION_CHECK_SAMEALARM:I

    .line 82
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/server/AmigoAlarmAlign;->COUNT_OF_SAMEALARM_IN_DUATION:I

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AmigoAlarmAlign;->mCachedAlarm:Ljava/util/ArrayList;

    .line 90
    iput-boolean v1, p0, Lcom/android/server/AmigoAlarmAlign;->mAlignWakeExist:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/server/AmigoAlarmAlign;->mSmartAlignWakeExist:Z

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AmigoAlarmAlign;->mSyncDelta:I

    .line 477
    return-void
.end method

.method private alignWakeEnabled()Z
    .locals 4

    .prologue
    .line 372
    const/4 v0, 0x1

    .line 373
    .local v0, "alingWakeDefaultOn":I
    iget-object v2, p0, Lcom/android/server/AmigoAlarmAlign;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "align_wake"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 376
    .local v1, "stat":I
    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private formatTime(J)Ljava/lang/String;
    .locals 3
    .param p1, "when"    # J

    .prologue
    .line 380
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 381
    .local v0, "time":Landroid/text/format/Time;
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 382
    const-string v1, "%b %d %I:%M:%S %p"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAlignWakeTime(Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;)J
    .locals 13
    .param p1, "arm"    # Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;

    .prologue
    const/4 v12, 0x2

    .line 386
    iget-boolean v8, p0, Lcom/android/server/AmigoAlarmAlign;->mSmartAlignWakeExist:Z

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/AmigoAlarmAlign;->isAligned(Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;)Z

    move-result v9

    if-ne v8, v9, :cond_2

    .line 393
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 395
    .local v4, "bootTime":J
    const-wide/16 v2, 0x0

    .line 396
    .local v2, "armTriggerTime":J
    iget v8, p1, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->type:I

    if-ne v8, v12, :cond_3

    .line 398
    iget-wide v8, p1, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->when:J

    add-long v2, v4, v8

    .line 404
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v2, v8

    const-wide/16 v10, 0x4e20

    cmp-long v8, v8, v10

    if-gtz v8, :cond_4

    .line 405
    const-string v8, "AmigoAlarmAlign"

    const-string v9, "not align as the triggerTime in TIME_NOT_TO_ALIGN 20000"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-wide v0, p1, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->when:J

    .line 424
    .end local v2    # "armTriggerTime":J
    .end local v4    # "bootTime":J
    :cond_1
    :goto_1
    return-wide v0

    .line 388
    :cond_2
    const-string v8, "AmigoAlarmAlign"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "not aligned in DB, package:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v10}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-wide v0, p1, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->when:J

    goto :goto_1

    .line 400
    .restart local v2    # "armTriggerTime":J
    .restart local v4    # "bootTime":J
    :cond_3
    iget-wide v2, p1, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->when:J

    goto :goto_0

    .line 409
    :cond_4
    invoke-direct {p0}, Lcom/android/server/AmigoAlarmAlign;->getNextAlignWakeTime()J

    move-result-wide v6

    .line 411
    .local v6, "nextWakeTime":J
    const-wide/16 v0, 0x0

    .line 412
    .local v0, "alignWakeTime":J
    cmp-long v8, v2, v6

    if-gtz v8, :cond_5

    .line 413
    move-wide v0, v6

    .line 418
    :goto_2
    const-string v8, "AmigoAlarmAlign"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "align "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v10}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v2, v3}, Lcom/android/server/AmigoAlarmAlign;->formatTime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v0, v1}, Lcom/android/server/AmigoAlarmAlign;->formatTime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget v8, p1, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->type:I

    if-ne v8, v12, :cond_1

    .line 422
    sub-long/2addr v0, v4

    goto :goto_1

    .line 415
    :cond_5
    invoke-direct {p0, v2, v3}, Lcom/android/server/AmigoAlarmAlign;->getFutureAlignWakeTime(J)J

    move-result-wide v0

    goto :goto_2
.end method

.method private getFutureAlignWakeTime(J)J
    .locals 13
    .param p1, "armWhen"    # J

    .prologue
    const v9, 0xea60

    .line 448
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 449
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 451
    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 452
    .local v3, "whenMin":I
    iget v7, p0, Lcom/android/server/AmigoAlarmAlign;->SYNC_STEP_MINUTE:I

    rem-int v1, v3, v7

    .line 456
    .local v1, "divisMinute":I
    iget v7, p0, Lcom/android/server/AmigoAlarmAlign;->SYNC_STEP_MINUTE:I

    shr-int/lit8 v7, v7, 0x1

    iget v8, p0, Lcom/android/server/AmigoAlarmAlign;->SYNC_STEP_MINUTE:I

    rem-int/lit8 v8, v8, 0x2

    add-int v2, v7, v8

    .line 459
    .local v2, "half_step":I
    if-ge v1, v2, :cond_0

    .line 460
    mul-int v7, v1, v9

    int-to-long v8, v7

    sub-long v4, p1, v8

    .line 465
    .local v4, "wakeTime":J
    :goto_0
    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 468
    .local v6, "whenSec":I
    mul-int/lit16 v7, v6, 0x3e8

    int-to-long v8, v7

    sub-long v8, v4, v8

    iget v7, p0, Lcom/android/server/AmigoAlarmAlign;->mSyncDelta:I

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v10, v7

    add-long/2addr v8, v10

    return-wide v8

    .line 462
    .end local v4    # "wakeTime":J
    .end local v6    # "whenSec":I
    :cond_0
    iget v7, p0, Lcom/android/server/AmigoAlarmAlign;->SYNC_STEP_MINUTE:I

    sub-int/2addr v7, v1

    mul-int/2addr v7, v9

    int-to-long v8, v7

    add-long v4, p1, v8

    .restart local v4    # "wakeTime":J
    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/AmigoAlarmAlign;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/android/server/AmigoAlarmAlign;->mInstance:Lcom/android/server/AmigoAlarmAlign;

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/android/server/AmigoAlarmAlign;->mInstance:Lcom/android/server/AmigoAlarmAlign;

    .line 115
    :goto_0
    return-object v0

    .line 114
    :cond_0
    new-instance v0, Lcom/android/server/AmigoAlarmAlign;

    invoke-direct {v0}, Lcom/android/server/AmigoAlarmAlign;-><init>()V

    sput-object v0, Lcom/android/server/AmigoAlarmAlign;->mInstance:Lcom/android/server/AmigoAlarmAlign;

    .line 115
    sget-object v0, Lcom/android/server/AmigoAlarmAlign;->mInstance:Lcom/android/server/AmigoAlarmAlign;

    goto :goto_0
.end method

.method private getNextAlignWakeTime()J
    .locals 12

    .prologue
    .line 429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 431
    .local v4, "curTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 432
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 434
    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 435
    .local v1, "curMin":I
    iget v8, p0, Lcom/android/server/AmigoAlarmAlign;->SYNC_STEP_MINUTE:I

    rem-int v3, v1, v8

    .line 437
    .local v3, "divisMin":I
    iget v8, p0, Lcom/android/server/AmigoAlarmAlign;->SYNC_STEP_MINUTE:I

    sub-int/2addr v8, v3

    const v9, 0xea60

    mul-int/2addr v8, v9

    int-to-long v6, v8

    .line 439
    .local v6, "divisMills":J
    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 442
    .local v2, "curSec":I
    add-long v8, v4, v6

    mul-int/lit16 v10, v2, 0x3e8

    int-to-long v10, v10

    sub-long/2addr v8, v10

    iget v10, p0, Lcom/android/server/AmigoAlarmAlign;->mSyncDelta:I

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v10, v10

    add-long/2addr v8, v10

    return-wide v8
.end method

.method public static handleExtMessage(Landroid/os/Message;)V
    .locals 1
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 340
    invoke-static {}, Lcom/android/server/AmigoAlarmAlign;->getInstance()Lcom/android/server/AmigoAlarmAlign;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/AmigoAlarmAlign;->handleMessage(Landroid/os/Message;)V

    .line 341
    return-void
.end method

.method private isAligned(Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;)Z
    .locals 5
    .param p1, "alarm"    # Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 348
    iget-object v2, p0, Lcom/android/server/AmigoAlarmAlign;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALIGN_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 353
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isSameAlarm(Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;)Z
    .locals 4
    .param p1, "alarm1"    # Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;
    .param p2, "alarm2"    # Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;

    .prologue
    const/4 v2, 0x0

    .line 357
    iget-object v3, p1, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "pkg1":Ljava/lang/String;
    iget-object v3, p2, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "pkg2":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return v2

    .line 364
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 365
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isWakeType(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 473
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldAlign(Landroid/app/PendingIntent;)Z
    .locals 8
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 182
    const/4 v4, 0x1

    .line 184
    .local v4, "shouldAlign":Z
    iget-object v6, p0, Lcom/android/server/AmigoAlarmAlign;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 186
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x4080

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 188
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    move v5, v4

    .line 202
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "shouldAlign":Z
    .local v5, "shouldAlign":I
    :goto_0
    return v5

    .line 192
    .end local v5    # "shouldAlign":I
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    .restart local v4    # "shouldAlign":Z
    :cond_0
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "AmigoAlarmAlignPermissioin"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "permissionDescription":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 194
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/AmigoEncryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "encryptingCode":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 196
    const/4 v4, 0x0

    .end local v0    # "encryptingCode":Ljava/lang/String;
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "permissionDescription":Ljava/lang/String;
    :cond_1
    :goto_1
    move v5, v4

    .line 202
    .restart local v5    # "shouldAlign":I
    goto :goto_0

    .line 199
    .end local v5    # "shouldAlign":I
    :catch_0
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method public alignCheck(IIJJLandroid/app/PendingIntent;)Z
    .locals 15
    .param p1, "type"    # I
    .param p2, "count"    # I
    .param p3, "when"    # J
    .param p5, "repeatInterval"    # J
    .param p7, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 207
    const-string v4, "AmigoAlarmAlign"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "been wakeup, alignCheck type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " when="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AmigoAlarmAlign;->isWakeType(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/AmigoAlarmAlign;->mSmartAlignWakeExist:Z

    if-nez v4, :cond_1

    .line 210
    :cond_0
    const/4 v4, 0x0

    .line 280
    :goto_0
    return v4

    .line 213
    :cond_1
    iget-object v4, p0, Lcom/android/server/AmigoAlarmAlign;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ALIGN_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 216
    .local v2, "alignTag":I
    if-eqz v2, :cond_2

    .line 217
    const-string v4, "AmigoAlarmAlign"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not exec alignCheck as the alignTag is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v4, 0x0

    goto :goto_0

    .line 221
    :cond_2
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/server/AmigoAlarmAlign;->shouldAlign(Landroid/app/PendingIntent;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 222
    const-string v4, "AmigoAlarmAlign"

    const-string v5, "not exec alignCheck as shouldAlign return false"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v4, 0x0

    goto :goto_0

    .line 226
    :cond_3
    new-instance v3, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;

    move/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;-><init>(IIJJLandroid/app/PendingIntent;)V

    .line 228
    .local v3, "alarm":Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;
    iget-object v4, p0, Lcom/android/server/AmigoAlarmAlign;->mCachedAlarm:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 229
    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;>;"
    const/4 v13, 0x0

    .line 231
    .local v13, "inCache":Z
    :cond_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 232
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;

    .line 233
    .local v12, "cachedAlarm":Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;
    invoke-direct {p0, v12, v3}, Lcom/android/server/AmigoAlarmAlign;->isSameAlarm(Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 234
    iget-wide v4, v3, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->when:J

    iget-wide v6, v12, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->when:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x4e20

    cmp-long v4, v4, v6

    if-gtz v4, :cond_5

    .line 235
    const-string v4, "AmigoAlarmAlign"

    const-string v5, "not exec alignCheck as the interval time less:20000"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-wide v4, v3, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->when:J

    iput-wide v4, v12, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->when:J

    .line 237
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 240
    :cond_5
    iget-wide v4, v3, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->when:J

    iget-wide v6, v12, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->when:J

    sub-long/2addr v4, v6

    iget v6, p0, Lcom/android/server/AmigoAlarmAlign;->DUATION_CHECK_SAMEALARM:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    .line 241
    const/4 v4, 0x1

    iput v4, v12, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->count:I

    .line 242
    iget-wide v4, v3, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->when:J

    iput-wide v4, v12, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->when:J

    .line 246
    :goto_1
    const-string v4, "AmigoAlarmAlign"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Align: alignCheck PKG name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Count :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v12, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget v4, v12, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->count:I

    iget v5, p0, Lcom/android/server/AmigoAlarmAlign;->COUNT_OF_SAMEALARM_IN_DUATION:I

    if-lt v4, v5, :cond_7

    iget-wide v4, v3, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->when:J

    iget-wide v6, v12, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->when:J

    sub-long/2addr v4, v6

    iget v6, p0, Lcom/android/server/AmigoAlarmAlign;->DUATION_CHECK_SAMEALARM:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_7

    .line 251
    iget-object v4, p0, Lcom/android/server/AmigoAlarmAlign;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ALIGN_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 254
    iget-object v4, p0, Lcom/android/server/AmigoAlarmAlign;->mCachedAlarm:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 255
    const-string v4, "AmigoAlarmAlign"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Align: To align, PKG name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 244
    :cond_6
    iget v4, v12, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v12, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->count:I

    goto/16 :goto_1

    .line 259
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 263
    .end local v12    # "cachedAlarm":Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;
    :cond_8
    invoke-direct {p0, v3}, Lcom/android/server/AmigoAlarmAlign;->isAligned(Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 264
    const-string v4, "AmigoAlarmAlign"

    const-string v5, "Align: alignCheck return, have been aligned"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 269
    :cond_9
    new-instance v11, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;

    invoke-direct {v11}, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;-><init>()V

    .line 270
    .local v11, "backupAlarm":Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;
    iget v4, v3, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->type:I

    iput v4, v11, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->type:I

    .line 271
    iget-object v4, v3, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->operation:Landroid/app/PendingIntent;

    iput-object v4, v11, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->operation:Landroid/app/PendingIntent;

    .line 272
    iget-wide v4, v3, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->repeatInterval:J

    iput-wide v4, v11, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->repeatInterval:J

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v11, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->when:J

    .line 274
    const/4 v4, 0x1

    iput v4, v11, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->count:I

    .line 276
    iget-object v4, p0, Lcom/android/server/AmigoAlarmAlign;->mCachedAlarm:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    const-string v4, "AmigoAlarmAlign"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Align: First alarm coming, PKG name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public getWhen(IIJJLandroid/app/PendingIntent;)J
    .locals 15
    .param p1, "type"    # I
    .param p2, "count"    # I
    .param p3, "when"    # J
    .param p5, "repeatInterval"    # J
    .param p7, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 146
    move-wide/from16 v12, p3

    .line 147
    .local v12, "retWhen":J
    iget-boolean v4, p0, Lcom/android/server/AmigoAlarmAlign;->mAlignWakeExist:Z

    if-eqz v4, :cond_1

    .line 148
    invoke-direct {p0}, Lcom/android/server/AmigoAlarmAlign;->alignWakeEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 149
    new-instance v3, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;

    move/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;-><init>(IIJJLandroid/app/PendingIntent;)V

    .line 151
    .local v3, "alarm":Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;
    const/4 v4, 0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    if-nez p1, :cond_2

    .line 152
    :cond_0
    const-string v4, "AmigoAlarmAlign"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get when, type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " when="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcom/android/server/AmigoAlarmAlign;->formatTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AmigoAlarmAlign;->isWakeType(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 157
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 161
    .local v2, "callingUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 168
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/server/AmigoAlarmAlign;->shouldAlign(Landroid/app/PendingIntent;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 169
    invoke-direct {p0, v3}, Lcom/android/server/AmigoAlarmAlign;->getAlignWakeTime(Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;)J

    move-result-wide v12

    .line 178
    .end local v2    # "callingUid":I
    .end local v3    # "alarm":Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;
    :cond_1
    :goto_1
    return-wide v12

    .line 154
    .restart local v3    # "alarm":Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;
    :cond_2
    const-string v4, "AmigoAlarmAlign"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get when, type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " when="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    .restart local v2    # "callingUid":I
    :cond_3
    const-string v4, "AmigoAlarmAlign"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "permission set an accurate wake alarm, not align it!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 337
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/server/AmigoAlarmAlign;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/android/server/AmigoAlarmAlign;->mHandler:Landroid/os/Handler;

    .line 121
    iget-boolean v0, p0, Lcom/android/server/AmigoAlarmAlign;->mSmartAlignWakeExist:Z

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/server/AmigoAlarmAlign;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ALIGN_init_sync_time"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/AmigoAlarmAlign;->SYNC_STEP_MINUTE:I

    .line 126
    iget-object v0, p0, Lcom/android/server/AmigoAlarmAlign;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ALIGN_init_sync_time_delta"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/AmigoAlarmAlign;->mSyncDelta:I

    .line 127
    const-string v0, "AmigoAlarmAlign"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSyncDelta = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AmigoAlarmAlign;->mSyncDelta:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget v0, p0, Lcom/android/server/AmigoAlarmAlign;->mSyncDelta:I

    if-nez v0, :cond_0

    .line 129
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x4072c00000000000L    # 300.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/server/AmigoAlarmAlign;->mSyncDelta:I

    .line 130
    iget-object v0, p0, Lcom/android/server/AmigoAlarmAlign;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ALIGN_init_sync_time_delta"

    iget v2, p0, Lcom/android/server/AmigoAlarmAlign;->mSyncDelta:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/server/AmigoAlarmAlign;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ALIGN_init_duation_time"

    const v2, 0x6ddd00

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/AmigoAlarmAlign;->DUATION_CHECK_SAMEALARM:I

    .line 136
    iget-object v0, p0, Lcom/android/server/AmigoAlarmAlign;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ALIGN_init_count_in_duation"

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/AmigoAlarmAlign;->COUNT_OF_SAMEALARM_IN_DUATION:I

    .line 139
    const-string v0, "AmigoAlarmAlign"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SYNC_STEP_MINUTE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AmigoAlarmAlign;->SYNC_STEP_MINUTE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DUATION_CHECK_SAMEALARM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AmigoAlarmAlign;->DUATION_CHECK_SAMEALARM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "COUNT_OF_SAMEALARM_IN_DUATION = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AmigoAlarmAlign;->COUNT_OF_SAMEALARM_IN_DUATION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1
    return-void
.end method

.method public procRepeatAlarm(IIJJLandroid/app/PendingIntent;)J
    .locals 15
    .param p1, "type"    # I
    .param p2, "count"    # I
    .param p3, "when"    # J
    .param p5, "repeatInterval"    # J
    .param p7, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 285
    iget-boolean v4, p0, Lcom/android/server/AmigoAlarmAlign;->mAlignWakeExist:Z

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/AmigoAlarmAlign;->alignWakeEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 331
    .end local p3    # "when":J
    :cond_0
    :goto_0
    return-wide p3

    .line 288
    .restart local p3    # "when":J
    :cond_1
    const/4 v4, 0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_2

    if-nez p1, :cond_3

    .line 289
    :cond_2
    const-string v4, "AmigoAlarmAlign"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "repeat alrm calc when, type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " when="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcom/android/server/AmigoAlarmAlign;->formatTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AmigoAlarmAlign;->isWakeType(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 300
    move-wide/from16 v12, p3

    .line 302
    .local v12, "retWhen":J
    new-instance v3, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;

    move/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;-><init>(IIJJLandroid/app/PendingIntent;)V

    .line 304
    .local v3, "alarm":Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;
    iget-object v2, v3, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->operation:Landroid/app/PendingIntent;

    .line 305
    .local v2, "pi":Landroid/app/PendingIntent;
    if-nez v2, :cond_4

    .line 306
    const-string v4, "AmigoAlarmAlign"

    const-string v5, "repeat alarm has no pending intent!!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    .end local v2    # "pi":Landroid/app/PendingIntent;
    .end local v3    # "alarm":Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;
    .end local v12    # "retWhen":J
    :cond_3
    const-string v4, "AmigoAlarmAlign"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "repeat alrm calc  when, type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " when="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 312
    .restart local v2    # "pi":Landroid/app/PendingIntent;
    .restart local v3    # "alarm":Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;
    .restart local v12    # "retWhen":J
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v11

    .line 314
    .local v11, "uid":I
    invoke-static {v11}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 320
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/server/AmigoAlarmAlign;->shouldAlign(Landroid/app/PendingIntent;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 321
    invoke-direct {p0, v3}, Lcom/android/server/AmigoAlarmAlign;->getAlignWakeTime(Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;)J

    move-result-wide v12

    .end local v11    # "uid":I
    :cond_5
    :goto_2
    move-wide/from16 p3, v12

    .line 331
    goto/16 :goto_0

    .line 323
    .restart local v11    # "uid":I
    :cond_6
    const-string v4, "AmigoAlarmAlign"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "permission set an accurate wake alarm, not align it!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 327
    .end local v11    # "uid":I
    :catch_0
    move-exception v4

    goto :goto_2
.end method
