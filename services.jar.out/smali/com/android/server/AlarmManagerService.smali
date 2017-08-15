.class Lcom/android/server/AlarmManagerService;
.super Lcom/android/server/SystemService;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$PowerOffAlarmReceiver;,
        Lcom/android/server/AlarmManagerService$DMReceiver;,
        Lcom/android/server/AlarmManagerService$ResultReceiver;,
        Lcom/android/server/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;,
        Lcom/android/server/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/AlarmManagerService$AlarmThread;,
        Lcom/android/server/AlarmManagerService$Alarm;,
        Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;,
        Lcom/android/server/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/AlarmManagerService$FilterStats;,
        Lcom/android/server/AlarmManagerService$InFlight;,
        Lcom/android/server/AlarmManagerService$BatchTimeOrder;,
        Lcom/android/server/AlarmManagerService$Batch;,
        Lcom/android/server/AlarmManagerService$WakeupEvent;,
        Lcom/android/server/AlarmManagerService$PriorityClass;
    }
.end annotation


# static fields
.field static final ALARM_EVENT:I = 0x1

.field static final ClockReceiver_TAG:Ljava/lang/String; = "ClockReceiver"

.field static final DEBUG_ALARM_CLOCK:Z

.field static DEBUG_BATCH:Z = false

.field static DEBUG_VALIDATE:Z = false

.field private static final ELAPSED_REALTIME_MASK:I = 0x8

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field private static GNTAG:Ljava/lang/String; = null

.field static final IS_WAKEUP_MASK:I = 0x5

.field private static final LATE_ALARM_THRESHOLD:J = 0x2710L

.field private static final MIN_FUTURITY:J = 0x1388L

.field static final MIN_FUZZABLE_INTERVAL:J = 0x2710L

.field private static final MIN_INTERVAL:J = 0xea60L

.field private static final NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

.field static final PRIO_NORMAL:I = 0x2

.field static final PRIO_TICK:I = 0x0

.field static final PRIO_WAKEUP:I = 0x1

.field private static final RTC_MASK:I = 0x2

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field static final TAG:Ljava/lang/String; = "AlarmManager"

.field static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field static final TIME_CHANGED_MASK:I = 0x10000

.field static final TYPE_NONWAKEUP_MASK:I = 0x1

.field static final WAKEUP_STATS:Z

.field static localLOGV:Z

.field private static mAlarmMode:I

.field static final mBackgroundIntent:Landroid/content/Intent;

.field private static mSupportAlarmGrouping:Z

.field static final sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

.field static final sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;


# instance fields
.field final RECENT_WAKEUP_PERIOD:J

.field private dataShapingManager:Lcom/mediatek/datashaping/IDataShapingManager;

.field final mAlarmBatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;"
        }
    .end annotation
.end field

.field final mAlarmDispatchComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmIconPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

.field private mBootPackage:Ljava/lang/String;

.field mBroadcastRefCount:I

.field final mBroadcastStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$BroadcastStats;",
            ">;>;"
        }
    .end annotation
.end field

.field mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

.field mCurrentSeq:I

.field private mDMEnable:Z

.field private mDMLock:Ljava/lang/Object;

.field private mDMReceiver:Lcom/android/server/AlarmManagerService$DMReceiver;

.field mDateChangeSender:Landroid/app/PendingIntent;

.field private mDmFreeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mDmResendList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private mGnWakeupDebug:Z

.field final mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

.field private final mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIPOShutdown:Z

.field mInFlight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$InFlight;",
            ">;"
        }
    .end annotation
.end field

.field mInteractive:Z

.field mInteractiveStateReceiver:Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

.field mLastAlarmDeliveryTime:J

.field mLastWakeLockUnimportantForLogging:Z

.field final mLock:Ljava/lang/Object;

.field final mLog:Lcom/android/internal/util/LocalLog;

.field mMaxDelayTime:J

.field private mMinimumPeriod_BlockSocket:J

.field mNativeData:J

.field private mNeedGrouping:Z

.field private mNeedToSetBlockSocket:Z

.field private final mNextAlarmClockForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAlarmClockMayChange:Z

.field private mNextNonWakeup:J

.field mNextNonWakeupDeliveryTime:J

.field private mNextWakeup:J

.field mNonInteractiveStartTime:J

.field mNonInteractiveTime:J

.field mNumDelayedAlarms:I

.field mNumTimeChanged:I

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mPPLEnable:Z

.field mPendingNonWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

.field private mPowerOffAlarmLock:Ljava/lang/Object;

.field private final mPoweroffAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousTime_SetBlockSocket:J

.field final mPriorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$PriorityClass;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/android/server/AlarmManagerService$PowerOffAlarmReceiver;

.field final mRecentWakeups:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/AlarmManagerService$WakeupEvent;",
            ">;"
        }
    .end annotation
.end field

.field final mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

.field private final mService:Landroid/os/IBinder;

.field mStartCurrentDelayTime:J

.field mTimeTickSender:Landroid/app/PendingIntent;

.field private final mTmpSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTotalDelayTime:J

.field private mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

.field private mWaitThreadlock:Ljava/lang/Object;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 133
    sput-boolean v1, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    .line 134
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    .line 135
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    .line 136
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v2, 0x104

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 144
    new-instance v0, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 156
    const/4 v0, 0x2

    sput v0, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    .line 157
    sput-boolean v1, Lcom/android/server/AlarmManagerService;->mSupportAlarmGrouping:Z

    .line 513
    new-instance v0, Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$BatchTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    .line 3286
    const-string v0, "AlarmManager_wakeup"

    sput-object v0, Lcom/android/server/AlarmManagerService;->GNTAG:Ljava/lang/String;

    return-void

    :cond_1
    move v0, v2

    .line 134
    goto :goto_0

    :cond_2
    move v0, v2

    .line 135
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 517
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 151
    new-instance v0, Lcom/android/internal/util/LocalLog;

    const-string v1, "AlarmManager"

    invoke-direct {v0, v1}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 153
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 160
    iput v3, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 169
    new-instance v0, Lcom/android/server/AlarmManagerService$ResultReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$ResultReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    .line 172
    iput-boolean v4, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    .line 174
    iput-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mNeedToSetBlockSocket:Z

    .line 175
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mMinimumPeriod_BlockSocket:J

    .line 176
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mPreviousTime_SetBlockSocket:J

    .line 185
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 187
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 189
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 194
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 198
    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mDMReceiver:Lcom/android/server/AlarmManagerService$DMReceiver;

    .line 199
    iput-boolean v4, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    .line 200
    iput-boolean v4, p0, Lcom/android/server/AlarmManagerService;->mPPLEnable:Z

    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mDMLock:Ljava/lang/Object;

    .line 202
    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    .line 203
    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmIconPackageList:Ljava/util/ArrayList;

    .line 204
    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 209
    iput-boolean v4, p0, Lcom/android/server/AlarmManagerService;->mNeedGrouping:Z

    .line 222
    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mBootPackage:Ljava/lang/String;

    .line 223
    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mReceiver:Lcom/android/server/AlarmManagerService$PowerOffAlarmReceiver;

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    .line 238
    iput v3, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    .line 252
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    .line 253
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->RECENT_WAKEUP_PERIOD:J

    .line 452
    new-instance v0, Lcom/android/server/AlarmManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$1;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    .line 514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 645
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mWaitThreadlock:Ljava/lang/Object;

    .line 646
    iput-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    .line 647
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    .line 648
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    .line 709
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 712
    iput v3, p0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    .line 713
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 714
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 1102
    new-instance v0, Lcom/android/server/AlarmManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$3;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    .line 3285
    iput-boolean v4, p0, Lcom/android/server/AlarmManagerService;->mGnWakeupDebug:Z

    .line 518
    return-void
.end method

.method private Amigo_setAlarm(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;ZLandroid/app/AlarmManager$AlarmClockInfo;I)[J
    .locals 22
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "triggerElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "maxElapsed"    # J
    .param p10, "interval"    # J
    .param p12, "operation"    # Landroid/app/PendingIntent;
    .param p13, "workSource"    # Landroid/os/WorkSource;
    .param p14, "isStandalone"    # Z
    .param p15, "_info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p16, "_userId"    # I

    .prologue
    .line 3232
    new-instance v2, Lcom/android/server/AlarmManagerService$Alarm;

    const/16 v18, 0x1

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p15

    move/from16 v17, p16

    invoke-direct/range {v2 .. v18}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;IZ)V

    .line 3233
    .local v2, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v20, v0

    .line 3234
    .local v20, "tmpWhen":J
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/AlarmManagerService;->Amigo_procRepeatAlarm(Lcom/android/server/AlarmManagerService$Alarm;J)V

    .line 3235
    const/4 v3, 0x2

    new-array v0, v3, [J

    move-object/from16 v19, v0

    .line 3236
    .local v19, "rTmp":[J
    const/4 v3, 0x0

    iget-wide v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    aput-wide v4, v19, v3

    .line 3237
    const/4 v3, 0x1

    iget-wide v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long v4, v4, v20

    const-wide/16 v6, 0x0

    sub-long/2addr v4, v6

    add-long v4, v4, p4

    aput-wide v4, v19, v3

    .line 3238
    return-object v19
.end method

.method private Amigo_setRepeatAlarm(Lcom/android/server/AlarmManagerService$Alarm;JJJZ)J
    .locals 6
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "delta"    # J
    .param p4, "nextElapsed"    # J
    .param p6, "maxElapsed"    # J
    .param p8, "isStandalone"    # Z

    .prologue
    .line 3242
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 3243
    .local v0, "tmpWhen":J
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->Amigo_procRepeatAlarm(Lcom/android/server/AlarmManagerService$Alarm;J)V

    .line 3244
    sub-long v2, p4, p2

    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long/2addr v4, v0

    add-long p4, v2, v4

    .line 3246
    return-wide p4
.end method

.method private FreeDmIntent(Ljava/util/ArrayList;Ljava/util/ArrayList;JLjava/util/ArrayList;)V
    .locals 15
    .param p3, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2789
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p2, "mDmFreeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "resendList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 2790
    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v13, 0x0

    .line 2791
    .local v13, "isFreeIntent":Z
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2792
    const/4 v13, 0x0

    .line 2793
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2795
    .local v8, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v12, v3, :cond_5

    .line 2796
    iget-object v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2797
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v3, :cond_1

    .line 2798
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sending alarm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    :cond_1
    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    const-string v6, "android.intent.extra.ALARM_COUNT"

    iget v7, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 2804
    iget v3, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v3, :cond_2

    .line 2805
    iget-object v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v5, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v6, v8, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V

    .line 2807
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2810
    :cond_2
    new-instance v2, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v5, v8, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v6, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v7, v8, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 2813
    .local v2, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2814
    iget v3, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 2815
    iget-object v9, v2, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2816
    .local v9, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v3, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 2817
    iget v3, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v3, :cond_6

    .line 2818
    const/4 v3, 0x1

    iput v3, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 2819
    move-wide/from16 v0, p3

    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 2823
    :goto_2
    iget-object v11, v2, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2824
    .local v11, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget v3, v11, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v11, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 2825
    iget v3, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v3, :cond_7

    .line 2826
    const/4 v3, 0x1

    iput v3, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 2827
    move-wide/from16 v0, p3

    iput-wide v0, v11, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 2831
    :goto_3
    iget v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    iget v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v3, :cond_4

    .line 2833
    :cond_3
    iget v3, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 2834
    iget v3, v11, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v11, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 2838
    :cond_4
    const/4 v13, 0x1

    .line 2843
    .end local v2    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v11    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_5
    if-nez v13, :cond_0

    .line 2844
    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2845
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2821
    .restart local v2    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_6
    iget v3, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2847
    .end local v2    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :catch_0
    move-exception v10

    .line 2848
    .local v10, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    goto/16 :goto_0

    .line 2829
    .end local v10    # "e":Landroid/app/PendingIntent$CanceledException;
    .restart local v2    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v11    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_7
    :try_start_1
    iget v3, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 2795
    .end local v2    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v11    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 2855
    .end local v8    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v12    # "i":I
    :cond_9
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/AlarmManagerService;JJ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService;->setKernelTime(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/AlarmManagerService;I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/AlarmManagerService;J)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->waitForAlarm(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->sendNextAlarmClockChanged()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/AlarmManagerService;JI)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mPPLEnable:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/AlarmManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBootPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/AlarmManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mBootPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/AlarmManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->canDisablePowerOffAlarm()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->shutdownCheckPoweroffAlarm()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/AlarmManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->close(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/AlarmManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->init()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/server/AlarmManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/android/server/AlarmManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mWaitThreadlock:Ljava/lang/Object;

    return-object v0
.end method

.method static addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z
    .locals 2
    .param p1, "newBatch"    # Lcom/android/server/AlarmManagerService$Batch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 546
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    sget-object v1, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-static {p0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 547
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 548
    rsub-int/lit8 v1, v0, 0x0

    add-int/lit8 v0, v1, -0x1

    .line 550
    :cond_0
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 551
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private addPoweroffAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I
    .locals 10
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 2961
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    .line 2963
    .local v1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    sget-object v7, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-static {v1, p1, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .line 2964
    .local v3, "index":I
    if-gez v3, :cond_0

    .line 2965
    rsub-int/lit8 v7, v3, 0x0

    add-int/lit8 v3, v7, -0x1

    .line 2967
    :cond_0
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v7, :cond_1

    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding alarm "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    :cond_1
    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2970
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v7, :cond_2

    .line 2972
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "alarms: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    const/4 v4, 0x0

    .line 2974
    .local v4, "position":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2975
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 2976
    .local v5, "time":Landroid/text/format/Time;
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v5, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 2977
    const-string v7, "%b %d %I:%M:%S %p"

    invoke-virtual {v5, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2978
    .local v6, "timeStr":Ljava/lang/String;
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gndb,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v9}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    add-int/lit8 v4, v4, 0x1

    .line 2981
    goto :goto_0

    .line 2984
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "position":I
    .end local v5    # "time":Landroid/text/format/Time;
    .end local v6    # "timeStr":Ljava/lang/String;
    :cond_2
    return v3
.end method

.method private native bootFromAlarm(I)Z
.end method

.method private canDisablePowerOffAlarm()Z
    .locals 4

    .prologue
    .line 3278
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->deviceUnencrypted()Z

    move-result v0

    .line 3279
    .local v0, "enabled":Z
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gndb, Power Off Alarm enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private native close(J)V
.end method

.method static convertToElapsed(JI)J
    .locals 6
    .param p0, "when"    # J
    .param p2, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 521
    if-eq p2, v0, :cond_0

    if-nez p2, :cond_2

    .line 522
    .local v0, "isRtc":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr p0, v2

    .line 525
    :cond_1
    return-wide p0

    .line 521
    .end local v0    # "isRtc":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deviceUnencrypted()Z
    .locals 2

    .prologue
    .line 3266
    const-string v0, "unencrypted"

    const-string v1, "ro.crypto.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .locals 11
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowELAPSED"    # J
    .param p5, "nowRTC"    # J
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1873
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1874
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1875
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->labelForType(I)Ljava/lang/String;

    move-result-object v9

    .line 1876
    .local v9, "label":Ljava/lang/String;
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " #"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1877
    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1878
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide/from16 v4, p5

    move-wide v6, p3

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1873
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1880
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v9    # "label":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .locals 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "nowRTC"    # J
    .param p6, "nowELAPSED"    # J
    .param p8, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1851
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1852
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1853
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " #"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1854
    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1851
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1857
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    return-void
.end method

.method private findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;
    .locals 4

    .prologue
    .line 1526
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1527
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1528
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 1529
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->hasWakeups()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1533
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :goto_1
    return-object v1

    .line 1527
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1533
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "userId"    # I

    .prologue
    .line 1661
    invoke-static {p0, p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "EHm"

    .line 1662
    .local v1, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1663
    .local v0, "pattern":Ljava/lang/String;
    if-nez p1, :cond_1

    const-string v2, ""

    :goto_1
    return-object v2

    .line 1661
    .end local v0    # "pattern":Ljava/lang/String;
    .end local v1    # "skeleton":Ljava/lang/String;
    :cond_0
    const-string v1, "Ehma"

    goto :goto_0

    .line 1663
    .restart local v0    # "pattern":Ljava/lang/String;
    .restart local v1    # "skeleton":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1537
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1538
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager$AlarmClockInfo;

    monitor-exit v1

    return-object v0

    .line 1539
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getPasswordType()I
    .locals 4

    .prologue
    .line 3254
    const/4 v2, 0x1

    .line 3255
    .local v2, "type":I
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 3257
    .local v1, "service":Landroid/os/IBinder;
    :try_start_0
    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 3258
    .local v0, "mountService":Landroid/os/storage/IMountService;
    invoke-interface {v0}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3261
    .end local v0    # "mountService":Landroid/os/storage/IMountService;
    :goto_0
    return v2

    .line 3259
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 5
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 2645
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    .line 2646
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v2

    .line 2647
    .local v2, "uid":I
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 2648
    .local v3, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    if-nez v3, :cond_0

    .line 2649
    new-instance v3, Landroid/util/ArrayMap;

    .end local v3    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 2650
    .restart local v3    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2652
    :cond_0
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2653
    .local v0, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-nez v0, :cond_1

    .line 2654
    new-instance v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .end local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-direct {v0, v2, v1}, Lcom/android/server/AlarmManagerService$BroadcastStats;-><init>(ILjava/lang/String;)V

    .line 2655
    .restart local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-virtual {v3, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2657
    :cond_1
    return-object v0
.end method

.method private native init()J
.end method

.method private isBootFromAlarm(I)Z
    .locals 1
    .param p1, "fd"    # I

    .prologue
    .line 2919
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->bootFromAlarm(I)Z

    move-result v0

    return v0
.end method

.method private static final labelForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1860
    packed-switch p0, :pswitch_data_0

    .line 1868
    const-string v0, "--unknown--"

    :goto_0
    return-object v0

    .line 1861
    :pswitch_0
    const-string v0, "RTC"

    goto :goto_0

    .line 1862
    :pswitch_1
    const-string v0, "RTC_WAKEUP"

    goto :goto_0

    .line 1863
    :pswitch_2
    const-string v0, "ELAPSED"

    goto :goto_0

    .line 1864
    :pswitch_3
    const-string v0, "ELAPSED_WAKEUP"

    goto :goto_0

    .line 1860
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private logBatchesLocked(Ljava/text/SimpleDateFormat;)V
    .locals 12
    .param p1, "sdf"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 1490
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x800

    invoke-direct {v9, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1491
    .local v9, "bs":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1492
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1493
    .local v6, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1494
    .local v4, "nowELAPSED":J
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1495
    .local v0, "NZ":I
    const/4 v11, 0x0

    .local v11, "iz":I
    :goto_0
    if-ge v11, v0, :cond_0

    .line 1496
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Batch;

    .line 1497
    .local v10, "bz":Lcom/android/server/AlarmManagerService$Batch;
    const-string v2, "Batch "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1498
    iget-object v2, v10, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v3, "  "

    move-object v8, p1

    invoke-static/range {v1 .. v8}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1499
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1500
    const-string v2, "AlarmManager"

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1495
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1503
    .end local v10    # "bz":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    return-void
.end method

.method static maxTriggerTime(JJJ)J
    .locals 6
    .param p0, "now"    # J
    .param p2, "triggerAtTime"    # J
    .param p4, "interval"    # J

    .prologue
    .line 535
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    sub-long v0, p2, p0

    .line 538
    .local v0, "futurity":J
    :goto_0
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 539
    const-wide/16 v0, 0x0

    .line 541
    :cond_0
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    long-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v2, p2

    return-wide v2

    .end local v0    # "futurity":J
    :cond_1
    move-wide v0, p4

    .line 535
    goto :goto_0
.end method

.method private removeLocked(Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 1706
    const/4 v1, 0x0

    .line 1707
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1708
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1709
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Landroid/app/PendingIntent;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1710
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1711
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1707
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1715
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    if-eqz v1, :cond_2

    .line 1717
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove(operation) changed bounds; rebatching operation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x12c

    if-ge v3, v4, :cond_3

    .line 1721
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1726
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1727
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1729
    :cond_2
    return-void

    .line 1723
    :cond_3
    const-string v3, "AlarmManager"

    const-string v4, "mAlarmBatches.size() is larger than 300 , do not rebatch"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private removePoweroffAlarmLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2988
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    .line 2990
    .local v1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 3003
    :cond_0
    return-void

    .line 2995
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2997
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2998
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2999
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3000
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private resendDmPendingList(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2861
    .local p1, "DmResendList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 2862
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2863
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2865
    .local v6, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_0
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v1, :cond_1

    .line 2866
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending alarm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    :cond_1
    iget-object v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.ALARM_COUNT"

    iget v5, v6, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 2873
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v1, :cond_2

    .line 2874
    iget-object v1, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v2, v6, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v3, v6, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v4, v6, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V

    .line 2876
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2878
    :cond_2
    new-instance v0, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v2, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v3, v6, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v4, v6, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v5, v6, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 2880
    .local v0, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2881
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 2882
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2883
    .local v7, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v1, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 2884
    iget v1, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v1, :cond_4

    .line 2885
    const/4 v1, 0x1

    iput v1, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 2886
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 2890
    :goto_1
    iget-object v9, v0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2891
    .local v9, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget v1, v9, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 2892
    iget v1, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v1, :cond_5

    .line 2893
    const/4 v1, 0x1

    iput v1, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 2894
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 2898
    :goto_2
    iget v1, v6, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget v1, v6, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v1, :cond_0

    .line 2900
    :cond_3
    iget v1, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 2901
    iget v1, v9, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2905
    .end local v0    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v7    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :catch_0
    move-exception v8

    .line 2906
    .local v8, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v2, v6, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    goto/16 :goto_0

    .line 2888
    .end local v8    # "e":Landroid/app/PendingIntent$CanceledException;
    .restart local v0    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v7    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_4
    :try_start_1
    iget v1, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    goto :goto_1

    .line 2896
    .restart local v9    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_5
    iget v1, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2913
    .end local v0    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v6    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v7    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_6
    return-void
.end method

.method private resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 14
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    const/4 v3, 0x7

    const-wide/16 v12, 0x3e8

    .line 3011
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v10

    .line 3012
    .local v10, "setPackageName":Ljava/lang/String;
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 3015
    .local v8, "latestTime":J
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mGnWakeupDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "com.android.deskclock"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.mediatek.schpwronoff"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3017
    :cond_0
    sget-object v0, Lcom/android/server/AlarmManagerService;->GNTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NATIVE SET....set package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8, v9}, Lcom/android/server/AlarmManagerService;->show(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3022
    :cond_1
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    .line 3023
    const-string v0, "com.android.deskclock"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3024
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBootPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set Prop 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    const-string v0, "persist.sys.bootpackage"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3027
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const/4 v3, 0x6

    div-long v4, v8, v12

    rem-long v6, v8, v12

    mul-long/2addr v6, v12

    mul-long/2addr v6, v12

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    .line 3029
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_off_alarm_package_name"

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3050
    :goto_0
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset power off alarm is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    const-string v0, "sys.power_off_alarm"

    div-long v2, v8, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3056
    :goto_1
    return-void

    .line 3033
    :cond_2
    const-string v0, "com.mediatek.schpwronoff"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3034
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBootPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set Prop 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3035
    const-string v0, "persist.sys.bootpackage"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3037
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    div-long v4, v8, v12

    rem-long v6, v8, v12

    mul-long/2addr v6, v12

    mul-long/2addr v6, v12

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    goto :goto_0

    .line 3040
    :cond_3
    const-string v0, "com.mediatek.poweronofftest"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3041
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBootPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set Prop 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    const-string v0, "persist.sys.bootpackage"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    div-long v4, v8, v12

    rem-long v6, v8, v12

    mul-long/2addr v6, v12

    mul-long/2addr v6, v12

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    goto/16 :goto_0

    .line 3046
    :cond_4
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown package ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to set power off alarm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3053
    :cond_5
    const-string v0, "AlarmManager"

    const-string v1, " do not set alarm to RTC when fd close "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private sendNextAlarmClockChanged()V
    .locals 8

    .prologue
    .line 1628
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 1629
    .local v3, "pendingUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 1631
    const-string v5, "AlarmManager"

    const-string v6, "sendNextAlarmClockChanged begin"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1633
    :try_start_0
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 1634
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1635
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 1636
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1634
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1638
    .end local v4    # "userId":I
    :cond_0
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1639
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1641
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1642
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 1643
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1644
    .restart local v4    # "userId":I
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 1645
    .local v1, "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "next_alarm_formatted"

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1, v4}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1650
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1642
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1639
    .end local v0    # "N":I
    .end local v1    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v2    # "i":I
    .end local v4    # "userId":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1653
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    const-string v5, "AlarmManager"

    const-string v6, "sendNextAlarmClockChanged end"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    return-void
.end method

.method private native set(JIJJ)V
.end method

.method private setImplLocked(IJJJJJLandroid/app/PendingIntent;ZZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;IZ)V
    .locals 26
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "whenElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "maxWhen"    # J
    .param p10, "interval"    # J
    .param p12, "operation"    # Landroid/app/PendingIntent;
    .param p13, "isStandalone"    # Z
    .param p14, "doValidate"    # Z
    .param p15, "workSource"    # Landroid/os/WorkSource;
    .param p16, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p17, "userId"    # I
    .param p18, "mNeedGrouping"    # Z

    .prologue
    .line 1062
    new-instance v6, Lcom/android/server/AlarmManagerService$Alarm;

    move/from16 v7, p1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move-wide/from16 v14, p8

    move-wide/from16 v16, p10

    move-object/from16 v18, p12

    move-object/from16 v19, p15

    move-object/from16 v20, p16

    move/from16 v21, p17

    move/from16 v22, p18

    invoke-direct/range {v6 .. v22}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;IZ)V

    .line 1064
    .local v6, "a":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p0

    move-object/from16 v1, p12

    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 1066
    if-eqz p13, :cond_3

    const/16 v24, -0x1

    .line 1067
    .local v24, "whichBatch":I
    :goto_0
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " whichBatch = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    if-gez v24, :cond_4

    .line 1069
    new-instance v23, Lcom/android/server/AlarmManagerService$Batch;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/android/server/AlarmManagerService$Batch;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1070
    .local v23, "batch":Lcom/android/server/AlarmManagerService$Batch;
    move/from16 v0, p13

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    .line 1071
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-static {v7, v0}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    .line 1083
    :cond_0
    :goto_1
    if-eqz p16, :cond_1

    .line 1084
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 1085
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1088
    :cond_1
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    if-eqz v7, :cond_2

    .line 1089
    if-eqz p14, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->validateConsistencyLocked()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1090
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tipping-point operation: type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " when="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " when(hex)="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " whenElapsed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p4

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " maxWhen="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " interval="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p10

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " op="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p12

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " standalone="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p13

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1099
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1100
    return-void

    .line 1066
    .end local v23    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v24    # "whichBatch":I
    :cond_3
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-wide/from16 v3, p8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->attemptCoalesceLocked(JJ)I

    move-result v24

    goto/16 :goto_0

    .line 1073
    .restart local v24    # "whichBatch":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/AlarmManagerService$Batch;

    .line 1074
    .restart local v23    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " alarm = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " add to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/android/server/AlarmManagerService$Batch;->add(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1078
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1079
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-static {v7, v0}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    goto/16 :goto_1
.end method

.method private native setKernelTime(JJ)I
.end method

.method private native setKernelTimezone(JI)I
.end method

.method private setLocked(IJ)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "when"    # J

    .prologue
    .line 1826
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1830
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 1831
    const-wide/16 v4, 0x0

    .line 1832
    .local v4, "alarmSeconds":J
    const-wide/16 v6, 0x0

    .line 1837
    .local v6, "alarmNanoseconds":J
    :goto_0
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set alarm to RTC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    .line 1847
    .end local v4    # "alarmSeconds":J
    .end local v6    # "alarmNanoseconds":J
    :goto_1
    return-void

    .line 1834
    :cond_0
    const-wide/16 v0, 0x3e8

    div-long v4, p2, v0

    .line 1835
    .restart local v4    # "alarmSeconds":J
    const-wide/16 v0, 0x3e8

    rem-long v0, p2, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v6, v0, v2

    .restart local v6    # "alarmNanoseconds":J
    goto :goto_0

    .line 1840
    .end local v4    # "alarmSeconds":J
    .end local v6    # "alarmNanoseconds":J
    :cond_1
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the mNativeData from RTC is abnormal,  mNativeData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    .line 1842
    .local v8, "msg":Landroid/os/Message;
    const/4 v0, 0x1

    iput v0, v8, Landroid/os/Message;->what:I

    .line 1844
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 1845
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v8, p2, p3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private static show(J)Ljava/lang/String;
    .locals 4
    .param p0, "t"    # J

    .prologue
    .line 3288
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 3289
    .local v0, "time":Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 3290
    const-string v2, "%b %d %I:%M:%S %p"

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3291
    .local v1, "timeStr":Ljava/lang/String;
    return-object v1
.end method

.method private shutdownCheckPoweroffAlarm()V
    .locals 22

    .prologue
    .line 3097
    const-string v2, "AlarmManager"

    const-string v3, "into shutdownCheckPoweroffAlarm()!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    const/4 v15, 0x0

    .line 3100
    .local v15, "setPackageName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 3101
    .local v16, "nowTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3102
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 3103
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 3104
    .local v14, "mTempPoweroffAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3105
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3106
    .local v10, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v12, v10, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 3107
    .local v12, "latestTime":J
    iget-object v2, v10, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v15

    .line 3109
    const-wide/16 v2, 0x7530

    sub-long v2, v12, v2

    cmp-long v2, v2, v16

    if-gtz v2, :cond_0

    .line 3110
    const-string v2, "AlarmManager"

    const-string v3, "get target latestTime < 30S!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3123
    .end local v10    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v12    # "latestTime":J
    .end local v14    # "mTempPoweroffAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :catchall_0
    move-exception v2

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3114
    .restart local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v14    # "mTempPoweroffAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 3115
    .local v18, "tempIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3116
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3117
    .restart local v10    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v12, v10, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 3119
    .restart local v12    # "latestTime":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 3120
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    iget v5, v10, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const-wide/16 v6, 0x3e8

    div-long v6, v12, v6

    const-wide/16 v8, 0x3e8

    rem-long v8, v12, v8

    const-wide/16 v20, 0x3e8

    mul-long v8, v8, v20

    const-wide/16 v20, 0x3e8

    mul-long v8, v8, v20

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    goto :goto_1

    .line 3123
    .end local v10    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v12    # "latestTime":J
    :cond_3
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3124
    const-string v2, "AlarmManager"

    const-string v3, "away shutdownCheckPoweroffAlarm()!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    return-void
.end method

.method private updateNextAlarmClockLocked()V
    .locals 17

    .prologue
    .line 1546
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    if-nez v13, :cond_1

    .line 1597
    :cond_0
    return-void

    .line 1549
    :cond_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 1551
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 1552
    .local v11, "nextForUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v11}, Landroid/util/SparseArray;->clear()V

    .line 1554
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1555
    .local v2, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v2, :cond_5

    .line 1556
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v6, v13, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 1557
    .local v6, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1559
    .local v1, "M":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v1, :cond_4

    .line 1560
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1561
    .local v5, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v13, v5, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v13, :cond_3

    .line 1562
    iget v12, v5, Lcom/android/server/AlarmManagerService$Alarm;->userId:I

    .line 1564
    .local v12, "userId":I
    sget-boolean v13, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v13, :cond_2

    .line 1565
    const-string v13, "AlarmManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found AlarmClockInfo at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v15

    iget-object v0, v5, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v15, v0, v12}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for user "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    :cond_2
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_3

    .line 1572
    iget-object v13, v5, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1559
    .end local v12    # "userId":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1555
    .end local v5    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1579
    .end local v1    # "M":I
    .end local v6    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v9    # "j":I
    :cond_5
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1580
    .local v3, "NN":I
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v3, :cond_7

    .line 1581
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 1582
    .local v10, "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 1583
    .restart local v12    # "userId":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 1584
    .local v7, "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v10, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 1585
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 1580
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1590
    .end local v7    # "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v10    # "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v12    # "userId":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1591
    .local v4, "NNN":I
    add-int/lit8 v8, v4, -0x1

    :goto_3
    if-ltz v8, :cond_0

    .line 1592
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v13, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 1593
    .restart local v12    # "userId":I
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_8

    .line 1594
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 1591
    :cond_8
    add-int/lit8 v8, v8, -0x1

    goto :goto_3
.end method

.method private updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    const/4 v3, 0x4

    .line 1601
    if-eqz p2, :cond_1

    .line 1602
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v0, :cond_0

    .line 1603
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Next AlarmClockInfoForUser("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2, p1}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1614
    :goto_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1615
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 1616
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    .line 1617
    return-void

    .line 1608
    :cond_1
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v0, :cond_2

    .line 1609
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Next AlarmClockInfoForUser("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): None"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :cond_2
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method private updatePoweroffAlarm(J)V
    .locals 7
    .param p1, "nowRTC"    # J

    .prologue
    .line 2927
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2929
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 2931
    monitor-exit v3

    .line 2958
    :goto_0
    return-void

    .line 2934
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v2, v4, p1

    if-lez v2, :cond_1

    .line 2936
    monitor-exit v3

    goto :goto_0

    .line 2957
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2939
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2941
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2943
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2945
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v2, v4, p1

    if-lez v2, :cond_4

    .line 2954
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 2955
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 2957
    :cond_3
    monitor-exit v3

    goto :goto_0

    .line 2949
    .restart local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    const-string v2, "AlarmManager"

    const-string v4, "power off alarm update deleted"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private validateConsistencyLocked()Z
    .locals 9

    .prologue
    .line 1506
    sget-boolean v6, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    if-eqz v6, :cond_1

    .line 1507
    const-wide/high16 v4, -0x8000000000000000L

    .line 1508
    .local v4, "lastTime":J
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1509
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1510
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 1511
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v6, v6, v4

    if-ltz v6, :cond_0

    .line 1513
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 1509
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1515
    :cond_0
    const-string v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CONSISTENCY FAILURE: Batch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is out of order"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1517
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-direct {p0, v3}, Lcom/android/server/AlarmManagerService;->logBatchesLocked(Ljava/text/SimpleDateFormat;)V

    .line 1518
    const/4 v6, 0x0

    .line 1522
    .end local v0    # "N":I
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "i":I
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v4    # "lastTime":J
    :goto_1
    return v6

    :cond_1
    const/4 v6, 0x1

    goto :goto_1
.end method

.method private native waitForAlarm(J)I
.end method


# virtual methods
.method public Amigo_alignCheck(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 9
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 3225
    invoke-static {}, Lcom/android/server/AmigoAlarmAlign;->getInstance()Lcom/android/server/AmigoAlarmAlign;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iget-object v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AmigoAlarmAlign;->alignCheck(IIJJLandroid/app/PendingIntent;)Z

    .line 3226
    return-void
.end method

.method public Amigo_getWhen(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 9
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 3216
    invoke-static {}, Lcom/android/server/AmigoAlarmAlign;->getInstance()Lcom/android/server/AmigoAlarmAlign;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iget-object v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AmigoAlarmAlign;->getWhen(IIJJLandroid/app/PendingIntent;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 3218
    return-void
.end method

.method public Amigo_initAlarmAlign()V
    .locals 3

    .prologue
    .line 3212
    invoke-static {}, Lcom/android/server/AmigoAlarmAlign;->getInstance()Lcom/android/server/AmigoAlarmAlign;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AmigoAlarmAlign;->init(Landroid/content/Context;Landroid/os/Handler;)V

    .line 3213
    return-void
.end method

.method public Amigo_procRepeatAlarm(Lcom/android/server/AlarmManagerService$Alarm;J)V
    .locals 10
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "delta"    # J

    .prologue
    .line 3221
    invoke-static {}, Lcom/android/server/AmigoAlarmAlign;->getInstance()Lcom/android/server/AmigoAlarmAlign;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long/2addr v4, p2

    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iget-object v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AmigoAlarmAlign;->procRepeatAlarm(IIJJLandroid/app/PendingIntent;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 3223
    return-void
.end method

.method attemptCoalesceLocked(JJ)I
    .locals 5
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    .prologue
    .line 556
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 557
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 558
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 559
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-boolean v3, v1, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    if-nez v3, :cond_0

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService$Batch;->canHold(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 563
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 557
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 563
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v2, -0x2

    goto :goto_1
.end method

.method public bootFromPoweroffAlarm()Z
    .locals 3

    .prologue
    .line 865
    const-string v2, "sys.boot.reason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 866
    .local v0, "bootReason":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 867
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 866
    .end local v1    # "ret":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method calculateDeliveryPriorities(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 475
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 476
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_6

    .line 477
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 480
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-string v5, "android.intent.action.TIME_TICK"

    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 481
    const/4 v2, 0x0

    .line 488
    .local v2, "alarmPrio":I
    :goto_1
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 489
    .local v4, "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    check-cast v4, Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 490
    .restart local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_0
    if-nez v4, :cond_1

    .line 491
    new-instance v4, Lcom/android/server/AlarmManagerService$PriorityClass;

    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    invoke-direct {v4, p0}, Lcom/android/server/AlarmManagerService$PriorityClass;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 492
    .restart local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :cond_1
    iput-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 496
    iget v5, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    iget v6, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    if-eq v5, v6, :cond_5

    .line 498
    iput v2, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    .line 499
    iget v5, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    iput v5, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    .line 476
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 482
    .end local v2    # "alarmPrio":I
    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_3
    iget-boolean v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v5, :cond_4

    .line 483
    const/4 v2, 0x1

    .restart local v2    # "alarmPrio":I
    goto :goto_1

    .line 485
    .end local v2    # "alarmPrio":I
    :cond_4
    const/4 v2, 0x2

    .restart local v2    # "alarmPrio":I
    goto :goto_1

    .line 504
    .restart local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_5
    iget v5, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    if-ge v2, v5, :cond_2

    .line 505
    iput v2, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    goto :goto_2

    .line 509
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "alarmPrio":I
    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_6
    return-void
.end method

.method public cancelPoweroffAlarmImpl(Ljava/lang/String;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 3063
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove power off alarm pacakge name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mGnWakeupDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "com.android.deskclock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.mediatek.schpwronoff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3069
    :cond_0
    sget-object v0, Lcom/android/server/AlarmManagerService;->GNTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NATIVE CLEAR....set package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    :cond_1
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3073
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->removePoweroffAlarmLocked(Ljava/lang/String;)V

    .line 3076
    const-string v0, "persist.sys.bootpackage"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3077
    .local v8, "bootReason":Ljava/lang/String;
    if-eqz v8, :cond_2

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 3078
    const-string v0, "1"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.android.deskclock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3079
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const/4 v3, 0x6

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    .line 3080
    const-string v0, "sys.power_off_alarm"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3087
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 3088
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 3090
    :cond_3
    monitor-exit v9

    .line 3091
    return-void

    .line 3081
    :cond_4
    const-string v0, "2"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.mediatek.schpwronoff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "com.mediatek.poweronofftest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3083
    :cond_5
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const/4 v3, 0x7

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    .line 3084
    const-string v0, "sys.power_off_alarm"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3090
    .end local v8    # "bootReason":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method checkAllowNonWakeupDelayLocked(J)Z
    .locals 9
    .param p1, "nowELAPSED"    # J

    .prologue
    const/4 v2, 0x0

    .line 2114
    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-eqz v3, :cond_1

    .line 2127
    :cond_0
    :goto_0
    return v2

    .line 2117
    :cond_1
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 2120
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v3, v4, p1

    if-gtz v3, :cond_0

    .line 2126
    :cond_2
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v0, p1, v4

    .line 2127
    .local v0, "timeSinceLast":J
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected configLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "opti"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1232
    array-length v3, p2

    if-lt p3, v3, :cond_0

    .line 1233
    const-string v3, "  Invalid argument!"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1257
    :goto_0
    add-int/lit8 v2, p3, 0x1

    .line 1258
    .local v2, "optiSocketPeriod":I
    array-length v3, p2

    if-lt v2, v3, :cond_6

    .line 1259
    const-string v3, "  Invalid minimum socket block period index!"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1277
    :goto_1
    return-void

    .line 1235
    .end local v2    # "optiSocketPeriod":I
    :cond_0
    const-string v3, "on"

    aget-object v4, p2, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1236
    sput-boolean v6, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    .line 1237
    sput-boolean v6, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    .line 1238
    sput-boolean v6, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    goto :goto_0

    .line 1239
    :cond_1
    const-string v3, "off"

    aget-object v4, p2, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1240
    sput-boolean v5, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    .line 1241
    sput-boolean v5, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    .line 1242
    sput-boolean v5, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    goto :goto_0

    .line 1243
    :cond_2
    const-string v3, "0"

    aget-object v4, p2, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1244
    sput v5, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    .line 1245
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAlarmMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1246
    :cond_3
    const-string v3, "1"

    aget-object v4, p2, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1247
    sput v6, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    .line 1248
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAlarmMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1249
    :cond_4
    const-string v3, "2"

    aget-object v4, p2, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1250
    const/4 v3, 0x2

    sput v3, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    .line 1251
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAlarmMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1253
    :cond_5
    const-string v3, "  Invalid argument!"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1262
    .restart local v2    # "optiSocketPeriod":I
    :cond_6
    :try_start_0
    aget-object v1, p2, v2

    .line 1263
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 1264
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mMinimumPeriod_BlockSocket:J

    .line 1265
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMinimumPeriod_BlockSocket(secs) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mMinimumPeriod_BlockSocket:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1271
    .end local v1    # "opt":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1272
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1273
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "socket block period exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1269
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "opt":Ljava/lang/String;
    :cond_7
    :try_start_1
    const-string v3, "  Invalid minimum socket block period!"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method currentNonWakeupFuzzLocked(J)J
    .locals 5
    .param p1, "nowELAPSED"    # J

    .prologue
    .line 2094
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v0, p1, v2

    .line 2095
    .local v0, "timeSinceOn":J
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    .locals 26
    .param p2, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 2131
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    .line 2132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 2133
    .local v20, "nowRTC":J
    const/16 v18, 0x0

    .line 2136
    .local v18, "needRebatch":Z
    const/16 v19, 0x0

    .line 2138
    .local v19, "openLteGateSuccess":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNwService:Landroid/os/INetworkManagementService;

    if-nez v5, :cond_0

    .line 2139
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    .line 2140
    .local v12, "b":Landroid/os/IBinder;
    invoke-static {v12}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/AlarmManagerService;->mNwService:Landroid/os/INetworkManagementService;

    .line 2141
    const-string v5, "data_shaping"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/mediatek/datashaping/IDataShapingManager;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/AlarmManagerService;->dataShapingManager:Lcom/mediatek/datashaping/IDataShapingManager;

    .line 2145
    .end local v12    # "b":Landroid/os/IBinder;
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->dataShapingManager:Lcom/mediatek/datashaping/IDataShapingManager;

    if-eqz v5, :cond_1

    .line 2147
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->dataShapingManager:Lcom/mediatek/datashaping/IDataShapingManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/mediatek/datashaping/IDataShapingManager;->openLteDataUpLinkGate(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    .line 2153
    :cond_1
    :goto_0
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openLteGateSuccess = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mNeedToSetBlockSocket:Z

    if-eqz v5, :cond_3

    .line 2157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService;->mPreviousTime_SetBlockSocket:J

    sub-long v22, v6, v8

    .line 2159
    .local v22, "socktUnblockingTimeElapsed":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mMinimumPeriod_BlockSocket:J

    cmp-long v5, v22, v6

    if-ltz v5, :cond_7

    .line 2163
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNwService:Landroid/os/INetworkManagementService;

    if-nez v5, :cond_2

    .line 2164
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    .line 2165
    .local v13, "b1":Landroid/os/IBinder;
    invoke-static {v13}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/AlarmManagerService;->mNwService:Landroid/os/INetworkManagementService;

    .line 2168
    .end local v13    # "b1":Landroid/os/IBinder;
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService;->mPreviousTime_SetBlockSocket:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2177
    .end local v22    # "socktUnblockingTimeElapsed":J
    :cond_3
    :goto_1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mNeedToSetBlockSocket:Z

    .line 2180
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v17

    if-ge v0, v5, :cond_5

    .line 2181
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2183
    .local v11, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->updatePoweroffAlarm(J)V

    .line 2186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mDMLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2187
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mPPLEnable:Z

    if-nez v5, :cond_8

    .line 2188
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/AlarmManagerService;->FreeDmIntent(Ljava/util/ArrayList;Ljava/util/ArrayList;JLjava/util/ArrayList;)V

    .line 2189
    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2268
    .end local v11    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_5
    if-eqz v18, :cond_6

    .line 2269
    const-string v5, "AlarmManager"

    const-string v6, " deliverAlarmsLocked removeInvalidAlarmLocked then rebatch "

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2271
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2272
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2274
    :cond_6
    return-void

    .line 2148
    .end local v17    # "i":I
    :catch_0
    move-exception v15

    .line 2149
    .local v15, "e":Ljava/lang/Exception;
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error openLteDataUpLinkGate false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2169
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v22    # "socktUnblockingTimeElapsed":J
    :catch_1
    move-exception v15

    .line 2170
    .restart local v15    # "e":Ljava/lang/Exception;
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error setBlockUplinkSocket false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2173
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "socktUnblockingTimeElapsed(ms): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " < mMinimumPeriod_BlockSocket: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService;->mMinimumPeriod_BlockSocket:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2191
    .end local v22    # "socktUnblockingTimeElapsed":J
    .restart local v11    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v17    # "i":I
    :cond_8
    :try_start_3
    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2195
    const-string v5, "ro.mtk_ipo_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2196
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    if-eqz v5, :cond_a

    .line 2180
    :cond_9
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 2191
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 2202
    :cond_a
    :try_start_5
    sget-boolean v5, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v5, :cond_b

    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sending alarm "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    :cond_b
    iget v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v5, :cond_c

    iget v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    .line 2204
    :cond_c
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wakeup alarm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; package = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "needGrouping = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v11, Lcom/android/server/AlarmManagerService$Alarm;->needGrouping:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    :cond_d
    iget-object v4, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    const-string v8, "android.intent.extra.ALARM_COUNT"

    iget v9, v11, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual/range {v4 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 2214
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/AlarmManagerService;->Amigo_alignCheck(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 2217
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v5, :cond_e

    .line 2218
    iget-object v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v11, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v7, v11, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v8, v11, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V

    .line 2220
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2222
    :cond_e
    new-instance v4, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v6, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v7, v11, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v8, v11, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v9, v11, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 2224
    .local v4, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2225
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 2227
    iget-object v14, v4, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2228
    .local v14, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 2229
    iget v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v5, :cond_10

    .line 2230
    const/4 v5, 0x1

    iput v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 2231
    move-wide/from16 v0, p2

    iput-wide v0, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 2235
    :goto_4
    iget-object v0, v4, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v16, v0

    .line 2236
    .local v16, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 2237
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v5, :cond_12

    .line 2238
    const/4 v5, 0x1

    move-object/from16 v0, v16

    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 2239
    move-wide/from16 v0, p2

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 2243
    :goto_5
    iget v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_f

    iget v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v5, :cond_9

    .line 2245
    :cond_f
    iget v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 2246
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 2247
    iget-object v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    if-eqz v5, :cond_13

    iget-object v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    if-lez v5, :cond_13

    .line 2248
    const/16 v24, 0x0

    .local v24, "wi":I
    :goto_6
    iget-object v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    move/from16 v0, v24

    if-ge v0, v5, :cond_9

    .line 2249
    iget-object v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v11, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    iget-object v7, v11, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 2248
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 2233
    .end local v16    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v24    # "wi":I
    :cond_10
    iget v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 2258
    .end local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v14    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :catch_2
    move-exception v15

    .line 2259
    .local v15, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v6, v11, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_9

    .line 2262
    iget-object v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/AlarmManagerService;->removeInvalidAlarmLocked(Landroid/app/PendingIntent;)Z

    move-result v5

    if-nez v5, :cond_11

    if-eqz v18, :cond_14

    :cond_11
    const/16 v18, 0x1

    :goto_7
    goto/16 :goto_3

    .line 2241
    .end local v15    # "e":Landroid/app/PendingIntent$CanceledException;
    .restart local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v14    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v16    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_12
    :try_start_6
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_6
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    .line 2264
    .end local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v14    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v16    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :catch_3
    move-exception v15

    .line 2265
    .local v15, "e":Ljava/lang/RuntimeException;
    const-string v5, "AlarmManager"

    const-string v6, "Failure sending alarm."

    invoke-static {v5, v6, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 2254
    .end local v15    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v14    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v16    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_13
    :try_start_7
    iget-object v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;)V
    :try_end_7
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_3

    .line 2262
    .end local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v14    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v16    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .local v15, "e":Landroid/app/PendingIntent$CanceledException;
    :cond_14
    const/16 v18, 0x0

    goto :goto_7
.end method

.method dumpImpl(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 38
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 1283
    const/16 v29, 0x0

    .line 1284
    .local v29, "opti":I
    :goto_0
    move-object/from16 v0, p2

    array-length v5, v0

    move/from16 v0, v29

    if-ge v0, v5, :cond_0

    .line 1285
    aget-object v28, p2, v29

    .line 1286
    .local v28, "opt":Ljava/lang/String;
    if-eqz v28, :cond_0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_1

    .line 1302
    .end local v28    # "opt":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p2

    array-length v5, v0

    move/from16 v0, v29

    if-ge v0, v5, :cond_3

    .line 1303
    aget-object v14, p2, v29

    .line 1304
    .local v14, "cmd":Ljava/lang/String;
    add-int/lit8 v29, v29, 0x1

    .line 1305
    const-string v5, "log"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1306
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->configLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 1487
    .end local v14    # "cmd":Ljava/lang/String;
    :goto_1
    return-void

    .line 1289
    .restart local v28    # "opt":Ljava/lang/String;
    :cond_1
    add-int/lit8 v29, v29, 0x1

    .line 1290
    const-string v5, "-h"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1291
    const-string v5, "alarm manager dump options:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1292
    const-string v5, "  log  [on/off]"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1293
    const-string v5, "  Example:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1294
    const-string v5, "  $adb shell dumpsys alarm log on"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1295
    const-string v5, "  $adb shell dumpsys alarm log off"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1298
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown argument: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; use -h for help"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1311
    .end local v28    # "opt":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v34, v0

    monitor-enter v34

    .line 1312
    :try_start_0
    const-string v5, "Current Alarm Manager state:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1314
    .local v10, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1315
    .local v8, "nowELAPSED":J
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v12, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1317
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    const-string v5, "nowRTC="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 1318
    const-string v5, "="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1319
    const-string v5, " nowELAPSED="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1320
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1321
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-nez v5, :cond_4

    .line 1322
    const-string v5, "Time since non-interactive: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1323
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v6, v8, v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1324
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1325
    const-string v5, "Max wakeup delay: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1326
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1327
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1328
    const-string v5, "Time since last dispatch: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1329
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v6, v8, v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1330
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1331
    const-string v5, "Next non-wakeup delivery time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1332
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    sub-long v6, v8, v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1333
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1336
    :cond_4
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    sub-long v36, v10, v8

    add-long v26, v6, v36

    .line 1337
    .local v26, "nextWakeupRTC":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    sub-long v36, v10, v8

    add-long v24, v6, v36

    .line 1338
    .local v24, "nextNonWakeupRTC":J
    const-string v5, "Next non-wakeup alarm: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1339
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1340
    const-string v5, " = "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v24

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1341
    const-string v5, "Next wakeup: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1342
    const-string v5, " = "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v26

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1343
    const-string v5, "Num time change events: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1345
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 1346
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1347
    const-string v5, "Pending alarm batches: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1349
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 1350
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v5, 0x3a

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(C)V

    .line 1351
    iget-object v6, v4, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v7, "  "

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v12}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    goto :goto_2

    .line 1486
    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v8    # "nowELAPSED":J
    .end local v10    # "nowRTC":J
    .end local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v24    # "nextNonWakeupRTC":J
    .end local v26    # "nextWakeupRTC":J
    :catchall_0
    move-exception v5

    monitor-exit v34
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1355
    .restart local v8    # "nowELAPSED":J
    .restart local v10    # "nowRTC":J
    .restart local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v24    # "nextNonWakeupRTC":J
    .restart local v26    # "nextWakeupRTC":J
    :cond_5
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1356
    const-string v5, "Past-due non-wakeup alarms: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1357
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 1358
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1359
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    const-string v7, "  "

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v12}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1363
    :goto_3
    const-string v5, "  Number of delayed alarms: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1364
    const-string v5, ", total delay time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1365
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1366
    const-string v5, "  Max delay time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1367
    const-string v5, ", max non-interactive time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1368
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1369
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1371
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1372
    const-string v5, "  Broadcast ref count: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1373
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1375
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v6, "  Recent problems"

    const-string v7, "    "

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/internal/util/LocalLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1376
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1379
    :cond_6
    const/16 v5, 0xa

    new-array v0, v5, [Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v32, v0

    .line 1380
    .local v32, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v15, Lcom/android/server/AlarmManagerService$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/server/AlarmManagerService$4;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1391
    .local v15, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/16 v23, 0x0

    .line 1392
    .local v23, "len":I
    const/16 v22, 0x0

    .local v22, "iu":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v22

    if-ge v0, v5, :cond_e

    .line 1393
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/util/ArrayMap;

    .line 1394
    .local v33, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/16 v20, 0x0

    .local v20, "ip":I
    :goto_5
    invoke-virtual/range {v33 .. v33}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v20

    if-ge v0, v5, :cond_d

    .line 1395
    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1396
    .local v13, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const/16 v21, 0x0

    .local v21, "is":I
    :goto_6
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v21

    if-ge v0, v5, :cond_c

    .line 1397
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1398
    .local v17, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    if-lez v23, :cond_b

    const/4 v5, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v23

    move-object/from16 v2, v17

    invoke-static {v0, v5, v1, v2, v15}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v30

    .line 1400
    .local v30, "pos":I
    :goto_7
    if-gez v30, :cond_7

    .line 1401
    move/from16 v0, v30

    neg-int v5, v0

    add-int/lit8 v30, v5, -0x1

    .line 1403
    :cond_7
    move-object/from16 v0, v32

    array-length v5, v0

    move/from16 v0, v30

    if-ge v0, v5, :cond_9

    .line 1404
    move-object/from16 v0, v32

    array-length v5, v0

    sub-int v5, v5, v30

    add-int/lit8 v16, v5, -0x1

    .line 1405
    .local v16, "copylen":I
    if-lez v16, :cond_8

    .line 1406
    add-int/lit8 v5, v30, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v30

    move-object/from16 v2, v32

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1408
    :cond_8
    aput-object v17, v32, v30

    .line 1409
    move-object/from16 v0, v32

    array-length v5, v0

    move/from16 v0, v23

    if-ge v0, v5, :cond_9

    .line 1410
    add-int/lit8 v23, v23, 0x1

    .line 1396
    .end local v16    # "copylen":I
    :cond_9
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 1361
    .end local v13    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v15    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v20    # "ip":I
    .end local v21    # "is":I
    .end local v22    # "iu":I
    .end local v23    # "len":I
    .end local v30    # "pos":I
    .end local v32    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v33    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_a
    const-string v5, "(none)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1398
    .restart local v13    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v15    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v20    # "ip":I
    .restart local v21    # "is":I
    .restart local v22    # "iu":I
    .restart local v23    # "len":I
    .restart local v32    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v33    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_b
    const/16 v30, 0x0

    goto :goto_7

    .line 1394
    .end local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 1392
    .end local v13    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v21    # "is":I
    :cond_d
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    .line 1416
    .end local v20    # "ip":I
    .end local v33    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_e
    if-lez v23, :cond_10

    .line 1417
    const-string v5, "  Top Alarms:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1418
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_8
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_10

    .line 1419
    aget-object v17, v32, v18

    .line 1420
    .restart local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v5, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1421
    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v5, :cond_f

    const-string v5, "*ACTIVE* "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1422
    :cond_f
    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1423
    const-string v5, " running, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1424
    const-string v5, " wakeups, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1425
    const-string v5, " alarms: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget v5, v5, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1426
    const-string v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1427
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1428
    const-string v5, "      "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1429
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1418
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_8

    .line 1433
    .end local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v18    # "i":I
    :cond_10
    const-string v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1434
    const-string v5, "  Alarm Stats:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1435
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 1436
    .local v31, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/16 v22, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v22

    if-ge v0, v5, :cond_16

    .line 1437
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/util/ArrayMap;

    .line 1438
    .restart local v33    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/16 v20, 0x0

    .restart local v20    # "ip":I
    :goto_a
    invoke-virtual/range {v33 .. v33}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v20

    if-ge v0, v5, :cond_15

    .line 1439
    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1440
    .restart local v13    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-string v5, "  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1441
    iget v5, v13, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v5, :cond_11

    const-string v5, "*ACTIVE* "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1442
    :cond_11
    iget v5, v13, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1443
    const-string v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1444
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1445
    const-string v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v13, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1446
    const-string v5, " running, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v13, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1447
    const-string v5, " wakeups:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1448
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    .line 1449
    const/16 v21, 0x0

    .restart local v21    # "is":I
    :goto_b
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v21

    if-ge v0, v5, :cond_12

    .line 1450
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 1452
    :cond_12
    move-object/from16 v0, v31

    invoke-static {v0, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1453
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_c
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v18

    if-ge v0, v5, :cond_14

    .line 1454
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1455
    .restart local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v5, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1456
    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v5, :cond_13

    const-string v5, "*ACTIVE* "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1457
    :cond_13
    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1458
    const-string v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1459
    const-string v5, " wakes "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1460
    const-string v5, " alarms: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1461
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1462
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1453
    add-int/lit8 v18, v18, 0x1

    goto :goto_c

    .line 1438
    .end local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_14
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_a

    .line 1436
    .end local v13    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v18    # "i":I
    .end local v21    # "is":I
    :cond_15
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_9

    .line 1486
    .end local v20    # "ip":I
    .end local v33    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_16
    monitor-exit v34
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public enableDm()I
    .locals 2

    .prologue
    .line 2749
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mDMLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2750
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mPPLEnable:Z

    if-eqz v0, :cond_0

    .line 2763
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->resendDmPendingList(Ljava/util/ArrayList;)V

    .line 2764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 2765
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 2767
    :cond_0
    monitor-exit v1

    .line 2768
    const/4 v0, -0x1

    return v0

    .line 2767
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 873
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/AlarmManagerService;->close(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 877
    return-void

    .line 875
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method interactiveStateChangedLocked(Z)V
    .locals 10
    .param p1, "interactive"    # Z

    .prologue
    .line 1790
    iget-boolean v6, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-eq v6, p1, :cond_2

    .line 1791
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    .line 1792
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1793
    .local v2, "nowELAPSED":J
    if-eqz p1, :cond_3

    .line 1794
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1795
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v4, v2, v6

    .line 1796
    .local v4, "thisDelayTime":J
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 1797
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_0

    .line 1798
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 1800
    :cond_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0, v6, v2, v3}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1801
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1803
    .end local v4    # "thisDelayTime":J
    :cond_1
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 1804
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v0, v2, v6

    .line 1805
    .local v0, "dur":J
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    .line 1806
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    .line 1813
    .end local v0    # "dur":J
    .end local v2    # "nowELAPSED":J
    :cond_2
    :goto_0
    return-void

    .line 1810
    .restart local v2    # "nowELAPSED":J
    :cond_3
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    goto :goto_0
.end method

.method public lookForPackageFromAmsImpl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3143
    if-nez p1, :cond_0

    .line 3144
    const/4 v0, 0x0

    .line 3147
    :goto_0
    return v0

    .line 3146
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3147
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 3148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method lookForPackageLocked(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1816
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1817
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1818
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->hasPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1819
    const/4 v2, 0x1

    .line 1822
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :goto_1
    return v2

    .line 1816
    .restart local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1822
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onStart()V
    .locals 14

    .prologue
    .line 718
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->init()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    .line 719
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    iput-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 721
    const-string v9, "ro.mtk_bg_power_saving_support"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 722
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/server/AlarmManagerService;->mSupportAlarmGrouping:Z

    .line 726
    :cond_0
    const-string v9, "persist.sys.timezone"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->Amigo_initAlarmAlign()V

    .line 733
    sget-boolean v9, Lcom/android/server/AlarmManagerService;->mSupportAlarmGrouping:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

    if-nez v9, :cond_1

    .line 735
    :try_start_0
    new-instance v9, Lcom/mediatek/amplus/AlarmManagerPlus;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/mediatek/amplus/AlarmManagerPlus;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "power"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 743
    .local v7, "pm":Landroid/os/PowerManager;
    const/4 v9, 0x1

    const-string v10, "*alarm*"

    invoke-virtual {v7, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 745
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.TIME_TICK"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v12, 0x50000000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v11

    const/4 v12, 0x0

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v9, v10, v11, v12, v13}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    .line 750
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.DATE_CHANGED"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 751
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v9, 0x20000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 752
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    const/high16 v11, 0x4000000

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v9, v10, v5, v11, v12}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 756
    new-instance v9, Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    .line 757
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v9}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 758
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v9}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 759
    new-instance v9, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mInteractiveStateReceiver:Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    .line 760
    new-instance v9, Lcom/android/server/AlarmManagerService$UninstallReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

    .line 762
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmIconPackageList:Ljava/util/ArrayList;

    .line 763
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmIconPackageList:Ljava/util/ArrayList;

    const-string v10, "com.android.deskclock"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    :try_start_1
    const-string v9, "DmAgent"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 767
    .local v2, "binder":Landroid/os/IBinder;
    if-eqz v2, :cond_3

    .line 768
    invoke-static {v2}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v0

    .line 769
    .local v0, "agent":Lcom/mediatek/common/dm/DmAgent;
    invoke-interface {v0}, Lcom/mediatek/common/dm/DmAgent;->isLockFlagSet()Z

    move-result v6

    .line 770
    .local v6, "locked":Z
    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dm state lock is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    if-nez v6, :cond_2

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 778
    .end local v0    # "agent":Lcom/mediatek/common/dm/DmAgent;
    .end local v2    # "binder":Landroid/os/IBinder;
    .end local v6    # "locked":Z
    :goto_2
    new-instance v9, Lcom/android/server/AlarmManagerService$DMReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$DMReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mDMReceiver:Lcom/android/server/AlarmManagerService$DMReceiver;

    .line 779
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    .line 780
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 786
    iget-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_4

    .line 787
    new-instance v8, Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-direct {v8, p0}, Lcom/android/server/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 788
    .local v8, "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    invoke-virtual {v8}, Lcom/android/server/AlarmManagerService$AlarmThread;->start()V

    .line 797
    .end local v8    # "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    :goto_3
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 798
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 799
    const-string v9, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 800
    const-string v9, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 801
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/android/server/AlarmManagerService$2;

    invoke-direct {v10, p0}, Lcom/android/server/AlarmManagerService$2;-><init>(Lcom/android/server/AlarmManagerService;)V

    invoke-virtual {v9, v10, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 846
    const-string v9, "network_management"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 847
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mNwService:Landroid/os/INetworkManagementService;

    .line 848
    const-string v9, "data_shaping"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    check-cast v9, Lcom/mediatek/datashaping/IDataShapingManager;

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->dataShapingManager:Lcom/mediatek/datashaping/IDataShapingManager;

    .line 853
    new-instance v9, Lcom/android/server/AlarmManagerService$PowerOffAlarmReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$PowerOffAlarmReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mReceiver:Lcom/android/server/AlarmManagerService$PowerOffAlarmReceiver;

    .line 854
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "power_off_alarm_package_name"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mBootPackage:Ljava/lang/String;

    .line 858
    const-string v9, "alarm"

    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v9, v10}, Lcom/android/server/AlarmManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 859
    return-void

    .line 736
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "pm":Landroid/os/PowerManager;
    :catch_0
    move-exception v3

    .line 737
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 771
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "agent":Lcom/mediatek/common/dm/DmAgent;
    .restart local v2    # "binder":Landroid/os/IBinder;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "locked":Z
    .restart local v7    # "pm":Landroid/os/PowerManager;
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 773
    .end local v0    # "agent":Lcom/mediatek/common/dm/DmAgent;
    .end local v6    # "locked":Z
    :cond_3
    :try_start_2
    const-string v9, "AlarmManager"

    const-string v10, "dm binder is null!"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 775
    .end local v2    # "binder":Landroid/os/IBinder;
    :catch_1
    move-exception v3

    .line 776
    .local v3, "e":Landroid/os/RemoteException;
    const-string v9, "AlarmManager"

    const-string v10, "remote error"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 790
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string v9, "AlarmManager"

    const-string v10, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method rebatchAllAlarms()V
    .locals 2

    .prologue
    .line 568
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 569
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 570
    monitor-exit v1

    .line 571
    return-void

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rebatchAllAlarmsLocked(Z)V
    .locals 32
    .param p1, "doValidate"    # Z

    .prologue
    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/ArrayList;

    .line 575
    .local v29, "oldSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 576
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    .line 577
    .local v26, "nowElapsed":J
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 578
    .local v28, "oldBatches":I
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rebatchAllAlarmsLocked begin oldBatches count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/16 v24, 0x0

    .local v24, "batchNum":I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    .line 580
    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/AlarmManagerService$Batch;

    .line 581
    .local v23, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v21

    .line 583
    .local v21, "N":I
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v2, :cond_0

    .line 584
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rebatchAllAlarmsLocked  batch.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_0
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 588
    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v22

    .line 589
    .local v22, "a":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, v22

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v2, v3, v4}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v30

    .line 594
    .local v30, "whenElapsed":J
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->mSupportAlarmGrouping:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

    if-eqz v2, :cond_2

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, v22

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, v22

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    sget v11, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    const/4 v12, 0x1

    invoke-virtual/range {v2 .. v12}, Lcom/mediatek/amplus/AlarmManagerPlus;->getMaxTriggerTime(IJJJLandroid/app/PendingIntent;IZ)J

    move-result-wide v10

    .line 598
    .local v10, "maxElapsed":J
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-gez v2, :cond_1

    .line 599
    const-wide/16 v2, 0x0

    sub-long v10, v2, v10

    .line 601
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerService;->mNeedGrouping:Z

    .line 613
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerService;->mNeedGrouping:Z

    move-object/from16 v0, v22

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->needGrouping:Z

    .line 636
    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, v22

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, v22

    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, v22

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, v23

    iget-boolean v15, v0, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v17, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->userId:I

    move/from16 v19, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->needGrouping:Z

    move/from16 v20, v0

    move-object/from16 v2, p0

    move-wide/from16 v6, v30

    move/from16 v16, p1

    invoke-direct/range {v2 .. v20}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;ZZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;IZ)V

    .line 587
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_1

    .line 603
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerService;->mNeedGrouping:Z

    .line 604
    const/4 v2, 0x0

    move-object/from16 v0, v23

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    goto :goto_2

    .line 606
    .end local v10    # "maxElapsed":J
    :cond_2
    move-object/from16 v0, v22

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 607
    move-object/from16 v0, v22

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .restart local v10    # "maxElapsed":J
    goto :goto_2

    .line 608
    .end local v10    # "maxElapsed":J
    :cond_3
    move-object/from16 v0, v22

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 609
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v2, v26

    invoke-static/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v10

    .restart local v10    # "maxElapsed":J
    goto :goto_2

    .line 611
    .end local v10    # "maxElapsed":J
    :cond_4
    move-object/from16 v0, v22

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long v10, v2, v4

    .restart local v10    # "maxElapsed":J
    goto/16 :goto_2

    .line 579
    .end local v10    # "maxElapsed":J
    .end local v22    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v30    # "whenElapsed":J
    :cond_5
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_0

    .line 641
    .end local v21    # "N":I
    .end local v23    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v25    # "i":I
    :cond_6
    const-string v2, "AlarmManager"

    const-string v3, "rebatchAllAlarmsLocked end"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return-void
.end method

.method recordWakeupAlarms(Ljava/util/ArrayList;JJ)V
    .locals 12
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 2075
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2076
    .local v11, "numBatches":I
    const/4 v9, 0x0

    .local v9, "nextBatch":I
    :goto_0
    if-ge v9, v11, :cond_0

    .line 2077
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Batch;

    .line 2078
    .local v7, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v2, v7, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v1, v2, p2

    if-lez v1, :cond_1

    .line 2091
    .end local v7    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    return-void

    .line 2082
    .restart local v7    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    iget-object v1, v7, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2083
    .local v10, "numAlarms":I
    const/4 v8, 0x0

    .local v8, "nextAlarm":I
    :goto_1
    if-ge v8, v10, :cond_2

    .line 2084
    iget-object v1, v7, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2085
    .local v6, "a":Lcom/android/server/AlarmManagerService$Alarm;
    new-instance v0, Lcom/android/server/AlarmManagerService$WakeupEvent;

    iget-object v1, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v4

    iget-object v1, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-wide/from16 v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AlarmManagerService$WakeupEvent;-><init>(Lcom/android/server/AlarmManagerService;JILjava/lang/String;)V

    .line 2088
    .local v0, "e":Lcom/android/server/AlarmManagerService$WakeupEvent;
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2083
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2076
    .end local v0    # "e":Lcom/android/server/AlarmManagerService$WakeupEvent;
    .end local v6    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public removeFromAmsImpl(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3131
    if-nez p1, :cond_0

    .line 3137
    :goto_0
    return-void

    .line 3134
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3135
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/lang/String;)V

    .line 3136
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeImpl(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 915
    if-nez p1, :cond_0

    .line 929
    :goto_0
    return-void

    .line 921
    :cond_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.deskclock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 922
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService;->cancelPoweroffAlarmImpl(Ljava/lang/String;)V

    .line 926
    :cond_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 927
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 928
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeInvalidAlarmLocked(Landroid/app/PendingIntent;)Z
    .locals 4
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 1758
    const/4 v1, 0x0

    .line 1759
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1760
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1761
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Landroid/app/PendingIntent;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1762
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1763
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1759
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1766
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    return v1
.end method

.method removeLocked(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1732
    const/4 v1, 0x0

    .line 1733
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1734
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1735
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1736
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1737
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1733
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1741
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    if-eqz v1, :cond_2

    .line 1743
    const-string v3, "AlarmManager"

    const-string v4, "remove(package) changed bounds; rebatching"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x12c

    if-ge v3, v4, :cond_3

    .line 1747
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1752
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1753
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1755
    :cond_2
    return-void

    .line 1749
    :cond_3
    const-string v3, "AlarmManager"

    const-string v4, "mAlarmBatches.size() is larger than 300 , do not rebatch"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method removeUserLocked(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 1770
    const/4 v1, 0x0

    .line 1771
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1772
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1773
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1774
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1775
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1771
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1779
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    if-eqz v1, :cond_3

    .line 1780
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v3, :cond_2

    .line 1781
    const-string v3, "AlarmManager"

    const-string v4, "remove(user) changed bounds; rebatching"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1784
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1785
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1787
    :cond_3
    return-void
.end method

.method rescheduleKernelAlarmsLocked()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 1672
    iget-boolean v4, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1673
    const-string v4, "AlarmManager"

    const-string v5, "IPO Shutdown so drop the repeating alarm"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    :cond_0
    :goto_0
    return-void

    .line 1678
    :cond_1
    const-wide/16 v2, 0x0

    .line 1679
    .local v2, "nextNonWakeup":J
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1680
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;

    move-result-object v1

    .line 1681
    .local v1, "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1684
    .local v0, "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    if-eqz v1, :cond_2

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 1685
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 1686
    const/4 v4, 0x2

    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 1688
    :cond_2
    if-eq v0, v1, :cond_3

    .line 1689
    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 1692
    .end local v0    # "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    :cond_3
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 1693
    cmp-long v4, v2, v8

    if-eqz v4, :cond_4

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_5

    .line 1694
    :cond_4
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 1699
    :cond_5
    cmp-long v4, v2, v8

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    .line 1700
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    .line 1701
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    goto :goto_0
.end method

.method setImpl(IJJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 52
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "isStandalone"    # Z
    .param p10, "workSource"    # Landroid/os/WorkSource;
    .param p11, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 934
    if-nez p8, :cond_0

    .line 935
    const-string v5, "AlarmManager"

    const-string v10, "set/setRepeating ignored because there is no intent"

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :goto_0
    return-void

    .line 944
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v12, -0x1

    cmp-long v5, v10, v12

    if-nez v5, :cond_1

    .line 945
    const-string v5, "AlarmManager"

    const-string v10, "IPO Shutdown so drop the alarm"

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 952
    :cond_1
    const-wide/32 v10, 0x2932e00

    cmp-long v5, p4, v10

    if-lez v5, :cond_2

    .line 953
    const-string v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Window length "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p4

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms suspiciously long; limiting to 1 hour"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const-wide/32 p4, 0x36ee80

    .line 960
    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v5, p6, v10

    if-lez v5, :cond_3

    const-wide/32 v10, 0xea60

    cmp-long v5, p6, v10

    if-gez v5, :cond_3

    .line 961
    const-string v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Suspiciously short interval "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p6

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " millis; expanding to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x3c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " seconds"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const-wide/32 p6, 0xea60

    .line 967
    :cond_3
    const-wide/16 v10, 0x0

    cmp-long v5, p2, v10

    if-gez v5, :cond_4

    .line 968
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v50, v0

    .line 969
    .local v50, "who":J
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v48, v0

    .line 970
    .local v48, "what":J
    const-string v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid alarm trigger time! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p2

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v50

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v48

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const-wide/16 p2, 0x0

    .line 977
    .end local v48    # "what":J
    .end local v50    # "who":J
    :cond_4
    const/4 v5, 0x7

    move/from16 v0, p1

    if-eq v0, v5, :cond_5

    const/16 v5, 0x8

    move/from16 v0, p1

    if-ne v0, v5, :cond_9

    .line 978
    :cond_5
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v12, -0x1

    cmp-long v5, v10, v12

    if-nez v5, :cond_6

    .line 979
    const-string v5, "AlarmManager"

    const-string v10, "alarm driver not open ,return!"

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 984
    :cond_6
    const-string v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "alarm set type 7 8, package name "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v39

    .line 987
    .local v39, "packageName":Ljava/lang/String;
    const/16 v46, 0x0

    .line 988
    .local v46, "setPackageName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    .line 989
    .local v44, "nowTime":J
    cmp-long v5, p2, v44

    if-gez v5, :cond_7

    .line 990
    const-string v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "power off alarm set time is wrong! nowTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v44

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ; triggerAtTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p2

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 994
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 995
    :try_start_0
    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;->removePoweroffAlarmLocked(Ljava/lang/String;)V

    .line 996
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v19

    .line 997
    .local v19, "poweroffAlarmUserId":I
    new-instance v4, Lcom/android/server/AlarmManagerService$Alarm;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/16 v20, 0x1

    move/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v14, p6

    move-object/from16 v16, p8

    move-object/from16 v17, p10

    move-object/from16 v18, p11

    invoke-direct/range {v4 .. v20}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;IZ)V

    .line 998
    .local v4, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/AlarmManagerService;->addPoweroffAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    .line 999
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 1000
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;->resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1002
    :cond_8
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1003
    const/16 p1, 0x0

    .line 1008
    .end local v4    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v19    # "poweroffAlarmUserId":I
    .end local v39    # "packageName":Ljava/lang/String;
    .end local v44    # "nowTime":J
    .end local v46    # "setPackageName":Ljava/lang/String;
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1009
    .local v6, "nowElapsed":J
    move-wide/from16 v0, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v42

    .line 1011
    .local v42, "nominalTrigger":J
    const-wide/16 v10, 0x1388

    add-long v40, v6, v10

    .line 1013
    .local v40, "minTrigger":J
    cmp-long v5, v42, v40

    if-lez v5, :cond_a

    move-wide/from16 v8, v42

    .line 1018
    .local v8, "triggerElapsed":J
    :goto_1
    sget-boolean v5, Lcom/android/server/AlarmManagerService;->mSupportAlarmGrouping:Z

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

    if-eqz v5, :cond_c

    const/4 v5, 0x3

    move/from16 v0, p1

    if-eq v0, v5, :cond_c

    .line 1021
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

    .end local v6    # "nowElapsed":J
    sget v15, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    const/16 v16, 0x1

    move/from16 v7, p1

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move-object/from16 v14, p8

    invoke-virtual/range {v6 .. v16}, Lcom/mediatek/amplus/AlarmManagerPlus;->getMaxTriggerTime(IJJJLandroid/app/PendingIntent;IZ)J

    move-result-wide v28

    .line 1022
    .local v28, "maxElapsed":J
    const-wide/16 v10, 0x0

    cmp-long v5, v28, v10

    if-gez v5, :cond_b

    .line 1023
    const-wide/16 v10, 0x0

    sub-long v28, v10, v28

    .line 1024
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mNeedGrouping:Z

    .line 1037
    :goto_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v37

    .line 1039
    .local v37, "userId":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1041
    :try_start_1
    const-string v5, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "APP set("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p8

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") : type="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " triggerAtTime="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p2

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " win="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p4

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " tElapsed="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " maxElapsed="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v28

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " interval="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p6

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " standalone="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p9

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v36

    move-object/from16 v20, p0

    move/from16 v21, p1

    move-wide/from16 v22, p2

    move-wide/from16 v24, v8

    move-wide/from16 v26, p4

    move-wide/from16 v30, p6

    move-object/from16 v32, p8

    move-object/from16 v33, p10

    move/from16 v34, p9

    move-object/from16 v35, p11

    invoke-direct/range {v20 .. v36}, Lcom/android/server/AlarmManagerService;->Amigo_setAlarm(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;ZLandroid/app/AlarmManager$AlarmClockInfo;I)[J

    move-result-object v47

    .line 1050
    .local v47, "tmp":[J
    const/4 v5, 0x0

    aget-wide p2, v47, v5

    .line 1051
    const/4 v5, 0x1

    aget-wide v8, v47, v5

    .line 1053
    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService;->mNeedGrouping:Z

    move/from16 v38, v0

    move-object/from16 v20, p0

    move/from16 v21, p1

    move-wide/from16 v22, p2

    move-wide/from16 v24, v8

    move-wide/from16 v26, p4

    move-wide/from16 v30, p6

    move-object/from16 v32, p8

    move/from16 v33, p9

    move-object/from16 v35, p10

    move-object/from16 v36, p11

    invoke-direct/range {v20 .. v38}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;ZZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;IZ)V

    .line 1055
    monitor-exit v10

    goto/16 :goto_0

    .end local v47    # "tmp":[J
    :catchall_0
    move-exception v5

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1002
    .end local v8    # "triggerElapsed":J
    .end local v28    # "maxElapsed":J
    .end local v37    # "userId":I
    .end local v40    # "minTrigger":J
    .end local v42    # "nominalTrigger":J
    .restart local v39    # "packageName":Ljava/lang/String;
    .restart local v44    # "nowTime":J
    .restart local v46    # "setPackageName":Ljava/lang/String;
    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .end local v39    # "packageName":Ljava/lang/String;
    .end local v44    # "nowTime":J
    .end local v46    # "setPackageName":Ljava/lang/String;
    .restart local v6    # "nowElapsed":J
    .restart local v40    # "minTrigger":J
    .restart local v42    # "nominalTrigger":J
    :cond_a
    move-wide/from16 v8, v40

    .line 1013
    goto/16 :goto_1

    .line 1026
    .end local v6    # "nowElapsed":J
    .restart local v8    # "triggerElapsed":J
    .restart local v28    # "maxElapsed":J
    :cond_b
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mNeedGrouping:Z

    .line 1027
    const/16 p9, 0x0

    goto/16 :goto_2

    .line 1029
    .end local v28    # "maxElapsed":J
    .restart local v6    # "nowElapsed":J
    :cond_c
    const-wide/16 v10, 0x0

    cmp-long v5, p4, v10

    if-nez v5, :cond_d

    .line 1030
    move-wide/from16 v28, v8

    .restart local v28    # "maxElapsed":J
    goto/16 :goto_2

    .line 1031
    .end local v28    # "maxElapsed":J
    :cond_d
    const-wide/16 v10, 0x0

    cmp-long v5, p4, v10

    if-gez v5, :cond_e

    move-wide/from16 v10, p6

    .line 1032
    invoke-static/range {v6 .. v11}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v28

    .restart local v28    # "maxElapsed":J
    goto/16 :goto_2

    .line 1034
    .end local v28    # "maxElapsed":J
    :cond_e
    add-long v28, v8, p4

    .restart local v28    # "maxElapsed":J
    goto/16 :goto_2
.end method

.method setTimeZoneImpl(Ljava/lang/String;)V
    .locals 8
    .param p1, "tz"    # Ljava/lang/String;

    .prologue
    .line 880
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 887
    .local v4, "zone":Ljava/util/TimeZone;
    const/4 v3, 0x0

    .line 888
    .local v3, "timeZoneWasChanged":Z
    monitor-enter p0

    .line 889
    :try_start_0
    const-string v5, "persist.sys.timezone"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 890
    .local v0, "current":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 891
    :cond_2
    sget-boolean v5, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v5, :cond_3

    .line 892
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timezone changed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", new="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_3
    const/4 v3, 0x1

    .line 895
    const-string v5, "persist.sys.timezone"

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 901
    .local v1, "gmtOffset":I
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const v5, 0xea60

    div-int v5, v1, v5

    neg-int v5, v5

    invoke-direct {p0, v6, v7, v5}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(JI)I

    .line 902
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 906
    if-eqz v3, :cond_0

    .line 907
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 908
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x20000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 909
    const-string v5, "time-zone"

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 910
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 902
    .end local v0    # "current":Ljava/lang/String;
    .end local v1    # "gmtOffset":I
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V
    .locals 5
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "type"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "first"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2400
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    .line 2401
    .local v1, "unimportant":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v1}, Landroid/os/PowerManager$WakeLock;->setUnimportantForLogging(Z)V

    .line 2402
    if-nez p5, :cond_0

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mLastWakeLockUnimportantForLogging:Z

    if-eqz v2, :cond_2

    .line 2403
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, p4}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    .line 2407
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mLastWakeLockUnimportantForLogging:Z

    .line 2408
    if-eqz p2, :cond_4

    .line 2409
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, p2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2424
    .end local v1    # "unimportant":Z
    :goto_2
    return-void

    .line 2400
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2405
    .restart local v1    # "unimportant":Z
    :cond_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2419
    .end local v1    # "unimportant":Z
    :catch_0
    move-exception v2

    .line 2423
    :cond_3
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    goto :goto_2

    .line 2413
    .restart local v1    # "unimportant":Z
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0

    .line 2415
    .local v0, "uid":I
    if-ltz v0, :cond_3

    .line 2416
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v3, Landroid/os/WorkSource;

    invoke-direct {v3, v0}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z
    .locals 40
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;JJ)Z"
        }
    .end annotation

    .prologue
    .line 1896
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/16 v38, 0x0

    .line 1900
    .local v38, "hasWakeup":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/AlarmManagerService$Batch;

    .line 1902
    .local v35, "batch":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v2, v2, p2

    if-lez v2, :cond_2

    .line 1968
    .end local v35    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    .line 1969
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 1970
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1972
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v2, :cond_9

    .line 1973
    const/16 v39, 0x0

    .local v39, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v39

    if-ge v0, v2, :cond_9

    .line 1974
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Triggering alarm #"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    add-int/lit8 v39, v39, 0x1

    goto :goto_0

    .line 1909
    .end local v39    # "i":I
    .restart local v35    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1911
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v33

    .line 1912
    .local v33, "N":I
    const/16 v39, 0x0

    .restart local v39    # "i":I
    :goto_1
    move/from16 v0, v39

    move/from16 v1, v33

    if-ge v0, v1, :cond_0

    .line 1913
    move-object/from16 v0, v35

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v34

    .line 1914
    .local v34, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v2, 0x1

    move-object/from16 v0, v34

    iput v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1916
    move-object/from16 v0, v34

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v2, :cond_3

    move-object/from16 v0, v34

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1917
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerService;->mNeedToSetBlockSocket:Z

    .line 1920
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1924
    move-object/from16 v0, v34

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_5

    .line 1927
    move-object/from16 v0, v34

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v2, v2

    move-object/from16 v0, v34

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long v6, p2, v6

    move-object/from16 v0, v34

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v6, v8

    add-long/2addr v2, v6

    long-to-int v2, v2

    move-object/from16 v0, v34

    iput v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1930
    move-object/from16 v0, v34

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v2, v2

    move-object/from16 v0, v34

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long v36, v2, v6

    .line 1932
    .local v36, "delta":J
    move-object/from16 v0, v34

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    add-long v4, v2, v36

    .line 1937
    .local v4, "nextElapsed":J
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->mSupportAlarmGrouping:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

    if-eqz v2, :cond_8

    move-object/from16 v0, v34

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    .line 1940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

    move-object/from16 v0, v34

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, v34

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, v34

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, v34

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    sget v11, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    const/4 v12, 0x1

    invoke-virtual/range {v2 .. v12}, Lcom/mediatek/amplus/AlarmManagerPlus;->getMaxTriggerTime(IJJJLandroid/app/PendingIntent;IZ)J

    move-result-wide v12

    .line 1945
    .local v12, "maxElapsed":J
    :goto_2
    const/4 v2, 0x1

    move-object/from16 v0, v34

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->needGrouping:Z

    .line 1947
    move-object/from16 v0, v35

    iget-boolean v14, v0, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    move-object/from16 v6, p0

    move-object/from16 v7, v34

    move-wide/from16 v8, v36

    move-wide v10, v4

    invoke-direct/range {v6 .. v14}, Lcom/android/server/AlarmManagerService;->Amigo_setRepeatAlarm(Lcom/android/server/AlarmManagerService$Alarm;JJJZ)J

    move-result-wide v4

    .line 1949
    move-object/from16 v0, v34

    iget v15, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, v34

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long v16, v2, v36

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v26, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v29, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->userId:I

    move/from16 v31, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->needGrouping:Z

    move/from16 v32, v0

    move-object/from16 v14, p0

    move-wide/from16 v18, v4

    move-wide/from16 v22, v12

    invoke-direct/range {v14 .. v32}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;ZZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;IZ)V

    .line 1955
    .end local v4    # "nextElapsed":J
    .end local v12    # "maxElapsed":J
    .end local v36    # "delta":J
    :cond_5
    move-object/from16 v0, v34

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v2, :cond_6

    .line 1956
    const/16 v38, 0x1

    .line 1960
    :cond_6
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v2, :cond_7

    .line 1961
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 1912
    :cond_7
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_1

    .line 1943
    .restart local v4    # "nextElapsed":J
    .restart local v36    # "delta":J
    :cond_8
    move-object/from16 v0, v34

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v12

    .restart local v12    # "maxElapsed":J
    goto :goto_2

    .line 1978
    .end local v4    # "nextElapsed":J
    .end local v12    # "maxElapsed":J
    .end local v33    # "N":I
    .end local v34    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v35    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v36    # "delta":J
    .end local v39    # "i":I
    :cond_9
    return v38
.end method

.method protected writeStringToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/io/File;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 3154
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/AlarmManagerService;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3158
    :goto_0
    return-void

    .line 3155
    :catch_0
    move-exception v0

    .line 3156
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File path retriving failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 3161
    if-nez p1, :cond_1

    .line 3184
    :cond_0
    :goto_0
    return-void

    .line 3163
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3164
    .local v1, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 3166
    .local v3, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 3167
    .local v2, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 3170
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3171
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 3172
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3176
    if-eqz v4, :cond_3

    .line 3178
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 3181
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 3179
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 3180
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "AlarmManager"

    const-string v6, "FAIL to writeStringToFile "

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 3181
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 3173
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 3174
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeStringToFile error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3176
    if-eqz v3, :cond_0

    .line 3178
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 3179
    :catch_2
    move-exception v0

    .line 3180
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "AlarmManager"

    const-string v6, "FAIL to writeStringToFile "

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3176
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_2

    .line 3178
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 3181
    :cond_2
    :goto_3
    throw v5

    .line 3179
    :catch_3
    move-exception v0

    .line 3180
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "AlarmManager"

    const-string v7, "FAIL to writeStringToFile "

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3176
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 3173
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_3
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_0
.end method
