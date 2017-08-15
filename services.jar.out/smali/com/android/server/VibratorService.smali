.class public Lcom/android/server/VibratorService;
.super Landroid/os/IVibratorService$Stub;
.source "VibratorService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$VibrateThread;,
        Lcom/android/server/VibratorService$SettingsObserver;,
        Lcom/android/server/VibratorService$AmigoVibrateObserver;,
        Lcom/android/server/VibratorService$Vibration;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VibratorService"


# instance fields
.field private isAmigoVibrateOn:I

.field private mAmigoVibrateObserver:Lcom/android/server/VibratorService$AmigoVibrateObserver;

.field private mAmigoVibratorCustomer:Lcom/amigovibrator/AmigoVibratorCustomer;

.field private mAmigoVibratorInfo:Lcom/amigovibrator/AmigoVibratorInfo;

.field private final mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field private final mContext:Landroid/content/Context;

.field private mCurVibUid:I

.field private mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

.field private final mH:Landroid/os/Handler;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceListenerRegistered:Z

.field private final mInputDeviceVibrators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLowPowerMode:Z

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field volatile mThread:Lcom/android/server/VibratorService$VibrateThread;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mVibrateInputDevicesSetting:Z

.field private final mVibrationRunnable:Ljava/lang/Runnable;

.field private final mVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$Vibration;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 175
    invoke-direct {p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    .line 78
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 79
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    .line 96
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 109
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/VibratorService;->isAmigoVibrateOn:I

    .line 577
    new-instance v2, Lcom/android/server/VibratorService$3;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$3;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    .line 889
    new-instance v2, Lcom/android/server/VibratorService$4;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$4;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 178
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 180
    iput-object p1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 181
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 183
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v2, "*vibrator*"

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 184
    iget-object v2, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 186
    const-string v2, "appops"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 187
    const-string v2, "batterystats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 190
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    .line 192
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 193
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/amigovibrator/AmigoVibratorCustomer;->getInstance(Landroid/content/Context;)Lcom/amigovibrator/AmigoVibratorCustomer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/VibratorService;->mAmigoVibratorCustomer:Lcom/amigovibrator/AmigoVibratorCustomer;

    .line 199
    new-instance v2, Lcom/amigovibrator/AmigoVibratorInfo;

    invoke-direct {v2}, Lcom/amigovibrator/AmigoVibratorInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mAmigoVibratorInfo:Lcom/amigovibrator/AmigoVibratorInfo;

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/VibratorService;JII)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/VibratorService;->doVibratorOn(JII)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/VibratorService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateAmigoVibrateState()V

    return-void
.end method

.method private doCancelVibrateLocked()V
    .locals 3

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-eqz v0, :cond_0

    .line 590
    iget-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    monitor-enter v1

    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    .line 592
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 593
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 596
    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 597
    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 598
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V

    .line 599
    return-void

    .line 593
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private doVibratorExists()Z
    .locals 1

    .prologue
    .line 756
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorExists()Z

    move-result v0

    return v0
.end method

.method private doVibratorOff()V
    .locals 5

    .prologue
    .line 783
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v3

    .line 785
    :try_start_0
    const-string v2, "VibratorService"

    const-string v4, "Turning vibrator off."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget v2, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v2, :cond_0

    .line 789
    :try_start_1
    iget-object v2, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    iget v4, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    invoke-interface {v2, v4}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 792
    :goto_0
    const/4 v2, -0x1

    :try_start_2
    iput v2, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 794
    :cond_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 795
    .local v1, "vibratorCount":I
    if-eqz v1, :cond_1

    .line 796
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 797
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 796
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 800
    .end local v0    # "i":I
    :cond_1
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 802
    :cond_2
    monitor-exit v3

    .line 803
    return-void

    .line 802
    .end local v1    # "vibratorCount":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 790
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private doVibratorOn(JII)V
    .locals 7
    .param p1, "millis"    # J
    .param p3, "uid"    # I
    .param p4, "usageHint"    # I

    .prologue
    .line 760
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v4

    .line 762
    :try_start_0
    const-string v3, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Turning vibrator on for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    :try_start_1
    iget-object v3, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p3, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 766
    iput p3, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 769
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 770
    .local v2, "vibratorCount":I
    if-eqz v2, :cond_0

    .line 771
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3, p4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 773
    .local v0, "attributes":Landroid/media/AudioAttributes;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 774
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    invoke-virtual {v3, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 773
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 777
    .end local v0    # "attributes":Landroid/media/AudioAttributes;
    .end local v1    # "i":I
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    .line 779
    :cond_1
    monitor-exit v4

    .line 780
    return-void

    .line 779
    .end local v2    # "vibratorCount":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 767
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getInteger(Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 540
    const/4 v2, 0x0

    .line 541
    .local v2, "value":I
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 542
    .local v1, "temp":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 544
    if-nez v1, :cond_0

    :try_start_0
    const-string v3, "0"

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 548
    :goto_1
    return v2

    .line 544
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInteger failed, cause : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 530
    const-string v1, ""

    .line 531
    .local v1, "value":Ljava/lang/String;
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 532
    .local v0, "temp":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 533
    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 536
    :cond_0
    return-object v1
.end method

.method private isAll0([J)Z
    .locals 6
    .param p1, "pattern"    # [J

    .prologue
    .line 337
    array-length v0, p1

    .line 338
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 339
    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 340
    const/4 v2, 0x0

    .line 343
    :goto_1
    return v2

    .line 338
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isEffective(Ljava/lang/String;)Z
    .locals 2
    .param p1, "effectName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 454
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    :cond_0
    :goto_0
    return v0

    .line 457
    :cond_1
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAmigoVibratorCustomer:Lcom/amigovibrator/AmigoVibratorCustomer;

    if-eqz v1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAmigoVibratorCustomer:Lcom/amigovibrator/AmigoVibratorCustomer;

    invoke-virtual {v0, p1}, Lcom/amigovibrator/AmigoVibratorCustomer;->isEffective(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 662
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 663
    .local v0, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 664
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$Vibration;

    .line 665
    .local v1, "vib":Lcom/android/server/VibratorService$Vibration;
    # getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 666
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 667
    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 677
    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :goto_0
    return-object v1

    .line 673
    :cond_1
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 674
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 675
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    goto :goto_0

    .line 677
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reportFinishVibrationLocked()V
    .locals 5

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_0

    .line 651
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 658
    :cond_0
    return-void

    .line 654
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private startNextVibrationLocked()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 604
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V

    .line 605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 610
    :goto_0
    return-void

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$Vibration;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 609
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    goto :goto_0
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 6
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 615
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    if-eqz v1, :cond_1

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUsageHint:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/4 v2, 0x3

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUsageHint:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    # getter for: Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0

    .line 623
    .local v0, "mode":I
    if-eqz v0, :cond_2

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_4

    .line 624
    :cond_2
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x3

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    # getter for: Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 637
    .end local v0    # "mode":I
    :cond_3
    :goto_1
    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1000(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 638
    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1000(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUsageHint:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/VibratorService;->doVibratorOn(JII)V

    .line 639
    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1000(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 626
    .restart local v0    # "mode":I
    :cond_4
    if-eqz v0, :cond_3

    .line 627
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 628
    :try_start_1
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Would be an error: vibrate from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 635
    .end local v0    # "mode":I
    :catch_0
    move-exception v1

    goto :goto_1

    .line 643
    :cond_5
    new-instance v1, Lcom/android/server/VibratorService$VibrateThread;

    invoke-direct {v1, p0, p1}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 644
    iget-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    goto/16 :goto_0
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .locals 2
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 681
    # getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1200(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v0

    if-eqz v0, :cond_0

    .line 684
    # getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 686
    :cond_0
    return-void
.end method

.method private updateAmigoVibrateState()V
    .locals 3

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 257
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/VibratorService;->isAmigoVibrateOn:I

    .line 259
    return-void
.end method

.method private updateInputDeviceVibrators()V
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 689
    iget-object v6, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v6

    .line 690
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 692
    iget-object v7, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 693
    const/4 v8, 0x0

    :try_start_1
    iput-boolean v8, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 695
    :try_start_2
    iget-object v8, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "vibrate_input_devices"

    const/4 v10, -0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_2

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 701
    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v4}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    .line 703
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_3

    .line 704
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-nez v4, :cond_0

    .line 705
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 706
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v5, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v4, p0, v5}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 715
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 716
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_4

    .line 717
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v4}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    .line 718
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v4, v2

    if-ge v1, v4, :cond_4

    .line 719
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    aget v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 720
    .local v0, "device":Landroid/view/InputDevice;
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    .line 721
    .local v3, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 722
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    .end local v3    # "vibrator":Landroid/os/Vibrator;
    :cond_2
    move v4, v5

    .line 695
    goto :goto_0

    .line 709
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-eqz v4, :cond_0

    .line 710
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 711
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v4, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    goto :goto_2

    .line 726
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    .line 729
    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 726
    :cond_4
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 728
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 729
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 730
    return-void

    .line 698
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private verifyIncomingUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 279
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method static native vibratorExec([B)V
.end method

.method static native vibratorExists()Z
.end method

.method static native vibratorOff()V
.end method

.method static native vibratorOn(J)V
.end method


# virtual methods
.method public cancelAmigoVibrate(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->isEffective(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAmigoVibratorCustomer:Lcom/amigovibrator/AmigoVibratorCustomer;

    invoke-virtual {v0, p1, p2}, Lcom/amigovibrator/AmigoVibratorCustomer;->stopAmigoVibrate(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 410
    :goto_0
    return-void

    .line 409
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public cancelVibrate(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 554
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    const-string v5, "cancelVibrate"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 561
    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 562
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v2

    .line 563
    .local v2, "vib":Lcom/android/server/VibratorService$Vibration;
    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-ne v2, v3, :cond_0

    .line 565
    const-string v3, "VibratorService"

    const-string v5, "Canceling vibration."

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 568
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 570
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 575
    return-void

    .line 570
    .end local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 573
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public hasVibrator()Z
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorExists()Z

    move-result v0

    return v0
.end method

.method public isAmigoVibrator(Ljava/lang/String;)Z
    .locals 1
    .param p1, "effectName"    # Ljava/lang/String;

    .prologue
    .line 450
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->isEffective(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 734
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 735
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 739
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 740
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 745
    return-void
.end method

.method public systemReady()V
    .locals 5

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    .line 205
    new-instance v0, Lcom/android/server/VibratorService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 207
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 208
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/android/server/VibratorService$1;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 216
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_input_devices"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 220
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/VibratorService$2;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 227
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 230
    new-instance v0, Lcom/android/server/VibratorService$AmigoVibrateObserver;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/VibratorService$AmigoVibrateObserver;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mAmigoVibrateObserver:Lcom/android/server/VibratorService$AmigoVibrateObserver;

    .line 231
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAmigoVibrateObserver:Lcom/android/server/VibratorService$AmigoVibrateObserver;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$AmigoVibrateObserver;->observe()V

    .line 232
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateAmigoVibrateState()V

    .line 234
    return-void
.end method

.method public vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V
    .locals 15
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;

    .prologue
    .line 292
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "Requires VIBRATE permission"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 296
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 300
    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 327
    :cond_1
    :goto_0
    return-void

    .line 308
    :cond_2
    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Vibrating for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Vibrating for opPkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v3, Lcom/android/server/VibratorService$Vibration;

    move-object v4, p0

    move-object/from16 v5, p6

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JIILjava/lang/String;)V

    .line 316
    .local v3, "vib":Lcom/android/server/VibratorService$Vibration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 318
    .local v12, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 319
    :try_start_1
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 320
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 321
    iput-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 322
    invoke-direct {p0, v3}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 323
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 325
    :catchall_1
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public vibrateAmigoEffect(Ljava/lang/String;ILjava/lang/String;JILandroid/os/IBinder;)V
    .locals 8
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "milliseconds"    # J
    .param p6, "usageHint"    # I
    .param p7, "token"    # Landroid/os/IBinder;

    .prologue
    .line 416
    iget v0, p0, Lcom/android/server/VibratorService;->isAmigoVibrateOn:I

    if-nez v0, :cond_0

    .line 417
    const-string v0, "VibratorService"

    const-string v1, "amigo vibrate is off"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->isEffective(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amigo vibrate packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; effectName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAmigoVibratorCustomer:Lcom/amigovibrator/AmigoVibratorCustomer;

    invoke-virtual {v0, p1, p7}, Lcom/amigovibrator/AmigoVibratorCustomer;->playAmigoVibrate(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    .line 426
    :cond_1
    const-string v0, "VibratorService"

    const-string v1, "playDefault"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    move-object v7, p7

    .line 427
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V

    goto :goto_0
.end method

.method public vibrateAmigoEffectBundle(Landroid/os/Bundle;ILjava/lang/String;JILandroid/os/IBinder;)V
    .locals 14
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "uid"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "milliseconds"    # J
    .param p6, "usageHint"    # I
    .param p7, "token"    # Landroid/os/IBinder;

    .prologue
    .line 470
    iget-object v3, p0, Lcom/android/server/VibratorService;->mAmigoVibratorInfo:Lcom/amigovibrator/AmigoVibratorInfo;

    const-string v3, "effect_name"

    invoke-direct {p0, p1, v3}, Lcom/android/server/VibratorService;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 472
    .local v10, "effectName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/VibratorService;->mAmigoVibratorInfo:Lcom/amigovibrator/AmigoVibratorInfo;

    const-string v3, "effect_on"

    invoke-direct {p0, p1, v3}, Lcom/android/server/VibratorService;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mAmigoVibratorInfo:Lcom/amigovibrator/AmigoVibratorInfo;

    const-string v4, "always"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 475
    .local v2, "always":Z
    iget-object v3, p0, Lcom/android/server/VibratorService;->mAmigoVibratorInfo:Lcom/amigovibrator/AmigoVibratorInfo;

    const-string v3, "effect_repeat"

    invoke-direct {p0, p1, v3}, Lcom/android/server/VibratorService;->getInteger(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v12

    .line 477
    .local v12, "repeat":I
    iget-object v3, p0, Lcom/android/server/VibratorService;->mAmigoVibratorInfo:Lcom/amigovibrator/AmigoVibratorInfo;

    const-string v3, "effect_ring_state"

    invoke-direct {p0, p1, v3}, Lcom/android/server/VibratorService;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mAmigoVibratorInfo:Lcom/amigovibrator/AmigoVibratorInfo;

    const-string v4, "ringing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 480
    .local v11, "isRinging":Z
    iget v3, p0, Lcom/android/server/VibratorService;->isAmigoVibrateOn:I

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    .line 481
    const-string v3, "VibratorService"

    const-string v4, "amigo vibrate is off"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :goto_0
    return-void

    .line 484
    :cond_0
    invoke-direct {p0, v10}, Lcom/android/server/VibratorService;->isEffective(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 485
    iget-object v3, p0, Lcom/android/server/VibratorService;->mAmigoVibratorInfo:Lcom/amigovibrator/AmigoVibratorInfo;

    invoke-virtual {v3, v10}, Lcom/amigovibrator/AmigoVibratorInfo;->setEffectName(Ljava/lang/String;)V

    .line 486
    iget-object v3, p0, Lcom/android/server/VibratorService;->mAmigoVibratorInfo:Lcom/amigovibrator/AmigoVibratorInfo;

    invoke-virtual {v3, v12}, Lcom/amigovibrator/AmigoVibratorInfo;->setEffectRepeat(I)V

    .line 487
    iget-object v3, p0, Lcom/android/server/VibratorService;->mAmigoVibratorInfo:Lcom/amigovibrator/AmigoVibratorInfo;

    invoke-virtual {v3, v11}, Lcom/amigovibrator/AmigoVibratorInfo;->setRingState(Z)V

    .line 488
    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "amigo vibrate packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; effectName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v3, p0, Lcom/android/server/VibratorService;->mAmigoVibratorCustomer:Lcom/amigovibrator/AmigoVibratorCustomer;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mAmigoVibratorInfo:Lcom/amigovibrator/AmigoVibratorInfo;

    move-object/from16 v0, p7

    invoke-virtual {v3, v4, v0}, Lcom/amigovibrator/AmigoVibratorCustomer;->playAmigoVibrate(Lcom/amigovibrator/AmigoVibratorInfo;Landroid/os/IBinder;)V

    goto :goto_0

    .line 493
    :cond_1
    const-string v3, "VibratorService"

    const-string v4, "playDefault"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p0

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 494
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V

    goto :goto_0
.end method

.method public vibrateAmigoEffectBundlePattern(Landroid/os/Bundle;ILjava/lang/String;[JIILandroid/os/IBinder;)V
    .locals 12
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "pattern"    # [J
    .param p5, "repeat"    # I
    .param p6, "usageHint"    # I
    .param p7, "token"    # Landroid/os/IBinder;

    .prologue
    .line 501
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAmigoVibratorInfo:Lcom/amigovibrator/AmigoVibratorInfo;

    const-string v1, "effect_name"

    invoke-direct {p0, p1, v1}, Lcom/android/server/VibratorService;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 503
    .local v9, "effectName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAmigoVibratorInfo:Lcom/amigovibrator/AmigoVibratorInfo;

    const-string v1, "effect_on"

    invoke-direct {p0, p1, v1}, Lcom/android/server/VibratorService;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VibratorService;->mAmigoVibratorInfo:Lcom/amigovibrator/AmigoVibratorInfo;

    const-string v2, "always"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 506
    .local v8, "always":Z
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAmigoVibratorInfo:Lcom/amigovibrator/AmigoVibratorInfo;

    const-string v1, "effect_repeat"

    invoke-direct {p0, p1, v1}, Lcom/android/server/VibratorService;->getInteger(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v10

    .line 508
    .local v10, "effectRepeat":I
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAmigoVibratorInfo:Lcom/amigovibrator/AmigoVibratorInfo;

    const-string v1, "effect_ring_state"

    invoke-direct {p0, p1, v1}, Lcom/android/server/VibratorService;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VibratorService;->mAmigoVibratorInfo:Lcom/amigovibrator/AmigoVibratorInfo;

    const-string v2, "ringing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 512
    .local v11, "isRinging":Z
    iget v1, p0, Lcom/android/server/VibratorService;->isAmigoVibrateOn:I

    if-nez v1, :cond_0

    if-nez v8, :cond_0

    .line 513
    const-string v1, "VibratorService"

    const-string v2, "amigo vibrate is off"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :goto_0
    return-void

    .line 516
    :cond_0
    invoke-direct {p0, v9}, Lcom/android/server/VibratorService;->isEffective(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAmigoVibratorInfo:Lcom/amigovibrator/AmigoVibratorInfo;

    invoke-virtual {v1, v9}, Lcom/amigovibrator/AmigoVibratorInfo;->setEffectName(Ljava/lang/String;)V

    .line 518
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAmigoVibratorInfo:Lcom/amigovibrator/AmigoVibratorInfo;

    invoke-virtual {v1, v10}, Lcom/amigovibrator/AmigoVibratorInfo;->setEffectRepeat(I)V

    .line 519
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAmigoVibratorInfo:Lcom/amigovibrator/AmigoVibratorInfo;

    invoke-virtual {v1, v11}, Lcom/amigovibrator/AmigoVibratorInfo;->setRingState(Z)V

    .line 520
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "amigo vibrate packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; effectName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAmigoVibratorCustomer:Lcom/amigovibrator/AmigoVibratorCustomer;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mAmigoVibratorInfo:Lcom/amigovibrator/AmigoVibratorInfo;

    move-object/from16 v0, p7

    invoke-virtual {v1, v2, v0}, Lcom/amigovibrator/AmigoVibratorCustomer;->playAmigoVibrate(Lcom/amigovibrator/AmigoVibratorInfo;Landroid/os/IBinder;)V

    goto :goto_0

    .line 525
    :cond_1
    const-string v1, "VibratorService"

    const-string v2, "playDefault"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 526
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/VibratorService;->vibratePattern(ILjava/lang/String;[JIILandroid/os/IBinder;)V

    goto :goto_0
.end method

.method public vibrateAmigoEffectPattern(Ljava/lang/String;ILjava/lang/String;[JIILandroid/os/IBinder;)V
    .locals 7
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "pattern"    # [J
    .param p5, "repeat"    # I
    .param p6, "usageHint"    # I
    .param p7, "token"    # Landroid/os/IBinder;

    .prologue
    .line 434
    iget v0, p0, Lcom/android/server/VibratorService;->isAmigoVibrateOn:I

    if-nez v0, :cond_0

    .line 435
    const-string v0, "VibratorService"

    const-string v1, "amigo vibrate is off"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_0
    return-void

    .line 438
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->isEffective(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amigo vibrate packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; effectName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAmigoVibratorCustomer:Lcom/amigovibrator/AmigoVibratorCustomer;

    invoke-virtual {v0, p1, p7}, Lcom/amigovibrator/AmigoVibratorCustomer;->playAmigoVibrate(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    .line 444
    :cond_1
    const-string v0, "VibratorService"

    const-string v1, "playDefault"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    .line 445
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/VibratorService;->vibratePattern(ILjava/lang/String;[JIILandroid/os/IBinder;)V

    goto :goto_0
.end method

.method public vibrateEx([BLandroid/os/IBinder;)V
    .locals 0
    .param p1, "params"    # [B
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 332
    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorExec([B)V

    .line 333
    return-void
.end method

.method public vibratePattern(ILjava/lang/String;[JIILandroid/os/IBinder;)V
    .locals 16
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;

    .prologue
    .line 349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires VIBRATE permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 353
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 355
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 358
    .local v14, "identity":J
    :try_start_0
    const-string v13, ""

    .line 359
    .local v13, "s":Ljava/lang/String;
    move-object/from16 v0, p3

    array-length v10, v0

    .line 360
    .local v10, "N":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v10, :cond_1

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, p3, v12

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 360
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 363
    :cond_1
    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Vibrating with pattern:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Vibrating for packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    array-length v3, v0

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->isAll0([J)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p3

    array-length v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v0, p4

    if-ge v0, v3, :cond_2

    if-nez p6, :cond_3

    .line 398
    :cond_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 400
    :goto_1
    return-void

    .line 376
    :cond_3
    :try_start_1
    new-instance v2, Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v3, p0

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 378
    .local v2, "vib":Lcom/android/server/VibratorService$Vibration;
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p6

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 383
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 384
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 385
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 386
    if-ltz p4, :cond_4

    .line 387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 388
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 395
    :goto_2
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 398
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 379
    :catch_0
    move-exception v11

    .line 398
    .local v11, "e":Landroid/os/RemoteException;
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 392
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 393
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    goto :goto_2

    .line 395
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 398
    .end local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    .end local v10    # "N":I
    .end local v12    # "i":I
    .end local v13    # "s":Ljava/lang/String;
    :catchall_1
    move-exception v3

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
