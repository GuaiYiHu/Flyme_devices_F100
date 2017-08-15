.class public Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;
.super Ljava/lang/Object;
.source "GNUnreadLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartRemind-GNUnreadLoader"

.field private static sInstance:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mFetureOpen:Z

.field private mIsRequest:Z

.field private mListener:Lcom/android/internal/policy/impl/unreadfeature/TriggerListener;

.field private mMissCallObserver:Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;

.field private mMissMmsObserver:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;

.field private mNeedDelayRegisterSigmotionSensor:Z

.field private mScreenOn:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSigmotionSensor:Landroid/hardware/Sensor;

.field private mVibrator:Landroid/os/Vibrator;

.field private powerManager:Landroid/os/PowerManager;

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->sInstance:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mMissCallObserver:Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;

    .line 49
    iput-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mMissMmsObserver:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;

    .line 51
    iput-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mVibrator:Landroid/os/Vibrator;

    .line 52
    iput-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mSensorManager:Landroid/hardware/SensorManager;

    .line 53
    iput-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->powerManager:Landroid/os/PowerManager;

    .line 54
    iput-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mSigmotionSensor:Landroid/hardware/Sensor;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mFetureOpen:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mIsRequest:Z

    .line 258
    new-instance v0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$2;-><init>(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    iput-object p1, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mContext:Landroid/content/Context;

    .line 66
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mScreenOn:Z

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->phoneIsInUse()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Lcom/android/internal/policy/impl/unreadfeature/TriggerListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mListener:Lcom/android/internal/policy/impl/unreadfeature/TriggerListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mSigmotionSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mNeedDelayRegisterSigmotionSensor:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mNeedDelayRegisterSigmotionSensor:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->powerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mMissCallObserver:Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->resolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mMissMmsObserver:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mIsRequest:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mIsRequest:Z

    return p1
.end method

.method private static getCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;

    .prologue
    .line 206
    const/4 v6, 0x0

    .line 207
    .local v6, "count":I
    const/4 v7, 0x0

    .line 208
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 210
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 211
    if-eqz v7, :cond_0

    .line 212
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 217
    :cond_0
    if-eqz v7, :cond_1

    .line 218
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 221
    :cond_1
    :goto_0
    return v6

    .line 214
    :catch_0
    move-exception v8

    .line 215
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    if-eqz v7, :cond_1

    .line 218
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 217
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_2

    .line 218
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    sget-object v0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->sInstance:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->sInstance:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    .line 74
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->sInstance:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    return-object v0
.end method

.method public static getMissCallCount(Landroid/content/Context;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    const/4 v6, 0x0

    .line 169
    .local v6, "count":I
    const/4 v7, 0x0

    .line 171
    .local v7, "csr":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "type=3 and new<>0"

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 173
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 175
    .local v9, "type":I
    const/4 v0, 0x3

    if-ne v9, v0, :cond_0

    .line 176
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 182
    .end local v9    # "type":I
    :cond_0
    if-eqz v7, :cond_1

    .line 183
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_1
    :goto_0
    return v6

    .line 179
    :catch_0
    move-exception v8

    .line 180
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    if-eqz v7, :cond_1

    .line 183
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 182
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 183
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getMissMmsCount(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    const-string v4, "content://sms"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 193
    .local v2, "smsContentURI":Landroid/net/Uri;
    const-string v4, "content://mms"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 194
    .local v1, "mmsContentURI":Landroid/net/Uri;
    const-string v4, "content://wappush"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 196
    .local v3, "wapPushContentURI":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 198
    .local v0, "count":I
    const-string v4, "read=0"

    invoke-static {p0, v2, v4}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->getCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 199
    const-string v4, "read=0"

    invoke-static {p0, v1, v4}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->getCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 200
    const-string v4, "(read=0 OR seen=0)"

    invoke-static {p0, v3, v4}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->getCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 202
    return v0
.end method

.method private phoneIsInUse()Z
    .locals 6

    .prologue
    .line 299
    const/4 v2, 0x0

    .line 301
    .local v2, "phoneInUse":Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 302
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 303
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 308
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    const-string v3, "SmartRemind-GNUnreadLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phoneIsInUse: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return v2

    .line 303
    .restart local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 304
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SmartRemind-GNUnreadLoader"

    const-string v4, "phone.isOffhook() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public ProcessSmartRemindValue(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 226
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "input must 0 or 1"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    const-string v0, "SmartRemind-GNUnreadLoader"

    const-string v1, "cancelTriggerSensor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mListener:Lcom/android/internal/policy/impl/unreadfeature/TriggerListener;

    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mSigmotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 233
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mNeedDelayRegisterSigmotionSensor:Z

    .line 236
    :cond_2
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mScreenOn:Z

    if-eqz v0, :cond_3

    .line 238
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mNeedDelayRegisterSigmotionSensor:Z

    .line 239
    const-string v0, "SmartRemind-GNUnreadLoader"

    const-string v1, "Delay Register SigmotionSensor(screen on)!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 241
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_5

    .line 242
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mIsRequest:Z

    if-eqz v0, :cond_4

    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mListener:Lcom/android/internal/policy/impl/unreadfeature/TriggerListener;

    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mSigmotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 244
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mIsRequest:Z

    .line 246
    :cond_4
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mIsRequest:Z

    .line 247
    const-string v0, "SmartRemind-GNUnreadLoader"

    const-string v1, "requestTriggerSensor[screen off , phone idle]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mListener:Lcom/android/internal/policy/impl/unreadfeature/TriggerListener;

    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mSigmotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 249
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mNeedDelayRegisterSigmotionSensor:Z

    goto :goto_0

    .line 251
    :cond_5
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mNeedDelayRegisterSigmotionSensor:Z

    .line 252
    const-string v0, "SmartRemind-GNUnreadLoader"

    const-string v1, "Delay Register SigmotionSensor(phone incall)!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerAndInitialize()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 78
    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mContext:Landroid/content/Context;

    const-string v6, "vibrator"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mVibrator:Landroid/os/Vibrator;

    .line 79
    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mContext:Landroid/content/Context;

    const-string v6, "sensor"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mSensorManager:Landroid/hardware/SensorManager;

    .line 80
    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v3, :cond_0

    .line 81
    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v6, 0x19

    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mSigmotionSensor:Landroid/hardware/Sensor;

    .line 84
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mVibrator:Landroid/os/Vibrator;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mSigmotionSensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mFetureOpen:Z

    if-eqz v3, :cond_1

    .line 86
    const-string v3, "SmartRemind-GNUnreadLoader"

    const-string v6, "Support Smart Remind Feature"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->resolver:Landroid/content/ContentResolver;

    .line 93
    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->powerManager:Landroid/os/PowerManager;

    .line 95
    new-instance v3, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$1;

    iget-object v6, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mVibrator:Landroid/os/Vibrator;

    invoke-direct {v3, p0, v6, v7}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$1;-><init>(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;Landroid/content/Context;Landroid/os/Vibrator;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mListener:Lcom/android/internal/policy/impl/unreadfeature/TriggerListener;

    .line 110
    new-instance v2, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;-><init>(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;Landroid/content/Context;)V

    .line 111
    .local v2, "smartRemindObserver":Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;
    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->resolver:Landroid/content/ContentResolver;

    const-string v6, "ssg_switch"

    invoke-static {v6}, Lamigo/provider/AmigoSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 112
    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->resolver:Landroid/content/ContentResolver;

    const-string v6, "ssg_vibration_alert"

    invoke-static {v6}, Lamigo/provider/AmigoSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 113
    new-instance v3, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;

    iget-object v6, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->sInstance:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    invoke-direct {v3, v6, v7}, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mMissCallObserver:Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;

    .line 114
    new-instance v3, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;

    iget-object v6, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->sInstance:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    invoke-direct {v3, v6, v7}, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mMissMmsObserver:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;

    .line 116
    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "ssg_switch"

    invoke-static {v3, v6, v5}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_2

    move v1, v4

    .line 118
    .local v1, "masterSwitch":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "ssg_vibration_alert"

    invoke-static {v3, v6, v5}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v0, v4

    .line 120
    .local v0, "isSmartRemindEnable":Z
    :goto_1
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 121
    const-string v3, "SmartRemind-GNUnreadLoader"

    const-string v5, "Smart Remind feature enabled!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->powerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mScreenOn:Z

    .line 123
    const-string v3, "SmartRemind-GNUnreadLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current Screen On: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mScreenOn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->registerListener()V

    .line 125
    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->resolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mMissCallObserver:Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 126
    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->resolver:Landroid/content/ContentResolver;

    const-string v5, "content://mms-sms/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mMissMmsObserver:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 131
    .end local v0    # "isSmartRemindEnable":Z
    .end local v1    # "masterSwitch":Z
    .end local v2    # "smartRemindObserver":Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;
    :goto_2
    return-void

    .line 88
    :cond_1
    const-string v3, "SmartRemind-GNUnreadLoader"

    const-string v4, "Do not Support Smart Remind Feature"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .restart local v2    # "smartRemindObserver":Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;
    :cond_2
    move v1, v5

    .line 116
    goto :goto_0

    .restart local v1    # "masterSwitch":Z
    :cond_3
    move v0, v5

    .line 118
    goto :goto_1

    .line 128
    .restart local v0    # "isSmartRemindEnable":Z
    :cond_4
    const-string v3, "SmartRemind-GNUnreadLoader"

    const-string v4, "Smart Remind feature disabled!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public registerListener()V
    .locals 3

    .prologue
    .line 288
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 289
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 292
    return-void
.end method

.method public unregisterListener()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 296
    return-void
.end method
