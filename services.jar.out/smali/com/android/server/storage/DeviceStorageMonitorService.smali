.class public Lcom/android/server/storage/DeviceStorageMonitorService;
.super Lcom/android/server/SystemService;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;,
        Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;
    }
.end annotation


# static fields
.field private static final CACHE_PATH:Ljava/io/File;

.field private static final CRITICAL_LOW_THRESHOLD_BYTES:I = 0x400000

.field private static final DATA_PATH:Ljava/io/File;

.field static final DEBUG:Z = false

.field private static final DEFAULT_CHECK_INTERVAL:J = 0x7530L

.field private static final DEFAULT_DISK_FREE_CHANGE_REPORTING_THRESHOLD:J = 0x200000L

.field private static final DEFAULT_FREE_STORAGE_LOG_INTERVAL_IN_MINUTES:I = 0x2d0

.field private static final DEFAULT_THRESHOLD_MAX_BYTES:I = 0x3200000

.field private static final DEFAULT_THRESHOLD_PERCENTAGE:I = 0xa

.field static final DEVICE_MEMORY_CRITICAL_LOW:I = 0x2

.field static final DEVICE_MEMORY_WHAT:I = 0x1

.field private static final EMAIL_CHECK_SIZE:I = 0x3200000

.field private static final EXCEPTION_LOW_THRESHOLD_BYTES:I = 0xa00000

.field private static final FULL_THRESHOLD_BYTES:I = 0x500000

.field private static final GN_ACTION_MEMORY_LOW:Ljava/lang/String; = "gn.action.memory_low"

.field private static final GN_ACTION_MEMORY_LOW_IGNORE:Ljava/lang/String; = "gn.action.memory_low_ignore"

.field private static final GN_CRITICAL_LOWMEMORY_THRESHOLD:I = 0x1f400000

.field private static final GN_LOWMEMRORY_THRESHOLD:I = 0x40000000

.field private static final GN_LOW_MEMORY_NOTIFICATION_HEADSUP_ID:I = 0x77

.field private static final GN_LOW_MEMORY_SUPPORT:Z = true

.field private static final GN_MEMORY_LOW_HANDLER:I = 0x6e

.field private static final IPO_POWER_ON:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final LOW_MEMORY_NOTIFICATION_ID:I = 0x1

.field private static final MONITOR_INTERVAL:I = 0x1

.field private static final SDCARD_ENABLE:I = 0x2

.field private static final SDCARD_REMOVED:I = 0x1

.field private static final SDCARD_UNSUPPORT:I = 0x0

.field static final SERVICE:Ljava/lang/String; = "devicestoragemonitor"

.field private static final SYSTEM_PATH:Ljava/io/File;

.field static final TAG:Ljava/lang/String; = "DeviceStorageMonitorService"

.field private static final _FALSE:I = 0x0

.field private static final _TRUE:I = 0x1

.field static final localLOGV:Z

.field private static mBootupCompleted:Z

.field private static mHasHeadsUpShown:Z


# instance fields
.field lse:Lcom/mediatek/common/lowstorage/ILowStorageExt;

.field private mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

.field private final mCacheFileStats:Landroid/os/StatFs;

.field private mCacheSize:J

.field private mCheckAppSize:Z

.field private mClearCacheObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

.field mClearSucceeded:Z

.field mClearingCache:Z

.field mClickListener:Landroid/view/View$OnClickListener;

.field private mCodeSize:J

.field private mConfigChanged:Z

.field private final mDataFileStats:Landroid/os/StatFs;

.field private mDataSize:J

.field private mDialog:Lamigo/app/AmigoAlertDialog;

.field private mFreeMem:J

.field private mFreeMemAfterLastCacheClear:J

.field private mGetSize:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIPOBootup:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mIsBootImageOnDisk:Z

.field private mLastCriticalLowLevel:I

.field private mLastReportedFreeMem:J

.field private mLastReportedFreeMemTime:J

.field private final mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

.field mLowMemFlag:Z

.field private mLowMemoryDialog:Lamigo/app/AmigoAlertDialog;

.field private mMemCacheStartTrimThreshold:J

.field private mMemCacheTrimToThreshold:J

.field private mMemFullFlag:Z

.field private mMemFullThreshold:J

.field mMemLowThreshold:J

.field mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mQueryDataFs:Landroid/os/StatFs;

.field private final mRemoteService:Landroid/os/IBinder;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mSdcardStatus:I

.field final mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

.field private final mStorageFullIntent:Landroid/content/Intent;

.field private final mStorageLowIntent:Landroid/content/Intent;

.field private final mStorageNotFullIntent:Landroid/content/Intent;

.field private final mStorageOkIntent:Landroid/content/Intent;

.field private mStrings:[Ljava/lang/String;

.field private final mSystemFileStats:Landroid/os/StatFs;

.field private mThreadStartTime:J

.field private final mTotalMemory:J

.field private mTotalSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    .line 151
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    .line 152
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    .line 912
    sput-boolean v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHasHeadsUpShown:Z

    .line 917
    sput-boolean v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mBootupCompleted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x4000000

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 587
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 141
    iput-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    .line 142
    iput-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    .line 154
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mThreadStartTime:J

    .line 155
    iput-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearSucceeded:Z

    .line 181
    iput-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->lse:Lcom/mediatek/common/lowstorage/ILowStorageExt;

    .line 186
    iput-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mConfigChanged:Z

    .line 190
    iput-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Lamigo/app/AmigoAlertDialog;

    .line 192
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastCriticalLowLevel:I

    .line 193
    iput-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIPOBootup:Z

    .line 194
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCheckAppSize:Z

    .line 196
    iput-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheSize:J

    .line 197
    iput-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCodeSize:J

    .line 198
    iput-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataSize:J

    .line 199
    iput-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalSize:J

    .line 200
    iput-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStrings:[Ljava/lang/String;

    .line 201
    iput-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mGetSize:Z

    .line 213
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$1;

    invoke-direct {v1, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    .line 541
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    invoke-direct {v1, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$2;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    .line 654
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$3;

    invoke-direct {v1, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$3;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 691
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$4;

    invoke-direct {v1, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$4;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/IBinder;

    .line 870
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$5;

    invoke-direct {v1, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$5;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 906
    iput-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemoryDialog:Lamigo/app/AmigoAlertDialog;

    .line 916
    iput v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSdcardStatus:I

    .line 1021
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$6;

    invoke-direct {v1, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$6;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClickListener:Landroid/view/View$OnClickListener;

    .line 1050
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$7;

    invoke-direct {v1, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$7;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 588
    iput-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    .line 589
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    .line 590
    invoke-static {}, Lcom/android/server/storage/DeviceStorageMonitorService;->isBootImageOnDisk()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIsBootImageOnDisk:Z

    .line 592
    new-instance v1, Landroid/os/StatFs;

    sget-object v2, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    .line 593
    new-instance v1, Landroid/os/StatFs;

    sget-object v2, Lcom/android/server/storage/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    .line 594
    new-instance v1, Landroid/os/StatFs;

    sget-object v2, Lcom/android/server/storage/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    .line 595
    new-instance v1, Landroid/os/StatFs;

    sget-object v2, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mQueryDataFs:Landroid/os/StatFs;

    .line 597
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v2, v1

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalMemory:J

    .line 599
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    .line 600
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 601
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    .line 602
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 603
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    .line 604
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 605
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    .line 606
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 608
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 609
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 610
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 612
    const-string v1, "gn.action.memory_low"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 613
    const-string v1, "gn.action.memory_low_ignore"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 615
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 616
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/storage/DeviceStorageMonitorService;)Lamigo/app/AmigoAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Lamigo/app/AmigoAlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/storage/DeviceStorageMonitorService;Lamigo/app/AmigoAlertDialog;)Lamigo/app/AmigoAlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p1, "x1"    # Lamigo/app/AmigoAlertDialog;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Lamigo/app/AmigoAlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/storage/DeviceStorageMonitorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIPOBootup:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mGetSize:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIPOBootup:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/storage/DeviceStorageMonitorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIsBootImageOnDisk:Z

    return v0
.end method

.method static synthetic access$1200()Ljava/io/File;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/os/StatFs;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mQueryDataFs:Landroid/os/StatFs;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/storage/DeviceStorageMonitorService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->cancelHeadsUp()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->goToSystemMgr()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->mvFileToSdcard()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->delFileInFileMgr()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->showMemoryDetails()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/storage/DeviceStorageMonitorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mConfigChanged:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/storage/DeviceStorageMonitorService;)Lamigo/app/AmigoAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemoryDialog:Lamigo/app/AmigoAlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/storage/DeviceStorageMonitorService;Lamigo/app/AmigoAlertDialog;)Lamigo/app/AmigoAlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p1, "x1"    # Lamigo/app/AmigoAlertDialog;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemoryDialog:Lamigo/app/AmigoAlertDialog;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mConfigChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->postShowMemoryLowDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/storage/DeviceStorageMonitorService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalSize:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/server/storage/DeviceStorageMonitorService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p1, "x1"    # J

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalSize:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->showMemeoryLowDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/storage/DeviceStorageMonitorService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheSize:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/server/storage/DeviceStorageMonitorService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p1, "x1"    # J

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheSize:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/server/storage/DeviceStorageMonitorService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCodeSize:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/server/storage/DeviceStorageMonitorService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p1, "x1"    # J

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCodeSize:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/server/storage/DeviceStorageMonitorService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataSize:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/server/storage/DeviceStorageMonitorService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p1, "x1"    # J

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataSize:J

    return-wide p1
.end method

.method private cancelFullNotification()V
    .locals 3

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 853
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 854
    return-void
.end method

.method private cancelHeadsUp()V
    .locals 5

    .prologue
    .line 966
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 967
    .local v0, "context":Landroid/content/Context;
    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 968
    .local v1, "nm":Landroid/app/NotificationManager;
    const/4 v2, 0x0

    const/16 v3, 0x77

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 969
    return-void
.end method

.method private cancelNotification()V
    .locals 5

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 829
    .local v0, "context":Landroid/content/Context;
    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 833
    .local v1, "mNotificationMgr":Landroid/app/NotificationManager;
    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 835
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 836
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 837
    return-void
.end method

.method private clearCache()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 365
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

    if-nez v1, :cond_0

    .line 367
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;Lcom/android/server/storage/DeviceStorageMonitorService$1;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

    .line 369
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearingCache:Z

    .line 372
    :try_start_0
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get handle for PackageManger Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iput-boolean v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearingCache:Z

    .line 377
    iput-boolean v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearSucceeded:Z

    goto :goto_0
.end method

.method private delFileInFileMgr()V
    .locals 4

    .prologue
    .line 1089
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "GN--delFileInFileMgr"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1092
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.gionee.filemanager"

    const-string v3, "com.gionee.filemanager.FileExplorerTabActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1094
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1098
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1095
    :catch_0
    move-exception v0

    .line 1096
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getMemThreshold()J
    .locals 8

    .prologue
    .line 568
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "sys_storage_threshold_percentage"

    const/16 v6, 0xa

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    int-to-long v2, v4

    .line 573
    .local v2, "value":J
    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalMemory:J

    mul-long/2addr v4, v2

    const-wide/16 v6, 0x64

    div-long v2, v4, v6

    .line 574
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "sys_storage_threshold_max_bytes"

    const/high16 v6, 0x3200000

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    int-to-long v0, v4

    .line 579
    .local v0, "maxValue":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .end local v2    # "value":J
    :goto_0
    return-wide v2

    .restart local v2    # "value":J
    :cond_0
    move-wide v2, v0

    goto :goto_0
.end method

.method private goToSystemMgr()V
    .locals 4

    .prologue
    .line 1064
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "GN--goToSystemMgr"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1067
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.gionee.rubbishcleaner"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1068
    const-string v2, "com.gionee.rubbishcleaner.category"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1070
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1074
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static isBootImageOnDisk()Z
    .locals 5

    .prologue
    .line 619
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 620
    .local v2, "instructionSet":Ljava/lang/String;
    invoke-static {v2}, Ldalvik/system/VMRuntime;->isBootClassPathOnDisk(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 621
    const/4 v4, 0x0

    .line 624
    .end local v2    # "instructionSet":Ljava/lang/String;
    :goto_1
    return v4

    .line 619
    .restart local v2    # "instructionSet":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 624
    .end local v2    # "instructionSet":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private isSdcardInsert()Z
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 1127
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1128
    .local v1, "context":Landroid/content/Context;
    const-string v10, "storage"

    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    .line 1129
    .local v6, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v8

    .line 1130
    .local v8, "volumes":[Landroid/os/storage/StorageVolume;
    const v10, 0x10405a6

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1131
    .local v5, "sdcardTitle":Ljava/lang/String;
    move-object v0, v8

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v7, v0, v2

    .line 1132
    .local v7, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v7, v1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1133
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1134
    const-string v10, "DeviceStorageMonitorService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "volume.getPath():"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " getVolumeState:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mounted"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1136
    const-string v9, "DeviceStorageMonitorService"

    const-string v10, "SD card is inserted"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const/4 v9, 0x1

    .line 1143
    .end local v4    # "path":Ljava/lang/String;
    .end local v7    # "volume":Landroid/os/storage/StorageVolume;
    :cond_0
    return v9

    .line 1131
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v7    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isSdcardSupport()Z
    .locals 11

    .prologue
    .line 1112
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1113
    .local v1, "context":Landroid/content/Context;
    const-string v9, "storage"

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    .line 1114
    .local v6, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v8

    .line 1115
    .local v8, "volumes":[Landroid/os/storage/StorageVolume;
    const v9, 0x10405a6

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1117
    .local v5, "sdcardTitle":Ljava/lang/String;
    move-object v0, v8

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v7, v0, v2

    .line 1118
    .local v7, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v7, v1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1119
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1120
    const-string v9, "DeviceStorageMonitorService"

    const-string v10, "Device support SDcard"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const/4 v9, 0x1

    .line 1124
    .end local v4    # "path":Ljava/lang/String;
    .end local v7    # "volume":Landroid/os/storage/StorageVolume;
    :goto_1
    return v9

    .line 1117
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v7    # "volume":Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1124
    .end local v4    # "path":Ljava/lang/String;
    .end local v7    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private mvFileToSdcard()V
    .locals 4

    .prologue
    .line 1077
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "GN--mvFileToSdcard"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1080
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.transferdata.TransferDataActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1081
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1082
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private postShowMemoryLowDialog()V
    .locals 2

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 921
    return-void
.end method

.method private restatDataDir()V
    .locals 22

    .prologue
    .line 314
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    sget-object v18, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 321
    :goto_0
    const-string v7, "debug.freemem"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 322
    .local v6, "debugFreeMem":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 323
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    .line 326
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v18, "sys_free_storage_log_interval"

    const-wide/16 v20, 0x2d0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v7, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v18

    const-wide/16 v20, 0x3c

    mul-long v18, v18, v20

    const-wide/16 v20, 0x3e8

    mul-long v10, v18, v20

    .line 330
    .local v10, "freeMemLogInterval":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 331
    .local v4, "currTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v7, v18, v20

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    move-wide/from16 v18, v0

    sub-long v18, v4, v18

    cmp-long v7, v18, v10

    if-ltz v7, :cond_2

    .line 333
    :cond_1
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    .line 334
    const-wide/16 v14, -0x1

    .local v14, "mFreeSystem":J
    const-wide/16 v12, -0x1

    .line 336
    .local v12, "mFreeCache":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    sget-object v18, Lcom/android/server/storage/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v20, v0

    mul-long v14, v18, v20

    .line 343
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    sget-object v18, Lcom/android/server/storage/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v20, v0

    mul-long v12, v18, v20

    .line 349
    :goto_2
    const/16 v7, 0xaba

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 353
    .end local v12    # "mFreeCache":J
    .end local v14    # "mFreeSystem":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v18, "disk_free_change_reporting_threshold"

    const-wide/32 v20, 0x200000

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v7, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v16

    .line 357
    .local v16, "threshold":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    move-wide/from16 v20, v0

    sub-long v8, v18, v20

    .line 358
    .local v8, "delta":J
    cmp-long v7, v8, v16

    if-gtz v7, :cond_3

    move-wide/from16 v0, v16

    neg-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v7, v8, v18

    if-gez v7, :cond_4

    .line 359
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    .line 360
    const/16 v7, 0xab8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v7, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 362
    :cond_4
    return-void

    .line 346
    .end local v8    # "delta":J
    .end local v16    # "threshold":J
    .restart local v12    # "mFreeCache":J
    .restart local v14    # "mFreeSystem":J
    :catch_0
    move-exception v7

    goto :goto_2

    .line 339
    :catch_1
    move-exception v7

    goto/16 :goto_1

    .line 317
    .end local v4    # "currTime":J
    .end local v6    # "debugFreeMem":Ljava/lang/String;
    .end local v10    # "freeMemLogInterval":J
    .end local v12    # "mFreeCache":J
    .end local v14    # "mFreeSystem":J
    :catch_2
    move-exception v7

    goto/16 :goto_0
.end method

.method private sendFullNotification()V
    .locals 3

    .prologue
    .line 844
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 845
    return-void
.end method

.method private sendNotification()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 772
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 775
    .local v0, "context":Landroid/content/Context;
    const/16 v7, 0xab9

    iget-wide v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v7, v8, v9}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 780
    new-instance v3, Landroid/content/Intent;

    const-string v7, "gn.action.memory_low"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 783
    .local v3, "lowMemIntent":Landroid/content/Intent;
    const-string v7, "memory"

    iget-wide v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v3, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 784
    const/high16 v7, 0x10000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 785
    const-string v7, "notification"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 798
    .local v4, "mNotificationMgr":Landroid/app/NotificationManager;
    const v7, 0x707002d

    invoke-virtual {v0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 799
    .local v6, "title":Ljava/lang/CharSequence;
    const v7, 0x707002e

    invoke-virtual {v0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 801
    .local v1, "details":Ljava/lang/CharSequence;
    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v0, v10, v3, v10, v7}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 804
    .local v2, "intent":Landroid/app/PendingIntent;
    new-instance v7, Landroid/app/Notification$Builder;

    invoke-direct {v7, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x1080649

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1060059

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v8}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v8, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v7

    const-string v8, "sys"

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 817
    .local v5, "notification":Landroid/app/Notification;
    iget v7, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v5, Landroid/app/Notification;->flags:I

    .line 818
    const/4 v7, 0x0

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v7, v11, v5, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 820
    iget-object v7, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 821
    return-void
.end method

.method private showHeadsUp()V
    .locals 15

    .prologue
    .line 924
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 926
    .local v1, "context":Landroid/content/Context;
    const v10, 0x707002b

    invoke-virtual {v1, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 927
    .local v9, "title":Ljava/lang/CharSequence;
    const v10, 0x707002c

    invoke-virtual {v1, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 928
    .local v2, "details":Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 929
    .local v0, "builder":Landroid/app/Notification$Builder;
    const v10, 0x1080649

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1060059

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    new-instance v11, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v11}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v11, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 935
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 936
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 938
    new-instance v4, Landroid/content/Intent;

    const-string v10, "gn.action.memory_low_ignore"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 939
    .local v4, "ignoreIntent":Landroid/content/Intent;
    const/high16 v10, 0x10000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 940
    const/4 v10, 0x0

    const v11, 0x7070029

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v1, v12, v4, v13, v14}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v0, v10, v11, v12}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 944
    new-instance v3, Landroid/content/Intent;

    const-string v10, "gn.action.memory_low"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 945
    .local v3, "doNowIntent":Landroid/content/Intent;
    const/high16 v10, 0x10000000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 947
    const/4 v10, 0x0

    const v11, 0x707002a

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v1, v12, v3, v13, v14}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v0, v10, v11, v12}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 951
    new-instance v6, Landroid/content/Intent;

    const-string v10, "gn.action.memory_low"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 952
    .local v6, "lowMemIntent":Landroid/content/Intent;
    const-string v10, "memory"

    iget-wide v12, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v6, v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 953
    const/high16 v10, 0x10000000

    invoke-virtual {v6, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 954
    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v1, v10, v6, v11, v12}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 956
    .local v5, "intent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 958
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 959
    .local v8, "notification":Landroid/app/Notification;
    iget v10, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x20

    iput v10, v8, Landroid/app/Notification;->flags:I

    .line 960
    const-string v10, "notification"

    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 962
    .local v7, "nm":Landroid/app/NotificationManager;
    const/4 v10, 0x0

    const/16 v11, 0x77

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v10, v11, v8, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 963
    return-void
.end method

.method private showMemeoryLowDialog()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 972
    iget-object v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemoryDialog:Lamigo/app/AmigoAlertDialog;

    if-nez v8, :cond_0

    .line 973
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 974
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lamigo/app/AmigoAlertDialog$Builder;

    invoke-direct {v0, v1}, Lamigo/app/AmigoAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 976
    .local v0, "builder":Lamigo/app/AmigoAlertDialog$Builder;
    const v8, 0x7070023

    invoke-virtual {v0, v8}, Lamigo/app/AmigoAlertDialog$Builder;->setTitle(I)Lamigo/app/AmigoAlertDialog$Builder;

    .line 978
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 980
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7030003

    invoke-virtual {v4, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 983
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v0, v7}, Lamigo/app/AmigoAlertDialog$Builder;->setView(Landroid/view/View;)Lamigo/app/AmigoAlertDialog$Builder;

    .line 984
    const v8, 0x70a001c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lamigo/widget/AmigoTextView;

    .line 986
    .local v3, "goSysMgrView":Lamigo/widget/AmigoTextView;
    iget-object v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v8}, Lamigo/widget/AmigoTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 988
    const v8, 0x70a001d    # 1.0381999E-34f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lamigo/widget/AmigoTextView;

    .line 990
    .local v5, "mvToSdcardView":Lamigo/widget/AmigoTextView;
    iget-object v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v8}, Lamigo/widget/AmigoTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 991
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->isSdcardSupport()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 992
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->isSdcardInsert()Z

    move-result v8

    if-nez v8, :cond_2

    .line 993
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lamigo/widget/AmigoTextView;->setEnabled(Z)V

    .line 994
    const v8, 0x7070025

    invoke-virtual {v5, v8}, Lamigo/widget/AmigoTextView;->setText(I)V

    .line 1002
    :goto_0
    const v8, 0x70a001e    # 1.0382E-34f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lamigo/widget/AmigoTextView;

    .line 1004
    .local v2, "delInFileMrgView":Lamigo/widget/AmigoTextView;
    iget-object v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v8}, Lamigo/widget/AmigoTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1006
    const v8, 0x70a001f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lamigo/widget/AmigoTextView;

    .line 1008
    .local v6, "showDetailView":Lamigo/widget/AmigoTextView;
    iget-object v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Lamigo/widget/AmigoTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1009
    const/high16 v8, 0x1040000

    invoke-virtual {v0, v8, v11}, Lamigo/app/AmigoAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;

    .line 1010
    invoke-virtual {v0}, Lamigo/app/AmigoAlertDialog$Builder;->create()Lamigo/app/AmigoAlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemoryDialog:Lamigo/app/AmigoAlertDialog;

    .line 1011
    iget-object v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemoryDialog:Lamigo/app/AmigoAlertDialog;

    iget-object v9, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v8, v9}, Lamigo/app/AmigoAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1012
    iget-object v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemoryDialog:Lamigo/app/AmigoAlertDialog;

    invoke-virtual {v8, v10}, Lamigo/app/AmigoAlertDialog;->setCancelable(Z)V

    .line 1013
    iget-object v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemoryDialog:Lamigo/app/AmigoAlertDialog;

    invoke-virtual {v8}, Lamigo/app/AmigoAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d3

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 1016
    .end local v0    # "builder":Lamigo/app/AmigoAlertDialog$Builder;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "delInFileMrgView":Lamigo/widget/AmigoTextView;
    .end local v3    # "goSysMgrView":Lamigo/widget/AmigoTextView;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "mvToSdcardView":Lamigo/widget/AmigoTextView;
    .end local v6    # "showDetailView":Lamigo/widget/AmigoTextView;
    .end local v7    # "view":Landroid/view/View;
    :cond_0
    iget-object v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemoryDialog:Lamigo/app/AmigoAlertDialog;

    invoke-virtual {v8}, Lamigo/app/AmigoAlertDialog;->isShowing()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1017
    iget-object v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemoryDialog:Lamigo/app/AmigoAlertDialog;

    invoke-virtual {v8}, Lamigo/app/AmigoAlertDialog;->show()V

    .line 1019
    :cond_1
    return-void

    .line 996
    .restart local v0    # "builder":Lamigo/app/AmigoAlertDialog$Builder;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "goSysMgrView":Lamigo/widget/AmigoTextView;
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "mvToSdcardView":Lamigo/widget/AmigoTextView;
    .restart local v7    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {v5, v10}, Lamigo/widget/AmigoTextView;->setEnabled(Z)V

    goto :goto_0

    .line 999
    :cond_3
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Lamigo/widget/AmigoTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showMemoryDetails()V
    .locals 4

    .prologue
    .line 1101
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "GN--showMemoryDetails"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.INTERNAL_STORAGE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1105
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1106
    :catch_0
    move-exception v0

    .line 1107
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method checkMemory(Z)V
    .locals 10
    .param p1, "checkCache"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 386
    iget-boolean v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearingCache:Z

    if-eqz v3, :cond_1

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mThreadStartTime:J

    sub-long v0, v4, v6

    .line 390
    .local v0, "diffTime":J
    const-wide/32 v4, 0x927c0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 391
    const-string v3, "DeviceStorageMonitorService"

    const-string v4, "Thread that clears cache file seems to run for ever"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .end local v0    # "diffTime":J
    :cond_0
    :goto_0
    const-wide/16 v4, 0x7530

    invoke-virtual {p0, v9, v4, v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    .line 538
    return-void

    .line 394
    :cond_1
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->restatDataDir()V

    .line 399
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->lse:Lcom/mediatek/common/lowstorage/ILowStorageExt;

    if-nez v3, :cond_2

    .line 400
    const-string v3, "com.mediatek.common.lowstorage.ILowStorageExt"

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/common/lowstorage/ILowStorageExt;

    iput-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->lse:Lcom/mediatek/common/lowstorage/ILowStorageExt;

    .line 402
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->lse:Lcom/mediatek/common/lowstorage/ILowStorageExt;

    if-nez v3, :cond_6

    .line 403
    const-string v3, "DeviceStorageMonitorService"

    const-string v4, "Failed to create LowStorageExt instance."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->lse:Lcom/mediatek/common/lowstorage/ILowStorageExt;

    if-eqz v3, :cond_3

    .line 410
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->lse:Lcom/mediatek/common/lowstorage/ILowStorageExt;

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    invoke-interface {v3, v4, v5}, Lcom/mediatek/common/lowstorage/ILowStorageExt;->checkStorage(J)V

    .line 416
    :cond_3
    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    const-wide/32 v6, 0x40000000

    cmp-long v3, v4, v6

    if-gez v3, :cond_a

    .line 419
    iget-boolean v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCheckAppSize:Z

    if-eqz v3, :cond_4

    .line 420
    iput-boolean v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCheckAppSize:Z

    .line 421
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 422
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "com.android.email"

    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 424
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    if-eqz p1, :cond_7

    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mThreadStartTime:J

    .line 441
    iput-boolean v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearSucceeded:Z

    .line 442
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->clearCache()V

    .line 504
    :cond_5
    :goto_2
    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullThreshold:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_c

    .line 505
    const-string v3, "DeviceStorageMonitorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Running on storage full,freeStorage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-boolean v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-nez v3, :cond_0

    .line 507
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->sendFullNotification()V

    .line 508
    iput-boolean v9, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    goto/16 :goto_0

    .line 406
    :cond_6
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->lse:Lcom/mediatek/common/lowstorage/ILowStorageExt;

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalMemory:J

    invoke-interface {v3, v4, v6, v7}, Lcom/mediatek/common/lowstorage/ILowStorageExt;->init(Landroid/content/Context;J)V

    goto :goto_1

    .line 449
    :cond_7
    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    iput-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    .line 453
    sget-boolean v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mBootupCompleted:Z

    if-eqz v3, :cond_9

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalSize:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_9

    .line 454
    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    const-wide/32 v6, 0x1f400000

    cmp-long v3, v4, v6

    if-gez v3, :cond_8

    .line 455
    iget-boolean v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-nez v3, :cond_5

    .line 458
    const-string v3, "DeviceStorageMonitorService"

    const-string v4, "Running low on memory. Sending notification"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->cancelHeadsUp()V

    .line 460
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->sendNotification()V

    .line 461
    iput-boolean v9, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    .line 462
    sput-boolean v8, Lcom/android/server/storage/DeviceStorageMonitorService;->mHasHeadsUpShown:Z

    .line 463
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 465
    :cond_8
    sget-boolean v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mHasHeadsUpShown:Z

    if-nez v3, :cond_5

    .line 466
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->cancelNotification()V

    .line 467
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->showHeadsUp()V

    .line 468
    iput-boolean v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    .line 469
    sput-boolean v9, Lcom/android/server/storage/DeviceStorageMonitorService;->mHasHeadsUpShown:Z

    goto/16 :goto_2

    .line 476
    :cond_9
    const-string v3, "DeviceStorageMonitorService"

    const-string v4, "System has not ready yet!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 480
    :cond_a
    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    iput-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    .line 481
    iget-boolean v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-eqz v3, :cond_b

    .line 482
    iput-boolean v9, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCheckAppSize:Z

    .line 483
    iput-boolean v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mGetSize:Z

    .line 484
    const-string v3, "DeviceStorageMonitorService"

    const-string v4, "Memory available. Cancelling notification"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->cancelNotification()V

    .line 486
    iput-boolean v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    .line 490
    :cond_b
    sget-boolean v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mHasHeadsUpShown:Z

    if-eqz v3, :cond_5

    .line 491
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->cancelHeadsUp()V

    .line 492
    sput-boolean v8, Lcom/android/server/storage/DeviceStorageMonitorService;->mHasHeadsUpShown:Z

    goto/16 :goto_2

    .line 511
    :cond_c
    iget-boolean v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-eqz v3, :cond_0

    .line 512
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->cancelFullNotification()V

    .line 513
    iput-boolean v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    goto/16 :goto_0
.end method

.method dumpImpl(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 733
    .local v0, "context":Landroid/content/Context;
    const-string v1, "Current DeviceStorageMonitor state:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 735
    const-string v1, "  mFreeMem="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 736
    const-string v1, " mTotalMemory="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 737
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalMemory:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    const-string v1, "  mFreeMemAfterLastCacheClear="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 740
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 742
    const-string v1, "  mLastReportedFreeMem="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 743
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 744
    const-string v1, " mLastReportedFreeMemTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 745
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 746
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 748
    const-string v1, "  mLowMemFlag="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 749
    const-string v1, " mMemFullFlag="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 750
    const-string v1, " mIsBootImageOnDisk="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIsBootImageOnDisk:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 752
    const-string v1, "  mClearSucceeded="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearSucceeded:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 753
    const-string v1, " mClearingCache="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearingCache:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 755
    const-string v1, "  mMemLowThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 756
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 757
    const-string v1, " mMemFullThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 758
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullThreshold:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 760
    const-string v1, "  mMemCacheStartTrimThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 761
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 762
    const-string v1, " mMemCacheTrimToThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 763
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 764
    return-void
.end method

.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .prologue
    .line 1150
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 1152
    const-string v0, "DeviceStorageMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBootPhase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 1154
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mBootupCompleted:Z

    .line 1156
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 638
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getMemThreshold()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    .line 639
    const-wide/32 v0, 0x500000

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullThreshold:J

    .line 641
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullThreshold:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    .line 642
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    .line 644
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalMemory:J

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    .line 645
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->checkMemory(Z)V

    .line 647
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-direct {v0}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    .line 648
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-virtual {v0}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;->startWatching()V

    .line 650
    const-string v0, "devicestoragemonitor"

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 651
    const-class v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 652
    return-void
.end method

.method postCheckMemoryMsg(ZJ)V
    .locals 6
    .param p1, "clearCache"    # Z
    .param p2, "delay"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 556
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 557
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 560
    return-void

    :cond_0
    move v0, v2

    .line 557
    goto :goto_0
.end method
