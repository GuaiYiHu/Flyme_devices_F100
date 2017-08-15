.class public final Lcom/android/internal/app/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;,
        Lcom/android/internal/app/ProcessStats$ProcessDataCollection;,
        Lcom/android/internal/app/ProcessStats$PackageState;,
        Lcom/android/internal/app/ProcessStats$ServiceState;,
        Lcom/android/internal/app/ProcessStats$ProcessState;,
        Lcom/android/internal/app/ProcessStats$ProcessStateHolder;,
        Lcom/android/internal/app/ProcessStats$DurationsTable;,
        Lcom/android/internal/app/ProcessStats$PssAggr;
    }
.end annotation


# static fields
.field public static final ADJ_COUNT:I = 0x8

.field public static final ADJ_MEM_FACTOR_COUNT:I = 0x4

.field public static final ADJ_MEM_FACTOR_CRITICAL:I = 0x3

.field public static final ADJ_MEM_FACTOR_LOW:I = 0x2

.field public static final ADJ_MEM_FACTOR_MODERATE:I = 0x1

.field public static final ADJ_MEM_FACTOR_NORMAL:I = 0x0

.field public static final ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

.field static final ADJ_MEM_TAGS:[Ljava/lang/String;

.field public static final ADJ_NOTHING:I = -0x1

.field public static final ADJ_SCREEN_MOD:I = 0x4

.field public static final ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

.field public static final ADJ_SCREEN_OFF:I = 0x0

.field public static final ADJ_SCREEN_ON:I = 0x4

.field static final ADJ_SCREEN_TAGS:[Ljava/lang/String;

.field public static final ALL_MEM_ADJ:[I

.field public static final ALL_PROC_STATES:[I

.field public static final ALL_SCREEN_ADJ:[I

.field public static final BACKGROUND_PROC_STATES:[I

.field static final BAD_TABLE:[I

.field public static COMMIT_PERIOD:J = 0x0L

.field public static COMMIT_UPTIME_PERIOD:J = 0x0L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/app/ProcessStats;",
            ">;"
        }
    .end annotation
.end field

.field static final CSV_SEP:Ljava/lang/String; = "\t"

.field static final DEBUG:Z = false

.field static final DEBUG_PARCEL:Z = false

.field public static final FLAG_COMPLETE:I = 0x1

.field public static final FLAG_SHUTDOWN:I = 0x2

.field public static final FLAG_SYSPROPS:I = 0x4

.field static final LONGS_SIZE:I = 0x1000

.field private static final MAGIC:I = 0x50535453

.field public static final NON_CACHED_PROC_STATES:[I

.field static OFFSET_ARRAY_MASK:I = 0x0

.field static OFFSET_ARRAY_SHIFT:I = 0x0

.field static OFFSET_INDEX_MASK:I = 0x0

.field static OFFSET_INDEX_SHIFT:I = 0x0

.field static OFFSET_TYPE_MASK:I = 0x0

.field static OFFSET_TYPE_SHIFT:I = 0x0

.field private static final PARCEL_VERSION:I = 0x12

.field static final PROCESS_STATE_TO_STATE:[I

.field public static final PSS_AVERAGE:I = 0x2

.field public static final PSS_COUNT:I = 0x7

.field public static final PSS_MAXIMUM:I = 0x3

.field public static final PSS_MINIMUM:I = 0x1

.field public static final PSS_SAMPLE_COUNT:I = 0x0

.field public static final PSS_USS_AVERAGE:I = 0x5

.field public static final PSS_USS_MAXIMUM:I = 0x6

.field public static final PSS_USS_MINIMUM:I = 0x4

.field public static final SERVICE_NAME:Ljava/lang/String; = "procstats"

.field public static final STATE_BACKUP:I = 0x4

.field public static final STATE_CACHED_ACTIVITY:I = 0xb

.field public static final STATE_CACHED_ACTIVITY_CLIENT:I = 0xc

.field public static final STATE_CACHED_EMPTY:I = 0xd

.field public static final STATE_COUNT:I = 0xe

.field public static final STATE_HEAVY_WEIGHT:I = 0x5

.field public static final STATE_HOME:I = 0x9

.field public static final STATE_IMPORTANT_BACKGROUND:I = 0x3

.field public static final STATE_IMPORTANT_FOREGROUND:I = 0x2

.field public static final STATE_LAST_ACTIVITY:I = 0xa

.field static final STATE_NAMES:[Ljava/lang/String;

.field public static final STATE_NAMES_CSV:[Ljava/lang/String;

.field public static final STATE_NOTHING:I = -0x1

.field public static final STATE_PERSISTENT:I = 0x0

.field public static final STATE_RECEIVER:I = 0x8

.field public static final STATE_SERVICE:I = 0x6

.field public static final STATE_SERVICE_RESTARTING:I = 0x7

.field static final STATE_TAGS:[Ljava/lang/String;

.field public static final STATE_TOP:I = 0x1

.field public static final SYS_MEM_USAGE_CACHED_AVERAGE:I = 0x2

.field public static final SYS_MEM_USAGE_CACHED_MAXIMUM:I = 0x3

.field public static final SYS_MEM_USAGE_CACHED_MINIMUM:I = 0x1

.field public static final SYS_MEM_USAGE_COUNT:I = 0x10

.field public static final SYS_MEM_USAGE_FREE_AVERAGE:I = 0x5

.field public static final SYS_MEM_USAGE_FREE_MAXIMUM:I = 0x6

.field public static final SYS_MEM_USAGE_FREE_MINIMUM:I = 0x4

.field public static final SYS_MEM_USAGE_KERNEL_AVERAGE:I = 0xb

.field public static final SYS_MEM_USAGE_KERNEL_MAXIMUM:I = 0xc

.field public static final SYS_MEM_USAGE_KERNEL_MINIMUM:I = 0xa

.field public static final SYS_MEM_USAGE_NATIVE_AVERAGE:I = 0xe

.field public static final SYS_MEM_USAGE_NATIVE_MAXIMUM:I = 0xf

.field public static final SYS_MEM_USAGE_NATIVE_MINIMUM:I = 0xd

.field public static final SYS_MEM_USAGE_SAMPLE_COUNT:I = 0x0

.field public static final SYS_MEM_USAGE_ZRAM_AVERAGE:I = 0x8

.field public static final SYS_MEM_USAGE_ZRAM_MAXIMUM:I = 0x9

.field public static final SYS_MEM_USAGE_ZRAM_MINIMUM:I = 0x7

.field static final TAG:Ljava/lang/String; = "ProcessStats"

.field public static mCtmName:Ljava/lang/String;

.field public static mCtx:Ljava/lang/String;


# instance fields
.field mAddLongTable:[I

.field mAddLongTableSize:I

.field mCommonStringToIndex:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mFlags:I

.field mIndexToCommonString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mLongs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[J>;"
        }
    .end annotation
.end field

.field public mMemFactor:I

.field public final mMemFactorDurations:[J

.field mNextLong:I

.field public final mPackages:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/app/ProcessStats$PackageState;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field public mReadError:Ljava/lang/String;

.field mRunning:Z

.field mRuntime:Ljava/lang/String;

.field public mStartTime:J

.field public final mSysMemUsageArgs:[J

.field public mSysMemUsageTable:[I

.field public mSysMemUsageTableSize:I

.field public mTimePeriodEndRealtime:J

.field public mTimePeriodEndUptime:J

.field public mTimePeriodStartClock:J

.field public mTimePeriodStartClockStr:Ljava/lang/String;

.field public mTimePeriodStartRealtime:J

.field public mTimePeriodStartUptime:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 60
    const-wide/32 v0, 0xa4cb80

    sput-wide v0, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    .line 65
    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/android/internal/app/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    .line 126
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    .line 129
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    .line 131
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/app/ProcessStats;->NON_CACHED_PROC_STATES:[I

    .line 137
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/app/ProcessStats;->BACKGROUND_PROC_STATES:[I

    .line 143
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/internal/app/ProcessStats;->PROCESS_STATE_TO_STATE:[I

    .line 160
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    .line 167
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Persist"

    aput-object v1, v0, v3

    const-string v1, "Top    "

    aput-object v1, v0, v5

    const-string v1, "ImpFg  "

    aput-object v1, v0, v4

    const-string v1, "ImpBg  "

    aput-object v1, v0, v7

    const-string v1, "Backup "

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "HeavyWt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Service"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ServRst"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Receivr"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Home   "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "LastAct"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CchAct "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CchCAct"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CchEmty"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/app/ProcessStats;->STATE_NAMES:[Ljava/lang/String;

    .line 174
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "off"

    aput-object v1, v0, v3

    const-string/jumbo v1, "on"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    .line 178
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "norm"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mod"

    aput-object v1, v0, v5

    const-string v1, "low"

    aput-object v1, v0, v4

    const-string v1, "crit"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    .line 182
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "pers"

    aput-object v1, v0, v3

    const-string/jumbo v1, "top"

    aput-object v1, v0, v5

    const-string v1, "impfg"

    aput-object v1, v0, v4

    const-string v1, "impbg"

    aput-object v1, v0, v7

    const-string v1, "backup"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "heavy"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "service"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "service-rs"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "receiver"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "home"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lastact"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cch-activity"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cch-aclient"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "cch-empty"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/app/ProcessStats;->STATE_NAMES_CSV:[Ljava/lang/String;

    .line 188
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    const-string v1, "1"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    .line 192
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "n"

    aput-object v1, v0, v3

    const-string v1, "m"

    aput-object v1, v0, v5

    const-string v1, "l"

    aput-object v1, v0, v4

    const-string v1, "c"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_TAGS:[Ljava/lang/String;

    .line 196
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "p"

    aput-object v1, v0, v3

    const-string/jumbo v1, "t"

    aput-object v1, v0, v5

    const-string v1, "f"

    aput-object v1, v0, v4

    const-string v1, "b"

    aput-object v1, v0, v7

    const-string/jumbo v1, "u"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string/jumbo v2, "w"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "s"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "e"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/app/ProcessStats;->STATE_TAGS:[Ljava/lang/String;

    .line 209
    sput v3, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    .line 210
    const/16 v0, 0xff

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    .line 212
    const/16 v0, 0x8

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    .line 213
    const/16 v0, 0xff

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    .line 215
    const/16 v0, 0x10

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    .line 216
    const v0, 0xffff

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    .line 242
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/app/ProcessStats;->mCtmName:Ljava/lang/String;

    .line 243
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/app/ProcessStats;->mCtx:Ljava/lang/String;

    .line 416
    new-instance v0, Lcom/android/internal/app/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessStats$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1447
    new-array v0, v3, [I

    sput-object v0, Lcom/android/internal/app/ProcessStats;->BAD_TABLE:[I

    return-void

    .line 126
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    .line 129
    :array_1
    .array-data 4
        0x0
        0x4
    .end array-data

    .line 131
    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    .line 137
    :array_3
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    .line 143
    :array_4
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data

    .line 160
    :array_5
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 224
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 226
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    .line 227
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    .line 232
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats;->reset()V

    .line 266
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V

    .line 267
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 224
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 226
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    .line 227
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    .line 232
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    .line 260
    iput-boolean p1, p0, Lcom/android/internal/app/ProcessStats;->mRunning:Z

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats;->reset()V

    .line 262
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/app/ProcessStats;Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ProcessStats;
    .param p1, "x1"    # Landroid/os/Parcel;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessStats;->readTableFromParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method static addSysMemUsage([JI[JI)V
    .locals 12
    .param p0, "dstData"    # [J
    .param p1, "dstOff"    # I
    .param p2, "addData"    # [J
    .param p3, "addOff"    # I

    .prologue
    .line 392
    add-int/lit8 v5, p1, 0x0

    aget-wide v2, p0, v5

    .line 393
    .local v2, "dstCount":J
    add-int/lit8 v5, p3, 0x0

    aget-wide v0, p2, v5

    .line 394
    .local v0, "addCount":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    .line 395
    add-int/lit8 v5, p1, 0x0

    aput-wide v0, p0, v5

    .line 396
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x10

    if-ge v4, v5, :cond_3

    .line 397
    add-int v5, p1, v4

    add-int v6, p3, v4

    aget-wide v6, p2, v6

    aput-wide v6, p0, v5

    .line 396
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 399
    .end local v4    # "i":I
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_3

    .line 400
    add-int/lit8 v5, p1, 0x0

    add-long v6, v2, v0

    aput-wide v6, p0, v5

    .line 401
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_1
    const/16 v5, 0x10

    if-ge v4, v5, :cond_3

    .line 402
    add-int v5, p1, v4

    aget-wide v6, p0, v5

    add-int v5, p3, v4

    aget-wide v8, p2, v5

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 403
    add-int v5, p1, v4

    add-int v6, p3, v4

    aget-wide v6, p2, v6

    aput-wide v6, p0, v5

    .line 405
    :cond_1
    add-int v5, p1, v4

    add-int/lit8 v5, v5, 0x1

    add-int v6, p1, v4

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, p0, v6

    long-to-double v6, v6

    long-to-double v8, v2

    mul-double/2addr v6, v8

    add-int v8, p3, v4

    add-int/lit8 v8, v8, 0x1

    aget-wide v8, p2, v8

    long-to-double v8, v8

    long-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    add-long v8, v2, v0

    long-to-double v8, v8

    div-double/2addr v6, v8

    double-to-long v6, v6

    aput-wide v6, p0, v5

    .line 409
    add-int v5, p1, v4

    add-int/lit8 v5, v5, 0x2

    aget-wide v6, p0, v5

    add-int v5, p3, v4

    add-int/lit8 v5, v5, 0x2

    aget-wide v8, p2, v5

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    .line 410
    add-int v5, p1, v4

    add-int/lit8 v5, v5, 0x2

    add-int v6, p3, v4

    add-int/lit8 v6, v6, 0x2

    aget-wide v6, p2, v6

    aput-wide v6, p0, v5

    .line 401
    :cond_2
    add-int/lit8 v4, v4, 0x3

    goto :goto_1

    .line 414
    .end local v4    # "i":I
    :cond_3
    return-void
.end method

.method static binarySearch([III)I
    .locals 6
    .param p0, "array"    # [I
    .param p1, "size"    # I
    .param p2, "value"    # I

    .prologue
    .line 2065
    const/4 v1, 0x0

    .line 2066
    .local v1, "lo":I
    add-int/lit8 v0, p1, -0x1

    .line 2068
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 2069
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 2070
    .local v2, "mid":I
    aget v4, p0, v2

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int/2addr v4, v5

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v3, v4, v5

    .line 2072
    .local v3, "midVal":I
    if-ge v3, p2, :cond_0

    .line 2073
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 2074
    :cond_0
    if-le v3, p2, :cond_2

    .line 2075
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 2080
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method

.method private buildTimePeriodStartClockStr()V
    .locals 4

    .prologue
    .line 1443
    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 1445
    return-void
.end method

.method public static computeProcessData(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;J)V
    .locals 28
    .param p0, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p1, "data"    # Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    .param p2, "now"    # J

    .prologue
    .line 595
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 596
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    .line 598
    const/4 v11, 0x0

    .local v11, "is":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->screenStates:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_8

    .line 599
    const/4 v9, 0x0

    .local v9, "im":I
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->memStates:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v9, v0, :cond_7

    .line 600
    const/4 v10, 0x0

    .local v10, "ip":I
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->procStates:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_6

    .line 601
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->screenStates:[I

    move-object/from16 v22, v0

    aget v22, v22, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->memStates:[I

    move-object/from16 v23, v0

    aget v23, v23, v9

    add-int v22, v22, v23

    mul-int/lit8 v22, v22, 0xe

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->procStates:[I

    move-object/from16 v23, v0

    aget v23, v23, v10

    add-int v8, v22, v23

    .line 603
    .local v8, "bucket":I
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    move-result-wide v24

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 604
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssSampleCount(I)J

    move-result-wide v20

    .line 605
    .local v20, "samples":J
    const-wide/16 v22, 0x0

    cmp-long v22, v20, v22

    if-lez v22, :cond_1

    .line 606
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMinimum(I)J

    move-result-wide v16

    .line 607
    .local v16, "minPss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssAverage(I)J

    move-result-wide v4

    .line 608
    .local v4, "avgPss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMaximum(I)J

    move-result-wide v12

    .line 609
    .local v12, "maxPss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMinimum(I)J

    move-result-wide v18

    .line 610
    .local v18, "minUss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssAverage(I)J

    move-result-wide v6

    .line 611
    .local v6, "avgUss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMaximum(I)J

    move-result-wide v14

    .line 612
    .local v14, "maxUss":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_2

    .line 613
    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    .line 614
    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 615
    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 616
    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    .line 617
    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 618
    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    .line 637
    :cond_0
    :goto_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v22, v0

    add-long v22, v22, v20

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    .line 600
    .end local v4    # "avgPss":J
    .end local v6    # "avgUss":J
    .end local v12    # "maxPss":J
    .end local v14    # "maxUss":J
    .end local v16    # "minPss":J
    .end local v18    # "minUss":J
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 620
    .restart local v4    # "avgPss":J
    .restart local v6    # "avgUss":J
    .restart local v12    # "maxPss":J
    .restart local v14    # "maxUss":J
    .restart local v16    # "minPss":J
    .restart local v18    # "minUss":J
    :cond_2
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    move-wide/from16 v22, v0

    cmp-long v22, v16, v22

    if-gez v22, :cond_3

    .line 621
    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    .line 623
    :cond_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    long-to-double v0, v4

    move-wide/from16 v24, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v24, v0

    add-long v24, v24, v20

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 625
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    move-wide/from16 v22, v0

    cmp-long v22, v12, v22

    if-lez v22, :cond_4

    .line 626
    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 628
    :cond_4
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    move-wide/from16 v22, v0

    cmp-long v22, v18, v22

    if-gez v22, :cond_5

    .line 629
    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    .line 631
    :cond_5
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    long-to-double v0, v6

    move-wide/from16 v24, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v24, v0

    add-long v24, v24, v20

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 633
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    move-wide/from16 v22, v0

    cmp-long v22, v14, v22

    if-lez v22, :cond_0

    .line 634
    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    goto/16 :goto_3

    .line 599
    .end local v4    # "avgPss":J
    .end local v6    # "avgUss":J
    .end local v8    # "bucket":I
    .end local v12    # "maxPss":J
    .end local v14    # "maxUss":J
    .end local v16    # "minPss":J
    .end local v18    # "minUss":J
    .end local v20    # "samples":J
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 598
    .end local v10    # "ip":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 642
    .end local v9    # "im":I
    :cond_8
    return-void
.end method

.method static computeProcessTimeLocked(Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)J
    .locals 8
    .param p0, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p1, "screenStates"    # [I
    .param p2, "memStates"    # [I
    .param p3, "procStates"    # [I
    .param p4, "now"    # J

    .prologue
    .line 646
    const-wide/16 v4, 0x0

    .line 656
    .local v4, "totalTime":J
    const/4 v3, 0x0

    .local v3, "is":I
    :goto_0
    array-length v6, p1

    if-ge v3, v6, :cond_2

    .line 657
    const/4 v1, 0x0

    .local v1, "im":I
    :goto_1
    array-length v6, p2

    if-ge v1, v6, :cond_1

    .line 658
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_2
    array-length v6, p3

    if-ge v2, v6, :cond_0

    .line 659
    aget v6, p1, v3

    aget v7, p2, v1

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0xe

    aget v7, p3, v2

    add-int v0, v6, v7

    .line 661
    .local v0, "bucket":I
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 658
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 657
    .end local v0    # "bucket":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 656
    .end local v2    # "ip":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 665
    .end local v1    # "im":I
    :cond_2
    iput-wide v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpTotalTime:J

    .line 666
    return-wide v4
.end method

.method static dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V
    .locals 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sep"    # Ljava/lang/String;
    .param p2, "durations"    # [J
    .param p3, "curState"    # I
    .param p4, "curStartTime"    # J
    .param p6, "now"    # J

    .prologue
    .line 541
    const/4 v1, 0x0

    .local v1, "iscreen":I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_3

    .line 542
    const/4 v0, 0x0

    .local v0, "imem":I
    :goto_1
    const/4 v3, 0x4

    if-ge v0, v3, :cond_2

    .line 543
    add-int v2, v0, v1

    .line 544
    .local v2, "state":I
    aget-wide v4, p2, v2

    .line 545
    .local v4, "time":J
    if-ne p3, v2, :cond_0

    .line 546
    sub-long v6, p6, p4

    add-long/2addr v4, v6

    .line 548
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 549
    invoke-static {p0, v2, v4, v5}, Lcom/android/internal/app/ProcessStats;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 542
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 541
    .end local v2    # "state":I
    .end local v4    # "time":J
    :cond_2
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 553
    .end local v0    # "imem":I
    :cond_3
    return-void
.end method

.method static dumpAllProcessPssCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;)V
    .locals 23
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;

    .prologue
    .line 1277
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-ge v8, v15, :cond_0

    .line 1278
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v9, v15, v8

    .line 1279
    .local v9, "off":I
    sget v15, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v15, v9, v15

    sget v22, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v14, v15, v22

    .line 1280
    .local v14, "type":I
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v9, v0}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v6

    .line 1281
    .local v6, "count":J
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v15, v9, v0}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v12

    .line 1282
    .local v12, "min":J
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v15, v9, v0}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v4

    .line 1283
    .local v4, "avg":J
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v15, v9, v0}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v10

    .line 1284
    .local v10, "max":J
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v15, v9, v0}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v20

    .line 1285
    .local v20, "umin":J
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v15, v9, v0}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v16

    .line 1286
    .local v16, "uavg":J
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/16 v22, 0x6

    move/from16 v0, v22

    invoke-virtual {v15, v9, v0}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v18

    .line 1287
    .local v18, "umax":J
    const/16 v15, 0x2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1288
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/internal/app/ProcessStats;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 1289
    const/16 v15, 0x3a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1290
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 1291
    const/16 v15, 0x3a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1292
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 1293
    const/16 v15, 0x3a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1294
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1295
    const/16 v15, 0x3a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1296
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 1297
    const/16 v15, 0x3a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1298
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1299
    const/16 v15, 0x3a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1300
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1301
    const/16 v15, 0x3a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1302
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1277
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1304
    .end local v4    # "avg":J
    .end local v6    # "count":J
    .end local v9    # "off":I
    .end local v10    # "max":J
    .end local v12    # "min":J
    .end local v14    # "type":I
    .end local v16    # "uavg":J
    .end local v18    # "umax":J
    .end local v20    # "umin":J
    :cond_0
    return-void
.end method

.method static dumpAllProcessStateCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;J)V
    .locals 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p2, "now"    # J

    .prologue
    .line 1260
    const/4 v0, 0x0

    .line 1261
    .local v0, "didCurState":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    if-ge v1, v6, :cond_1

    .line 1262
    iget-object v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTable:[I

    aget v2, v6, v1

    .line 1263
    .local v2, "off":I
    sget v6, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v6, v2, v6

    sget v7, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v3, v6, v7

    .line 1264
    .local v3, "type":I
    iget-object v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v4

    .line 1265
    .local v4, "time":J
    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    if-ne v6, v3, :cond_0

    .line 1266
    const/4 v0, 0x1

    .line 1267
    iget-wide v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    sub-long v6, p2, v6

    add-long/2addr v4, v6

    .line 1269
    :cond_0
    invoke-static {p0, v3, v4, v5}, Lcom/android/internal/app/ProcessStats;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 1261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1271
    .end local v2    # "off":I
    .end local v3    # "type":I
    .end local v4    # "time":J
    :cond_1
    if-nez v0, :cond_2

    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 1272
    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    iget-wide v8, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    sub-long v8, p2, v8

    invoke-static {p0, v6, v8, v9}, Lcom/android/internal/app/ProcessStats;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 1274
    :cond_2
    return-void
.end method

.method private dumpProcessInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;Z)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p4, "dumpAll"    # Z

    .prologue
    .line 2187
    if-eqz p4, :cond_1

    .line 2188
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "myID="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2189
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2190
    const-string v0, " mCommonProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2191
    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2192
    const-string v0, " mPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2193
    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v0, :cond_0

    .line 2194
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mMultiPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2196
    :cond_0
    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq p3, v0, :cond_1

    .line 2197
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Common Proc: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2198
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2199
    const-string v0, " pkg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2202
    :cond_1
    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    if-eqz v0, :cond_2

    .line 2203
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActive="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2205
    :cond_2
    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    if-eqz v0, :cond_3

    .line 2206
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDead="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2208
    :cond_3
    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    if-nez v0, :cond_4

    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    if-eqz v0, :cond_5

    .line 2209
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNumActiveServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2210
    const-string v0, " mNumStartedServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2211
    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2213
    :cond_5
    return-void
.end method

.method static dumpProcessList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJ)V
    .locals 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;[I[I[IJ)V"
        }
    .end annotation

    .prologue
    .line 1067
    .local p2, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1068
    .local v1, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 1069
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1070
    .local v2, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1071
    iget-object v0, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1072
    const-string v0, " / "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1073
    iget v0, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-static {p0, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1074
    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1075
    iget v0, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1076
    const-string v0, " entries)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1077
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide/from16 v6, p6

    .line 1078
    invoke-static/range {v0 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V

    .line 1079
    iget v0, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-lez v0, :cond_0

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1080
    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/ProcessStats;->dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V

    .line 1068
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 1083
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_1
    return-void
.end method

.method public static dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V
    .locals 12
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sepScreenStates"    # Z
    .param p3, "screenStates"    # [I
    .param p4, "sepMemStates"    # Z
    .param p5, "memStates"    # [I
    .param p6, "sepProcStates"    # Z
    .param p7, "procStates"    # [I
    .param p8, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;Z[IZ[IZ[IJ)V"
        }
    .end annotation

    .prologue
    .line 1202
    .local p1, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const-string/jumbo v0, "process"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1203
    const-string v0, "\t"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1204
    const-string/jumbo v0, "uid"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1205
    const-string v0, "\t"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1206
    const-string/jumbo v0, "vers"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1207
    const-string v4, "\t"

    if-eqz p2, :cond_0

    move-object v3, p3

    :goto_0
    if-eqz p4, :cond_1

    move-object/from16 v2, p5

    :goto_1
    if-eqz p6, :cond_2

    move-object/from16 v0, p7

    :goto_2
    invoke-static {p0, v4, v3, v2, v0}, Lcom/android/internal/app/ProcessStats;->dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    .line 1210
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1211
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .local v10, "i":I
    :goto_3
    if-ltz v10, :cond_3

    .line 1212
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1213
    .local v1, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1214
    const-string v0, "\t"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1215
    iget v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-static {p0, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1216
    const-string v0, "\t"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1217
    iget v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    .line 1218
    invoke-static/range {v0 .. v9}, Lcom/android/internal/app/ProcessStats;->dumpProcessStateCsv(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Z[IZ[IZ[IJ)V

    .line 1220
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1211
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 1207
    .end local v1    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v10    # "i":I
    :cond_0
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 1222
    .restart local v10    # "i":I
    :cond_3
    return-void
.end method

.method static dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V
    .locals 18
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I

    .prologue
    .line 877
    const/4 v10, 0x0

    .line 878
    .local v10, "printedHeader":Z
    const/4 v12, -0x1

    .line 879
    .local v12, "printedScreen":I
    const/4 v8, 0x0

    .local v8, "is":I
    :goto_0
    move-object/from16 v0, p3

    array-length v13, v0

    if-ge v8, v13, :cond_8

    .line 880
    const/4 v11, -0x1

    .line 881
    .local v11, "printedMem":I
    const/4 v3, 0x0

    .local v3, "im":I
    :goto_1
    move-object/from16 v0, p4

    array-length v13, v0

    if-ge v3, v13, :cond_7

    .line 882
    const/4 v7, 0x0

    .local v7, "ip":I
    :goto_2
    move-object/from16 v0, p5

    array-length v13, v0

    if-ge v7, v13, :cond_6

    .line 883
    aget v9, p3, v8

    .line 884
    .local v9, "iscreen":I
    aget v6, p4, v3

    .line 885
    .local v6, "imem":I
    add-int v13, v9, v6

    mul-int/lit8 v13, v13, 0xe

    aget v14, p5, v7

    add-int v2, v13, v14

    .line 886
    .local v2, "bucket":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssSampleCount(I)J

    move-result-wide v4

    .line 887
    .local v4, "count":J
    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-lez v13, :cond_3

    .line 888
    if-nez v10, :cond_0

    .line 889
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 890
    const-string v13, "PSS/USS ("

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 891
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 892
    const-string v13, " entries):"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 893
    const/4 v10, 0x1

    .line 895
    :cond_0
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 896
    const-string v13, "  "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 897
    move-object/from16 v0, p3

    array-length v13, v0

    const/4 v14, 0x1

    if-le v13, v14, :cond_1

    .line 898
    if-eq v12, v9, :cond_4

    move v13, v9

    :goto_3
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 900
    move v12, v9

    .line 902
    :cond_1
    move-object/from16 v0, p4

    array-length v13, v0

    const/4 v14, 0x1

    if-le v13, v14, :cond_2

    .line 903
    if-eq v11, v6, :cond_5

    move v13, v6

    :goto_4
    const/16 v14, 0x2f

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 904
    move v11, v6

    .line 906
    :cond_2
    sget-object v13, Lcom/android/internal/app/ProcessStats;->STATE_NAMES:[Ljava/lang/String;

    aget v14, p5, v7

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, ": "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 907
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 908
    const-string v13, " samples "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 909
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMinimum(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 910
    const-string v13, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 911
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssAverage(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 912
    const-string v13, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 913
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMaximum(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 914
    const-string v13, " / "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 915
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMinimum(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 916
    const-string v13, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 917
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssAverage(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 918
    const-string v13, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 919
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMaximum(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 920
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 882
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 898
    :cond_4
    const/4 v13, -0x1

    goto/16 :goto_3

    .line 903
    :cond_5
    const/4 v13, -0x1

    goto/16 :goto_4

    .line 881
    .end local v2    # "bucket":I
    .end local v4    # "count":J
    .end local v6    # "imem":I
    .end local v9    # "iscreen":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 879
    .end local v7    # "ip":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 925
    .end local v3    # "im":I
    .end local v11    # "printedMem":I
    :cond_8
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    if-eqz v13, :cond_9

    .line 926
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, "Killed for excessive wake locks: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 927
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string v13, " times"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    :cond_9
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    if-eqz v13, :cond_a

    .line 930
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, "Killed for excessive CPU use: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 931
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string v13, " times"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 933
    :cond_a
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-eqz v13, :cond_b

    .line 934
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, "Killed from cached state: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 935
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string v13, " times from pss "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 936
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v13, "-"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 937
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v13, "-"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 938
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 940
    :cond_b
    return-void
.end method

.method static dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V
    .locals 20
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J

    .prologue
    .line 829
    const-wide/16 v16, 0x0

    .line 830
    .local v16, "totalTime":J
    const/4 v11, -0x1

    .line 831
    .local v11, "printedScreen":I
    const/4 v8, 0x0

    .local v8, "is":I
    :goto_0
    move-object/from16 v0, p3

    array-length v13, v0

    if-ge v8, v13, :cond_8

    .line 832
    const/4 v10, -0x1

    .line 833
    .local v10, "printedMem":I
    const/4 v5, 0x0

    .local v5, "im":I
    :goto_1
    move-object/from16 v0, p4

    array-length v13, v0

    if-ge v5, v13, :cond_7

    .line 834
    const/4 v7, 0x0

    .local v7, "ip":I
    :goto_2
    move-object/from16 v0, p5

    array-length v13, v0

    if-ge v7, v13, :cond_6

    .line 835
    aget v9, p3, v8

    .line 836
    .local v9, "iscreen":I
    aget v6, p4, v5

    .line 837
    .local v6, "imem":I
    add-int v13, v9, v6

    mul-int/lit8 v13, v13, 0xe

    aget v18, p5, v7

    add-int v4, v13, v18

    .line 838
    .local v4, "bucket":I
    move-object/from16 v0, p2

    move-wide/from16 v1, p6

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    move-result-wide v14

    .line 839
    .local v14, "time":J
    const-string v12, ""

    .line 840
    .local v12, "running":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    if-ne v13, v4, :cond_0

    .line 841
    const-string v12, " (running)"

    .line 843
    :cond_0
    const-wide/16 v18, 0x0

    cmp-long v13, v14, v18

    if-eqz v13, :cond_3

    .line 844
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 845
    move-object/from16 v0, p3

    array-length v13, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v13, v0, :cond_1

    .line 846
    if-eq v11, v9, :cond_4

    move v13, v9

    :goto_3
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 848
    move v11, v9

    .line 850
    :cond_1
    move-object/from16 v0, p4

    array-length v13, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v13, v0, :cond_2

    .line 851
    if-eq v10, v6, :cond_5

    move v13, v6

    :goto_4
    const/16 v18, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v13, v1}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 852
    move v10, v6

    .line 854
    :cond_2
    sget-object v13, Lcom/android/internal/app/ProcessStats;->STATE_NAMES:[Ljava/lang/String;

    aget v18, p5, v7

    aget-object v13, v13, v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, ": "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 855
    move-object/from16 v0, p0

    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 856
    add-long v16, v16, v14

    .line 834
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 846
    :cond_4
    const/4 v13, -0x1

    goto :goto_3

    .line 851
    :cond_5
    const/4 v13, -0x1

    goto :goto_4

    .line 833
    .end local v4    # "bucket":I
    .end local v6    # "imem":I
    .end local v9    # "iscreen":I
    .end local v12    # "running":Ljava/lang/String;
    .end local v14    # "time":J
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 831
    .end local v7    # "ip":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 861
    .end local v5    # "im":I
    .end local v10    # "printedMem":I
    :cond_8
    const-wide/16 v18, 0x0

    cmp-long v13, v16, v18

    if-eqz v13, :cond_b

    .line 862
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 863
    move-object/from16 v0, p3

    array-length v13, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v13, v0, :cond_9

    .line 864
    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 866
    :cond_9
    move-object/from16 v0, p4

    array-length v13, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v13, v0, :cond_a

    .line 867
    const/4 v13, -0x1

    const/16 v18, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v13, v1}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 869
    :cond_a
    const-string v13, "TOTAL  : "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 870
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 871
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 873
    :cond_b
    return-void
.end method

.method static dumpProcessStateCsv(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Z[IZ[IZ[IJ)V
    .locals 28
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p2, "sepScreenStates"    # Z
    .param p3, "screenStates"    # [I
    .param p4, "sepMemStates"    # Z
    .param p5, "memStates"    # [I
    .param p6, "sepProcStates"    # Z
    .param p7, "procStates"    # [I
    .param p8, "now"    # J

    .prologue
    .line 1033
    if-eqz p2, :cond_0

    move-object/from16 v0, p3

    array-length v9, v0

    .line 1034
    .local v9, "NSS":I
    :goto_0
    if-eqz p4, :cond_1

    move-object/from16 v0, p5

    array-length v5, v0

    .line 1035
    .local v5, "NMS":I
    :goto_1
    if-eqz p6, :cond_2

    move-object/from16 v0, p7

    array-length v7, v0

    .line 1036
    .local v7, "NPS":I
    :goto_2
    const/16 v16, 0x0

    .local v16, "iss":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v9, :cond_11

    .line 1037
    const/4 v12, 0x0

    .local v12, "ims":I
    :goto_4
    if-ge v12, v5, :cond_10

    .line 1038
    const/4 v14, 0x0

    .local v14, "ips":I
    :goto_5
    if-ge v14, v7, :cond_f

    .line 1039
    if-eqz p2, :cond_3

    aget v24, p3, v16

    .line 1040
    .local v24, "vsscreen":I
    :goto_6
    if-eqz p4, :cond_4

    aget v22, p5, v12

    .line 1041
    .local v22, "vsmem":I
    :goto_7
    if-eqz p6, :cond_5

    aget v23, p7, v14

    .line 1042
    .local v23, "vsproc":I
    :goto_8
    if-eqz p2, :cond_6

    const/4 v8, 0x1

    .line 1043
    .local v8, "NSA":I
    :goto_9
    if-eqz p4, :cond_7

    const/4 v4, 0x1

    .line 1044
    .local v4, "NMA":I
    :goto_a
    if-eqz p6, :cond_8

    const/4 v6, 0x1

    .line 1045
    .local v6, "NPA":I
    :goto_b
    const-wide/16 v18, 0x0

    .line 1046
    .local v18, "totalTime":J
    const/4 v15, 0x0

    .local v15, "isa":I
    :goto_c
    if-ge v15, v8, :cond_e

    .line 1047
    const/4 v11, 0x0

    .local v11, "ima":I
    :goto_d
    if-ge v11, v4, :cond_d

    .line 1048
    const/4 v13, 0x0

    .local v13, "ipa":I
    :goto_e
    if-ge v13, v6, :cond_c

    .line 1049
    if-eqz p2, :cond_9

    const/16 v21, 0x0

    .line 1050
    .local v21, "vascreen":I
    :goto_f
    if-eqz p4, :cond_a

    const/16 v17, 0x0

    .line 1051
    .local v17, "vamem":I
    :goto_10
    if-eqz p6, :cond_b

    const/16 v20, 0x0

    .line 1052
    .local v20, "vaproc":I
    :goto_11
    add-int v25, v24, v21

    add-int v25, v25, v22

    add-int v25, v25, v17

    mul-int/lit8 v25, v25, 0xe

    add-int v25, v25, v23

    add-int v10, v25, v20

    .line 1054
    .local v10, "bucket":I
    move-object/from16 v0, p1

    move-wide/from16 v1, p8

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    move-result-wide v26

    add-long v18, v18, v26

    .line 1048
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 1033
    .end local v4    # "NMA":I
    .end local v5    # "NMS":I
    .end local v6    # "NPA":I
    .end local v7    # "NPS":I
    .end local v8    # "NSA":I
    .end local v9    # "NSS":I
    .end local v10    # "bucket":I
    .end local v11    # "ima":I
    .end local v12    # "ims":I
    .end local v13    # "ipa":I
    .end local v14    # "ips":I
    .end local v15    # "isa":I
    .end local v16    # "iss":I
    .end local v17    # "vamem":I
    .end local v18    # "totalTime":J
    .end local v20    # "vaproc":I
    .end local v21    # "vascreen":I
    .end local v22    # "vsmem":I
    .end local v23    # "vsproc":I
    .end local v24    # "vsscreen":I
    :cond_0
    const/4 v9, 0x1

    goto :goto_0

    .line 1034
    .restart local v9    # "NSS":I
    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    .line 1035
    .restart local v5    # "NMS":I
    :cond_2
    const/4 v7, 0x1

    goto :goto_2

    .line 1039
    .restart local v7    # "NPS":I
    .restart local v12    # "ims":I
    .restart local v14    # "ips":I
    .restart local v16    # "iss":I
    :cond_3
    const/16 v24, 0x0

    goto :goto_6

    .line 1040
    .restart local v24    # "vsscreen":I
    :cond_4
    const/16 v22, 0x0

    goto :goto_7

    .line 1041
    .restart local v22    # "vsmem":I
    :cond_5
    const/16 v23, 0x0

    goto :goto_8

    .line 1042
    .restart local v23    # "vsproc":I
    :cond_6
    move-object/from16 v0, p3

    array-length v8, v0

    goto :goto_9

    .line 1043
    .restart local v8    # "NSA":I
    :cond_7
    move-object/from16 v0, p5

    array-length v4, v0

    goto :goto_a

    .line 1044
    .restart local v4    # "NMA":I
    :cond_8
    move-object/from16 v0, p7

    array-length v6, v0

    goto :goto_b

    .line 1049
    .restart local v6    # "NPA":I
    .restart local v11    # "ima":I
    .restart local v13    # "ipa":I
    .restart local v15    # "isa":I
    .restart local v18    # "totalTime":J
    :cond_9
    aget v21, p3, v15

    goto :goto_f

    .line 1050
    .restart local v21    # "vascreen":I
    :cond_a
    aget v17, p5, v11

    goto :goto_10

    .line 1051
    .restart local v17    # "vamem":I
    :cond_b
    aget v20, p7, v13

    goto :goto_11

    .line 1047
    .end local v17    # "vamem":I
    .end local v21    # "vascreen":I
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 1046
    .end local v13    # "ipa":I
    :cond_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 1058
    .end local v11    # "ima":I
    :cond_e
    const-string v25, "\t"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1059
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1038
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    .line 1037
    .end local v4    # "NMA":I
    .end local v6    # "NPA":I
    .end local v8    # "NSA":I
    .end local v15    # "isa":I
    .end local v18    # "totalTime":J
    .end local v22    # "vsmem":I
    .end local v23    # "vsproc":I
    .end local v24    # "vsscreen":I
    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 1036
    .end local v14    # "ips":I
    :cond_10
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 1063
    .end local v12    # "ims":I
    :cond_11
    return-void
.end method

.method static dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V
    .locals 13
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "screenStates"    # [I
    .param p5, "memStates"    # [I
    .param p6, "procStates"    # [I
    .param p7, "now"    # J
    .param p9, "totalTime"    # J
    .param p11, "full"    # Z

    .prologue
    .line 1088
    new-instance v6, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v6, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 1090
    .local v6, "totals":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    move-wide/from16 v0, p7

    invoke-static {p1, v6, v0, v1}, Lcom/android/internal/app/ProcessStats;->computeProcessData(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;J)V

    .line 1091
    iget-wide v8, v6, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    long-to-double v8, v8

    move-wide/from16 v0, p9

    long-to-double v10, v0

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double v4, v8, v10

    .line 1093
    .local v4, "percentage":D
    const-wide v8, 0x3f747ae147ae147bL    # 0.005

    cmpl-double v7, v4, v8

    if-gez v7, :cond_0

    iget-wide v8, v6, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    .line 1094
    :cond_0
    if-eqz p2, :cond_1

    .line 1095
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1097
    :cond_1
    if-eqz p3, :cond_2

    .line 1098
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1100
    :cond_2
    move-wide/from16 v0, p9

    move/from16 v2, p11

    invoke-virtual {v6, p0, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->print(Ljava/io/PrintWriter;JZ)V

    .line 1101
    if-eqz p2, :cond_3

    .line 1102
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1105
    :cond_3
    return-void
.end method

.method static dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IZJJ)V
    .locals 13
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "inclUidVers"    # Z
    .param p7, "now"    # J
    .param p9, "totalTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;[I[I[IZJJ)V"
        }
    .end annotation

    .prologue
    .line 1110
    .local p2, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1111
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1112
    .local v2, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1113
    const-string v1, "* "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1114
    iget-object v1, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1115
    const-string v1, " / "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1116
    iget v1, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-static {p0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1117
    const-string v1, " / v"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1118
    iget v1, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1119
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1120
    const-string v4, "         TOTAL: "

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1122
    const-string v4, "    Persistent: "

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x0

    aput v3, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1124
    const-string v4, "           Top: "

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput v3, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1126
    const-string v4, "        Imp Fg: "

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x2

    aput v3, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1128
    const-string v4, "        Imp Bg: "

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x3

    aput v3, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1130
    const-string v4, "        Backup: "

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x4

    aput v3, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1132
    const-string v4, "     Heavy Wgt: "

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x5

    aput v3, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1134
    const-string v4, "       Service: "

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x6

    aput v3, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1136
    const-string v4, "    Service Rs: "

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x7

    aput v3, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1138
    const-string v4, "      Receiver: "

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/16 v3, 0x8

    aput v3, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1140
    const-string v4, "        (Home): "

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/16 v3, 0x9

    aput v3, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1142
    const-string v4, "    (Last Act): "

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/16 v3, 0xa

    aput v3, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1144
    const-string v4, "      (Cached): "

    const/4 v1, 0x3

    new-array v7, v1, [I

    fill-array-data v7, :array_0

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1110
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 1148
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_0
    return-void

    .line 1144
    nop

    :array_0
    .array-data 4
        0xb
        0xc
        0xd
    .end array-data
.end method

.method static dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V
    .locals 12
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # I
    .param p5, "serviceName"    # Ljava/lang/String;
    .param p6, "svc"    # Lcom/android/internal/app/ProcessStats$ServiceState;
    .param p7, "serviceType"    # I
    .param p8, "opCount"    # I
    .param p9, "curState"    # I
    .param p10, "curStartTime"    # J
    .param p12, "now"    # J

    .prologue
    .line 558
    if-gtz p8, :cond_0

    .line 592
    :goto_0
    return-void

    .line 561
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 562
    const-string v9, ","

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 564
    const-string v9, ","

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 566
    const-string v9, ","

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 567
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 568
    const-string v9, ","

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 569
    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 570
    const-string v9, ","

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 571
    move/from16 v0, p8

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 572
    const/4 v2, 0x0

    .line 573
    .local v2, "didCurState":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    move-object/from16 v0, p6

    iget v9, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mDurationsTableSize:I

    if-ge v3, v9, :cond_3

    .line 574
    move-object/from16 v0, p6

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mDurationsTable:[I

    aget v5, v9, v3

    .line 575
    .local v5, "off":I
    sget v9, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v9, v5, v9

    sget v10, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v8, v9, v10

    .line 576
    .local v8, "type":I
    div-int/lit8 v4, v8, 0x4

    .line 577
    .local v4, "memFactor":I
    rem-int/lit8 v8, v8, 0x4

    .line 578
    move/from16 v0, p7

    if-eq v8, v0, :cond_1

    .line 573
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 581
    :cond_1
    move-object/from16 v0, p6

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v6

    .line 582
    .local v6, "time":J
    move/from16 v0, p9

    if-ne v0, v4, :cond_2

    .line 583
    const/4 v2, 0x1

    .line 584
    sub-long v10, p12, p10

    add-long/2addr v6, v10

    .line 586
    :cond_2
    invoke-static {p0, v4, v6, v7}, Lcom/android/internal/app/ProcessStats;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    goto :goto_2

    .line 588
    .end local v4    # "memFactor":I
    .end local v5    # "off":I
    .end local v6    # "time":J
    .end local v8    # "type":I
    :cond_3
    if-nez v2, :cond_4

    const/4 v9, -0x1

    move/from16 v0, p9

    if-eq v0, v9, :cond_4

    .line 589
    sub-long v10, p12, p10

    move/from16 v0, p9

    invoke-static {p0, v0, v10, v11}, Lcom/android/internal/app/ProcessStats;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 591
    :cond_4
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method public static dumpSingleServiceTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIJJ)J
    .locals 23
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "service"    # Lcom/android/internal/app/ProcessStats$ServiceState;
    .param p3, "serviceType"    # I
    .param p4, "curState"    # I
    .param p5, "curStartTime"    # J
    .param p7, "now"    # J

    .prologue
    .line 2421
    const-wide/16 v20, 0x0

    .line 2422
    .local v20, "totalTime":J
    const/4 v15, -0x1

    .line 2423
    .local v15, "printedScreen":I
    const/4 v13, 0x0

    .local v13, "iscreen":I
    :goto_0
    const/16 v4, 0x8

    if-ge v13, v4, :cond_6

    .line 2424
    const/4 v14, -0x1

    .line 2425
    .local v14, "printedMem":I
    const/4 v12, 0x0

    .local v12, "imem":I
    :goto_1
    const/4 v4, 0x4

    if-ge v12, v4, :cond_5

    .line 2426
    add-int v9, v12, v13

    .local v9, "state":I
    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v10, p7

    .line 2427
    # invokes: Lcom/android/internal/app/ProcessStats$ServiceState;->getDuration(IIJIJ)J
    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats$ServiceState;->access$000(Lcom/android/internal/app/ProcessStats$ServiceState;IIJIJ)J

    move-result-wide v18

    .line 2429
    .local v18, "time":J
    const-string v16, ""

    .line 2430
    .local v16, "running":Ljava/lang/String;
    move/from16 v0, p4

    if-ne v0, v9, :cond_0

    if-eqz p0, :cond_0

    .line 2431
    const-string v16, " (running)"

    .line 2433
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-eqz v4, :cond_2

    .line 2434
    if-eqz p0, :cond_1

    .line 2435
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2436
    if-eq v15, v13, :cond_3

    move v4, v13

    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 2438
    move v15, v13

    .line 2439
    if-eq v14, v12, :cond_4

    move v4, v12

    :goto_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 2440
    move v14, v12

    .line 2441
    const-string v4, ": "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2442
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2444
    :cond_1
    add-long v20, v20, v18

    .line 2425
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2436
    :cond_3
    const/4 v4, -0x1

    goto :goto_2

    .line 2439
    :cond_4
    const/4 v4, -0x1

    goto :goto_3

    .line 2423
    .end local v9    # "state":I
    .end local v16    # "running":Ljava/lang/String;
    .end local v18    # "time":J
    :cond_5
    add-int/lit8 v13, v13, 0x4

    goto :goto_0

    .line 2448
    .end local v12    # "imem":I
    .end local v14    # "printedMem":I
    :cond_6
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-eqz v4, :cond_7

    if-eqz p0, :cond_7

    .line 2449
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2450
    const-string v4, "    TOTAL: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2451
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2452
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 2454
    :cond_7
    return-wide v20
.end method

.method public static dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J
    .locals 12
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "durations"    # [J
    .param p3, "curState"    # I
    .param p4, "curStartTime"    # J
    .param p6, "now"    # J

    .prologue
    .line 501
    const-wide/16 v8, 0x0

    .line 502
    .local v8, "totalTime":J
    const/4 v3, -0x1

    .line 503
    .local v3, "printedScreen":I
    const/4 v1, 0x0

    .local v1, "iscreen":I
    :goto_0
    const/16 v10, 0x8

    if-ge v1, v10, :cond_6

    .line 504
    const/4 v2, -0x1

    .line 505
    .local v2, "printedMem":I
    const/4 v0, 0x0

    .local v0, "imem":I
    :goto_1
    const/4 v10, 0x4

    if-ge v0, v10, :cond_5

    .line 506
    add-int v5, v0, v1

    .line 507
    .local v5, "state":I
    aget-wide v6, p2, v5

    .line 508
    .local v6, "time":J
    const-string v4, ""

    .line 509
    .local v4, "running":Ljava/lang/String;
    if-ne p3, v5, :cond_0

    .line 510
    sub-long v10, p6, p4

    add-long/2addr v6, v10

    .line 511
    if-eqz p0, :cond_0

    .line 512
    const-string v4, " (running)"

    .line 515
    :cond_0
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-eqz v10, :cond_2

    .line 516
    if-eqz p0, :cond_1

    .line 517
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 518
    if-eq v3, v1, :cond_3

    move v10, v1

    :goto_2
    invoke-static {p0, v10}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 520
    move v3, v1

    .line 521
    if-eq v2, v0, :cond_4

    move v10, v0

    :goto_3
    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 522
    move v2, v0

    .line 523
    const-string v10, ": "

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 524
    invoke-static {v6, v7, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    :cond_1
    add-long/2addr v8, v6

    .line 505
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 518
    :cond_3
    const/4 v10, -0x1

    goto :goto_2

    .line 521
    :cond_4
    const/4 v10, -0x1

    goto :goto_3

    .line 503
    .end local v4    # "running":Ljava/lang/String;
    .end local v5    # "state":I
    .end local v6    # "time":J
    :cond_5
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 530
    .end local v0    # "imem":I
    .end local v2    # "printedMem":I
    :cond_6
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_7

    if-eqz p0, :cond_7

    .line 531
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 532
    const-string v10, "    TOTAL: "

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 533
    invoke-static {v8, v9, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 534
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 536
    :cond_7
    return-wide v8
.end method

.method static dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V
    .locals 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sep"    # Ljava/lang/String;
    .param p2, "screenStates"    # [I
    .param p3, "memStates"    # [I
    .param p4, "procStates"    # [I

    .prologue
    const/4 v7, 0x1

    .line 1000
    if-eqz p2, :cond_5

    array-length v2, p2

    .line 1001
    .local v2, "NS":I
    :goto_0
    if-eqz p3, :cond_6

    array-length v0, p3

    .line 1002
    .local v0, "NM":I
    :goto_1
    if-eqz p4, :cond_7

    array-length v1, p4

    .line 1003
    .local v1, "NP":I
    :goto_2
    const/4 v5, 0x0

    .local v5, "is":I
    :goto_3
    if-ge v5, v2, :cond_a

    .line 1004
    const/4 v3, 0x0

    .local v3, "im":I
    :goto_4
    if-ge v3, v0, :cond_9

    .line 1005
    const/4 v4, 0x0

    .local v4, "ip":I
    :goto_5
    if-ge v4, v1, :cond_8

    .line 1006
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1007
    const/4 v6, 0x0

    .line 1008
    .local v6, "printed":Z
    if-eqz p2, :cond_0

    array-length v8, p2

    if-le v8, v7, :cond_0

    .line 1009
    aget v8, p2, v5

    invoke-static {p0, v8}, Lcom/android/internal/app/ProcessStats;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    .line 1010
    const/4 v6, 0x1

    .line 1012
    :cond_0
    if-eqz p3, :cond_2

    array-length v8, p3

    if-le v8, v7, :cond_2

    .line 1013
    if-eqz v6, :cond_1

    .line 1014
    const-string v8, "-"

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1016
    :cond_1
    aget v8, p3, v3

    invoke-static {p0, v8}, Lcom/android/internal/app/ProcessStats;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    .line 1017
    const/4 v6, 0x1

    .line 1019
    :cond_2
    if-eqz p4, :cond_4

    array-length v8, p4

    if-le v8, v7, :cond_4

    .line 1020
    if-eqz v6, :cond_3

    .line 1021
    const-string v8, "-"

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1023
    :cond_3
    sget-object v8, Lcom/android/internal/app/ProcessStats;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v9, p4, v4

    aget-object v8, v8, v9

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1005
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .end local v0    # "NM":I
    .end local v1    # "NP":I
    .end local v2    # "NS":I
    .end local v3    # "im":I
    .end local v4    # "ip":I
    .end local v5    # "is":I
    .end local v6    # "printed":Z
    :cond_5
    move v2, v7

    .line 1000
    goto :goto_0

    .restart local v2    # "NS":I
    :cond_6
    move v0, v7

    .line 1001
    goto :goto_1

    .restart local v0    # "NM":I
    :cond_7
    move v1, v7

    .line 1002
    goto :goto_2

    .line 1004
    .restart local v1    # "NP":I
    .restart local v3    # "im":I
    .restart local v4    # "ip":I
    .restart local v5    # "is":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1003
    .end local v4    # "ip":I
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1028
    .end local v3    # "im":I
    :cond_a
    return-void
.end method

.method static printAdjTag(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I

    .prologue
    .line 1241
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    .line 1242
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_TAGS:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 1243
    return-void
.end method

.method static printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I
    .param p2, "value"    # J

    .prologue
    .line 1253
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1254
    invoke-static {p0, p1}, Lcom/android/internal/app/ProcessStats;->printAdjTag(Ljava/io/PrintWriter;I)V

    .line 1255
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1256
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 1257
    return-void
.end method

.method static printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "array"    # [Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "mod"    # I

    .prologue
    .line 1225
    div-int v0, p2, p3

    .line 1226
    .local v0, "index":I
    if-ltz v0, :cond_0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1227
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1231
    :goto_0
    mul-int v1, v0, p3

    sub-int v1, p2, v1

    return v1

    .line 1229
    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0
.end method

.method static printLongOffset(I)Ljava/lang/String;
    .locals 3
    .param p0, "off"    # I

    .prologue
    .line 2047
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2048
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v1, p0, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2049
    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v1, p0, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2050
    const-string/jumbo v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v1, p0, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2051
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static printMemLabel(Ljava/io/PrintWriter;IC)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I
    .param p2, "sep"    # C

    .prologue
    .line 461
    packed-switch p1, :pswitch_data_0

    .line 483
    const-string v0, "????"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 484
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 463
    :pswitch_0
    const-string v0, "    "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 464
    if-eqz p2, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 467
    :pswitch_1
    const-string v0, "Norm"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 468
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 471
    :pswitch_2
    const-string v0, "Mod "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 472
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 475
    :pswitch_3
    const-string v0, "Low "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 476
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 479
    :pswitch_4
    const-string v0, "Crit"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 480
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 461
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static printMemLabelCsv(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    .prologue
    .line 490
    if-ltz p1, :cond_0

    .line 491
    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    .line 492
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    const-string v0, "???"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static printPercent(Ljava/io/PrintWriter;D)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "fraction"    # D

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1151
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    .line 1152
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 1153
    const-string v0, "%.2f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1159
    :goto_0
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1160
    return-void

    .line 1154
    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 1155
    const-string v0, "%.1f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1157
    :cond_1
    const-string v0, "%.0f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static printProcStateTag(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I

    .prologue
    .line 1235
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    const/16 v1, 0x38

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    .line 1236
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_TAGS:[Ljava/lang/String;

    const/16 v1, 0xe

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    .line 1237
    sget-object v0, Lcom/android/internal/app/ProcessStats;->STATE_TAGS:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 1238
    return-void
.end method

.method static printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I
    .param p2, "value"    # J

    .prologue
    .line 1246
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1247
    invoke-static {p0, p1}, Lcom/android/internal/app/ProcessStats;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 1248
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1249
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 1250
    return-void
.end method

.method private static printScreenLabel(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    .prologue
    .line 428
    packed-switch p1, :pswitch_data_0

    .line 439
    :pswitch_0
    const-string v0, "????/"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 442
    :goto_0
    return-void

    .line 430
    :pswitch_1
    const-string v0, "     "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :pswitch_2
    const-string v0, "SOff/"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :pswitch_3
    const-string v0, "SOn /"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static printScreenLabelCsv(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    .prologue
    .line 445
    packed-switch p1, :pswitch_data_0

    .line 455
    :pswitch_0
    const-string v0, "???"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 458
    :goto_0
    :pswitch_1
    return-void

    .line 449
    :pswitch_2
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :pswitch_3
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static printSizeValue(Ljava/io/PrintWriter;J)V
    .locals 9
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "number"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x44800000    # 1024.0f

    const/high16 v4, 0x44610000    # 900.0f

    .line 1163
    long-to-float v0, p1

    .line 1164
    .local v0, "result":F
    const-string v1, ""

    .line 1165
    .local v1, "suffix":Ljava/lang/String;
    cmpl-float v3, v0, v4

    if-lez v3, :cond_0

    .line 1166
    const-string v1, "KB"

    .line 1167
    div-float/2addr v0, v5

    .line 1169
    :cond_0
    cmpl-float v3, v0, v4

    if-lez v3, :cond_1

    .line 1170
    const-string v1, "MB"

    .line 1171
    div-float/2addr v0, v5

    .line 1173
    :cond_1
    cmpl-float v3, v0, v4

    if-lez v3, :cond_2

    .line 1174
    const-string v1, "GB"

    .line 1175
    div-float/2addr v0, v5

    .line 1177
    :cond_2
    cmpl-float v3, v0, v4

    if-lez v3, :cond_3

    .line 1178
    const-string v1, "TB"

    .line 1179
    div-float/2addr v0, v5

    .line 1181
    :cond_3
    cmpl-float v3, v0, v4

    if-lez v3, :cond_4

    .line 1182
    const-string v1, "PB"

    .line 1183
    div-float/2addr v0, v5

    .line 1186
    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_5

    .line 1187
    const-string v3, "%.2f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1195
    .local v2, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1197
    return-void

    .line 1188
    .end local v2    # "value":Ljava/lang/String;
    :cond_5
    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_6

    .line 1189
    const-string v3, "%.1f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1190
    .end local v2    # "value":Ljava/lang/String;
    :cond_6
    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_7

    .line 1191
    const-string v3, "%.0f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1193
    .end local v2    # "value":Ljava/lang/String;
    :cond_7
    const-string v3, "%.0f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method private readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "val"    # I
    .param p3, "what"    # Ljava/lang/String;

    .prologue
    .line 1692
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "got":I
    if-eq v0, p2, :cond_0

    .line 1693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1694
    const/4 v1, 0x0

    .line 1696
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "version"    # I

    .prologue
    .line 1528
    const/16 v2, 0x9

    if-gt p2, v2, :cond_0

    .line 1529
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1541
    :goto_0
    return-object v2

    .line 1531
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1532
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 1533
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 1535
    :cond_1
    xor-int/lit8 v0, v0, -0x1

    .line 1536
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1537
    .local v1, "name":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v0, :cond_2

    .line 1538
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1540
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 1541
    goto :goto_0
.end method

.method private readCompactedLongArray(Landroid/os/Parcel;I[JI)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "version"    # I
    .param p3, "array"    # [J
    .param p4, "num"    # I

    .prologue
    .line 1491
    const/16 v4, 0xa

    if-gt p2, v4, :cond_1

    .line 1492
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->readLongArray([J)V

    .line 1513
    :cond_0
    return-void

    .line 1495
    :cond_1
    array-length v0, p3

    .line 1496
    .local v0, "alen":I
    if-le p4, v0, :cond_2

    .line 1497
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad array lengths: got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " array is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1500
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p4, :cond_4

    .line 1501
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1502
    .local v3, "val":I
    if-ltz v3, :cond_3

    .line 1503
    int-to-long v4, v3

    aput-wide v4, p3, v2

    .line 1500
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1505
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1506
    .local v1, "bottom":I
    xor-int/lit8 v4, v3, -0x1

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v1

    or-long/2addr v4, v6

    aput-wide v4, p3, v2

    goto :goto_1

    .line 1509
    .end local v1    # "bottom":I
    .end local v3    # "val":I
    :cond_4
    :goto_2
    if-ge v2, v0, :cond_0

    .line 1510
    const-wide/16 v4, 0x0

    aput-wide v4, p3, v2

    .line 1511
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method static readFully(Ljava/io/InputStream;[I)[B
    .locals 7
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "outLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1700
    const/4 v4, 0x0

    .line 1701
    .local v4, "pos":I
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 1702
    .local v2, "initialAvail":I
    if-lez v2, :cond_1

    add-int/lit8 v5, v2, 0x1

    :goto_0
    new-array v1, v5, [B

    .line 1704
    .local v1, "data":[B
    :cond_0
    :goto_1
    array-length v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1707
    .local v0, "amt":I
    if-gez v0, :cond_2

    .line 1710
    aput v4, p1, v6

    .line 1711
    return-object v1

    .line 1702
    .end local v0    # "amt":I
    .end local v1    # "data":[B
    :cond_1
    const/16 v5, 0x4000

    goto :goto_0

    .line 1713
    .restart local v0    # "amt":I
    .restart local v1    # "data":[B
    :cond_2
    add-int/2addr v4, v0

    .line 1714
    array-length v5, v1

    if-lt v4, v5, :cond_0

    .line 1715
    add-int/lit16 v5, v4, 0x4000

    new-array v3, v5, [B

    .line 1718
    .local v3, "newData":[B
    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1719
    move-object v1, v3

    goto :goto_1
.end method

.method private readTableFromParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1451
    .local v1, "size":I
    if-gez v1, :cond_1

    .line 1452
    const-string v3, "ProcessStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring existing stats; bad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " table size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    sget-object v2, Lcom/android/internal/app/ProcessStats;->BAD_TABLE:[I

    .line 1469
    :cond_0
    :goto_0
    return-object v2

    .line 1455
    :cond_1
    if-nez v1, :cond_2

    move-object v2, v3

    .line 1456
    goto :goto_0

    .line 1458
    :cond_2
    new-array v2, v1, [I

    .line 1459
    .local v2, "table":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 1460
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v2, v0

    .line 1463
    aget v4, v2, v0

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ProcessStats;->validateLongOffset(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1464
    const-string v4, "ProcessStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring existing stats; bad "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " table entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v0

    invoke-static {v6}, Lcom/android/internal/app/ProcessStats;->printLongOffset(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 1466
    goto :goto_0

    .line 1459
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private resetCommon()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    .line 1407
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats;->buildTimePeriodStartClockStr()V

    .line 1408
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    .line 1409
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartUptime:J

    .line 1410
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1411
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    const/16 v1, 0x1000

    new-array v1, v1, [J

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1412
    iput v2, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    .line 1413
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    .line 1414
    iput-object v3, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    .line 1415
    iput v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    .line 1416
    iput-wide v4, p0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 1417
    iput-object v3, p0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1418
    iput v2, p0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    .line 1419
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ProcessStats;->evaluateSystemProperties(Z)Z

    .line 1420
    return-void
.end method

.method public static setName(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1424
    sput-object p0, Lcom/android/internal/app/ProcessStats;->mCtmName:Ljava/lang/String;

    .line 1425
    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CTM_FLOW setName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/app/ProcessStats;->mCtmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    return-void
.end method

.method private writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1516
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1517
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1518
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1525
    :goto_0
    return-void

    .line 1521
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1522
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1524
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeCompactedLongArray(Landroid/os/Parcel;[JI)V
    .locals 10
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "array"    # [J
    .param p3, "num"    # I

    .prologue
    const-wide/32 v8, 0x7fffffff

    .line 1473
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 1474
    aget-wide v4, p2, v1

    .line 1475
    .local v4, "val":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 1476
    const-string v3, "ProcessStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Time val negative: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    const-wide/16 v4, 0x0

    .line 1479
    :cond_0
    cmp-long v3, v4, v8

    if-gtz v3, :cond_1

    .line 1480
    long-to-int v3, v4

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1473
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1482
    :cond_1
    const/16 v3, 0x20

    shr-long v6, v4, v3

    and-long/2addr v6, v8

    long-to-int v3, v6

    xor-int/lit8 v2, v3, -0x1

    .line 1483
    .local v2, "top":I
    const-wide/32 v6, 0xfffffff

    and-long/2addr v6, v4

    long-to-int v0, v6

    .line 1484
    .local v0, "bottom":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1485
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1488
    .end local v0    # "bottom":I
    .end local v2    # "top":I
    .end local v4    # "val":J
    :cond_2
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/app/ProcessStats;)V
    .locals 40
    .param p1, "other"    # Lcom/android/internal/app/ProcessStats;

    .prologue
    .line 270
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v29

    .line 271
    .local v29, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    const/16 v18, 0x0

    .local v18, "ip":I
    :goto_0
    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_6

    .line 272
    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 273
    .local v5, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/util/SparseArray;

    .line 274
    .local v35, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/16 v21, 0x0

    .local v21, "iu":I
    :goto_1
    invoke-virtual/range {v35 .. v35}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_5

    .line 275
    move-object/from16 v0, v35

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 276
    .local v6, "uid":I
    move-object/from16 v0, v35

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/util/SparseArray;

    .line 277
    .local v37, "versions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v22, 0x0

    .local v22, "iv":I
    :goto_2
    invoke-virtual/range {v37 .. v37}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_4

    .line 278
    move-object/from16 v0, v37

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 279
    .local v7, "vers":I
    move-object/from16 v0, v37

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 280
    .local v27, "otherState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 281
    .local v14, "NPROCS":I
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 282
    .local v15, "NSRVS":I
    const/16 v19, 0x0

    .local v19, "iproc":I
    :goto_3
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    .line 283
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 284
    .local v26, "otherProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v0, v26

    if-eq v4, v0, :cond_1

    .line 287
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v4}, Lcom/android/internal/app/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v8

    .line 289
    .local v8, "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v4, v8, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-ne v4, v8, :cond_0

    .line 291
    const/4 v4, 0x1

    iput-boolean v4, v8, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 293
    .local v24, "now":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v30

    .line 295
    .local v30, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v4, v8, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-wide/from16 v0, v24

    invoke-virtual {v8, v4, v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->clone(Ljava/lang/String;J)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v8

    .line 296
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v9, v8, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .end local v24    # "now":J
    .end local v30    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_0
    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->add(Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 282
    .end local v8    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 301
    .end local v26    # "otherProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_2
    const/16 v20, 0x0

    .local v20, "isvc":I
    :goto_4
    move/from16 v0, v20

    if-ge v0, v15, :cond_3

    .line 302
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 305
    .local v28, "otherSvc":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v28

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v34

    .line 307
    .local v34, "thisSvc":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->add(Lcom/android/internal/app/ProcessStats$ServiceState;)V

    .line 301
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 277
    .end local v28    # "otherSvc":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v34    # "thisSvc":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_3
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 274
    .end local v7    # "vers":I
    .end local v14    # "NPROCS":I
    .end local v15    # "NSRVS":I
    .end local v19    # "iproc":I
    .end local v20    # "isvc":I
    .end local v27    # "otherState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_4
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 271
    .end local v6    # "uid":I
    .end local v22    # "iv":I
    .end local v37    # "versions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 313
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v21    # "iu":I
    .end local v35    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v31

    .line 314
    .local v31, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/16 v18, 0x0

    :goto_5
    invoke-virtual/range {v31 .. v31}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_9

    .line 315
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/util/SparseArray;

    .line 316
    .local v36, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v21, 0x0

    .restart local v21    # "iu":I
    :goto_6
    invoke-virtual/range {v36 .. v36}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_8

    .line 317
    move-object/from16 v0, v36

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 318
    .restart local v6    # "uid":I
    move-object/from16 v0, v36

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 319
    .restart local v26    # "otherProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v9, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 321
    .restart local v8    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v8, :cond_7

    .line 323
    new-instance v8, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v8    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v0, v26

    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    move-object/from16 v0, v26

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object/from16 v9, p0

    move v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V

    .line 325
    .restart local v8    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v9, v6, v8}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 326
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v0, v26

    iget v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v9}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v33

    .line 328
    .local v33, "thisState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 329
    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .end local v33    # "thisState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_7
    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->add(Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 316
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 314
    .end local v6    # "uid":I
    .end local v8    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v26    # "otherProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_8
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_5

    .line 336
    .end local v21    # "iu":I
    .end local v36    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_9
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_7
    const/16 v4, 0x8

    move/from16 v0, v17

    if-ge v0, v4, :cond_a

    .line 340
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    aget-wide v10, v4, v17

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    aget-wide v12, v9, v17

    add-long/2addr v10, v12

    aput-wide v10, v4, v17

    .line 336
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 343
    :cond_a
    const/16 v17, 0x0

    :goto_8
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    move/from16 v0, v17

    if-ge v0, v4, :cond_b

    .line 344
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    aget v16, v4, v17

    .line 345
    .local v16, "ent":I
    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v4, v16, v4

    sget v9, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v32, v4, v9

    .line 346
    .local v32, "state":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    sget v9, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v9, v16, v9

    sget v10, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v9, v10

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [J

    .line 347
    .local v23, "longs":[J
    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v4, v16, v4

    sget v9, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int/2addr v4, v9

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/app/ProcessStats;->addSysMemUsage(I[JI)V

    .line 343
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 350
    .end local v16    # "ent":I
    .end local v23    # "longs":[J
    .end local v32    # "state":I
    :cond_b
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    cmp-long v4, v10, v12

    if-gez v4, :cond_c

    .line 351
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    .line 352
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 354
    :cond_c
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v38, v0

    sub-long v12, v12, v38

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    .line 355
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartUptime:J

    move-wide/from16 v38, v0

    sub-long v12, v12, v38

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    .line 356
    return-void
.end method

.method addLongData(III)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "type"    # I
    .param p3, "num"    # I

    .prologue
    .line 2010
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ProcessStats;->allocLongData(I)I

    move-result v0

    .line 2011
    .local v0, "off":I
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    :goto_0
    iget v2, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    or-int v3, p2, v0

    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    .line 2014
    iget v1, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    .line 2015
    return v0

    .line 2011
    :cond_0
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    goto :goto_0
.end method

.method addSysMemUsage(I[JI)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "data"    # [J
    .param p3, "dataOff"    # I

    .prologue
    .line 375
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    iget v4, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    invoke-static {v3, v4, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 377
    .local v0, "idx":I
    if-ltz v0, :cond_0

    .line 378
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    aget v2, v3, v0

    .line 386
    .local v2, "off":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v4, v2, v4

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 387
    .local v1, "longs":[J
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v3, v2, v3

    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int v0, v3, v4

    .line 388
    invoke-static {v1, v0, p2, p3}, Lcom/android/internal/app/ProcessStats;->addSysMemUsage([JI[JI)V

    .line 389
    return-void

    .line 380
    .end local v1    # "longs":[J
    .end local v2    # "off":I
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    iput-object v3, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    .line 381
    iget v3, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    iput v3, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    .line 382
    xor-int/lit8 v3, v0, -0x1

    const/16 v4, 0x10

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/internal/app/ProcessStats;->addLongData(III)I

    move-result v2

    .line 383
    .restart local v2    # "off":I
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    iput-object v3, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    .line 384
    iget v3, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    iput v3, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    goto :goto_0
.end method

.method public addSysMemUsage(JJJJJ)V
    .locals 7
    .param p1, "cachedMem"    # J
    .param p3, "freeMem"    # J
    .param p5, "zramMem"    # J
    .param p7, "kernelMem"    # J
    .param p9, "nativeMem"    # J

    .prologue
    .line 360
    iget v2, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 361
    iget v2, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    mul-int/lit8 v1, v2, 0xe

    .line 362
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    aput-wide v4, v2, v3

    .line 363
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0x1

    aput-wide p1, v2, v3

    .line 365
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0x4

    aput-wide p3, v2, v3

    .line 366
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0x7

    aput-wide p5, v2, v3

    .line 367
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0xa

    aput-wide p7, v2, v3

    .line 368
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0xd

    aput-wide p9, v2, v3

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->addSysMemUsage(I[JI)V

    .line 372
    .end local v0    # "i":I
    .end local v1    # "state":I
    :cond_1
    return-void
.end method

.method allocLongData(I)I
    .locals 6
    .param p1, "num"    # I

    .prologue
    .line 2019
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 2020
    .local v2, "whichLongs":I
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 2021
    .local v0, "longs":[J
    iget v3, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    add-int/2addr v3, p1

    array-length v4, v0

    if-le v3, v4, :cond_0

    .line 2022
    const/16 v3, 0x1000

    new-array v0, v3, [J

    .line 2023
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2024
    add-int/lit8 v2, v2, 0x1

    .line 2025
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    .line 2027
    :cond_0
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shl-int v3, v2, v3

    iget v4, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shl-int/2addr v4, v5

    or-int v1, v3, v4

    .line 2028
    .local v1, "off":I
    iget v3, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    .line 2029
    return v1
.end method

.method collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "itemName"    # Ljava/lang/String;

    .prologue
    .line 2635
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2636
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2637
    .local v0, "ITEMLEN":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2638
    .local v1, "PKGLEN":I
    if-ne v0, v1, :cond_1

    .line 2639
    const-string p2, ""

    .line 2646
    .end local v0    # "ITEMLEN":I
    .end local v1    # "PKGLEN":I
    .end local p2    # "itemName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 2640
    .restart local v0    # "ITEMLEN":I
    .restart local v1    # "PKGLEN":I
    .restart local p2    # "itemName":Ljava/lang/String;
    :cond_1
    if-lt v0, v1, :cond_0

    .line 2641
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    .line 2642
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;
    .locals 23
    .param p1, "screenStates"    # [I
    .param p2, "memStates"    # [I
    .param p3, "procStates"    # [I
    .param p4, "sortProcStates"    # [I
    .param p5, "now"    # J
    .param p7, "reqPackage"    # Ljava/lang/String;
    .param p8, "activeOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I[I[IJ",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2585
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 2586
    .local v10, "foundProcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v17

    .line 2587
    .local v17, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    const/4 v12, 0x0

    .local v12, "ip":I
    :goto_0
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v12, v3, :cond_8

    .line 2588
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 2589
    .local v19, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/SparseArray;

    .line 2590
    .local v20, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/4 v14, 0x0

    .local v14, "iu":I
    :goto_1
    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v14, v3, :cond_7

    .line 2591
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/SparseArray;

    .line 2592
    .local v22, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 2593
    .local v9, "NVERS":I
    const/4 v15, 0x0

    .local v15, "iv":I
    :goto_2
    if-ge v15, v9, :cond_6

    .line 2594
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 2595
    .local v21, "state":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 2596
    .local v8, "NPROCS":I
    if-eqz p7, :cond_0

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/16 v18, 0x1

    .line 2597
    .local v18, "pkgMatch":Z
    :goto_3
    const/4 v13, 0x0

    .local v13, "iproc":I
    :goto_4
    if-ge v13, v8, :cond_5

    .line 2598
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2599
    .local v2, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v18, :cond_3

    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2597
    :cond_1
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 2596
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v13    # "iproc":I
    .end local v18    # "pkgMatch":Z
    :cond_2
    const/16 v18, 0x0

    goto :goto_3

    .line 2602
    .restart local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v13    # "iproc":I
    .restart local v18    # "pkgMatch":Z
    :cond_3
    if-eqz p8, :cond_4

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2605
    :cond_4
    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2593
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 2590
    .end local v8    # "NPROCS":I
    .end local v13    # "iproc":I
    .end local v18    # "pkgMatch":Z
    .end local v21    # "state":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2587
    .end local v9    # "NVERS":I
    .end local v15    # "iv":I
    .end local v22    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2610
    .end local v14    # "iu":I
    .end local v19    # "pkgName":Ljava/lang/String;
    .end local v20    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_8
    new-instance v16, Ljava/util/ArrayList;

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2611
    .local v16, "outProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v11, v3, :cond_a

    .line 2612
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .restart local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p5

    .line 2613
    invoke-static/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->computeProcessTimeLocked(Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_9

    .line 2614
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2615
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_9

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    .line 2616
    invoke-static/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->computeProcessTimeLocked(Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)J

    .line 2611
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 2620
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_a
    new-instance v3, Lcom/android/internal/app/ProcessStats$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/app/ProcessStats$2;-><init>(Lcom/android/internal/app/ProcessStats;)V

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2631
    return-object v16
.end method

.method public computeTotalMemoryUse(Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 48
    .param p1, "data"    # Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;
    .param p2, "now"    # J

    .prologue
    .line 681
    const-wide/16 v42, 0x0

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 682
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    const/16 v41, 0xe

    move/from16 v0, v41

    if-ge v14, v0, :cond_0

    .line 683
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    move-object/from16 v41, v0

    const-wide/16 v42, 0x0

    aput-wide v42, v41, v14

    .line 684
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    move-object/from16 v41, v0

    const-wide/16 v42, 0x0

    aput-wide v42, v41, v14

    .line 685
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    move-object/from16 v41, v0

    const-wide/16 v42, 0x0

    aput-wide v42, v41, v14

    .line 686
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aput v42, v41, v14

    .line 682
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 688
    :cond_0
    const/4 v14, 0x0

    :goto_1
    const/16 v41, 0x10

    move/from16 v0, v41

    if-ge v14, v0, :cond_1

    .line 689
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    move-object/from16 v41, v0

    const-wide/16 v42, 0x0

    aput-wide v42, v41, v14

    .line 688
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 691
    :cond_1
    const-wide/16 v42, 0x0

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    .line 692
    const-wide/16 v42, 0x0

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    .line 693
    const-wide/16 v42, 0x0

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    .line 694
    const-wide/16 v42, 0x0

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    .line 695
    const-wide/16 v42, 0x0

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    .line 696
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 697
    const/16 v41, 0x10

    move/from16 v0, v41

    new-array v0, v0, [J

    move-object/from16 v38, v0

    .line 698
    .local v38, "totalMemUsage":[J
    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    move/from16 v41, v0

    move/from16 v0, v41

    if-ge v14, v0, :cond_2

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    move-object/from16 v41, v0

    aget v9, v41, v14

    .line 700
    .local v9, "ent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    sget v42, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v42, v9, v42

    sget v43, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int v42, v42, v43

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [J

    .line 701
    .local v20, "longs":[J
    sget v41, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v41, v9, v41

    sget v42, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int v15, v41, v42

    .line 702
    .local v15, "idx":I
    const/16 v41, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v41

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, Lcom/android/internal/app/ProcessStats;->addSysMemUsage([JI[JI)V

    .line 698
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 704
    .end local v9    # "ent":I
    .end local v15    # "idx":I
    .end local v20    # "longs":[J
    :cond_2
    const/16 v18, 0x0

    .local v18, "is":I
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    move/from16 v0, v18

    move/from16 v1, v41

    if-ge v0, v1, :cond_6

    .line 705
    const/16 v16, 0x0

    .local v16, "im":I
    :goto_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    move/from16 v0, v16

    move/from16 v1, v41

    if-ge v0, v1, :cond_5

    .line 706
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    move-object/from16 v41, v0

    aget v41, v41, v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    move-object/from16 v42, v0

    aget v42, v42, v16

    add-int v21, v41, v42

    .line 707
    .local v21, "memBucket":I
    mul-int/lit8 v32, v21, 0xe

    .line 708
    .local v32, "stateBucket":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v41, v0

    aget-wide v22, v41, v21

    .line 709
    .local v22, "memTime":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move/from16 v41, v0

    move/from16 v0, v41

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 710
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-wide/from16 v42, v0

    sub-long v42, p2, v42

    add-long v22, v22, v42

    .line 712
    :cond_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-wide/from16 v42, v0

    add-long v42, v42, v22

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    move/from16 v42, v0

    move-object/from16 v0, v41

    move/from16 v1, v42

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v33

    .line 714
    .local v33, "sysIdx":I
    move-object/from16 v20, v38

    .line 715
    .restart local v20    # "longs":[J
    const/4 v15, 0x0

    .line 716
    .restart local v15    # "idx":I
    if-ltz v33, :cond_4

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    move-object/from16 v41, v0

    aget v9, v41, v33

    .line 718
    .restart local v9    # "ent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    sget v42, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v42, v9, v42

    sget v43, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int v42, v42, v43

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [J

    .line 719
    .local v37, "tmpLongs":[J
    sget v41, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v41, v9, v41

    sget v42, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int v36, v41, v42

    .line 720
    .local v36, "tmpIdx":I
    add-int/lit8 v41, v36, 0x0

    aget-wide v42, v37, v41

    const-wide/16 v44, 0x3

    cmp-long v41, v42, v44

    if-ltz v41, :cond_4

    .line 721
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v42

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, Lcom/android/internal/app/ProcessStats;->addSysMemUsage([JI[JI)V

    .line 722
    move-object/from16 v20, v37

    .line 723
    move/from16 v15, v36

    .line 726
    .end local v9    # "ent":I
    .end local v36    # "tmpIdx":I
    .end local v37    # "tmpLongs":[J
    :cond_4
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    move-wide/from16 v42, v0

    add-int/lit8 v41, v15, 0x2

    aget-wide v44, v20, v41

    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v44, v44, v46

    add-double v42, v42, v44

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    .line 728
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    move-wide/from16 v42, v0

    add-int/lit8 v41, v15, 0x5

    aget-wide v44, v20, v41

    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v44, v44, v46

    add-double v42, v42, v44

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    .line 730
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    move-wide/from16 v42, v0

    add-int/lit8 v41, v15, 0x8

    aget-wide v44, v20, v41

    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v44, v44, v46

    add-double v42, v42, v44

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    .line 732
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    move-wide/from16 v42, v0

    add-int/lit8 v41, v15, 0xb

    aget-wide v44, v20, v41

    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v44, v44, v46

    add-double v42, v42, v44

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    .line 734
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    move-wide/from16 v42, v0

    add-int/lit8 v41, v15, 0xe

    aget-wide v44, v20, v41

    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v44, v44, v46

    add-double v42, v42, v44

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    .line 736
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-int/lit8 v41, v15, 0x0

    aget-wide v44, v20, v41

    add-long v42, v42, v44

    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 705
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 704
    .end local v15    # "idx":I
    .end local v20    # "longs":[J
    .end local v21    # "memBucket":I
    .end local v22    # "memTime":J
    .end local v32    # "stateBucket":I
    .end local v33    # "sysIdx":I
    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 739
    .end local v16    # "im":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v28

    .line 740
    .local v28, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/16 v17, 0x0

    .local v17, "iproc":I
    :goto_5
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v41

    move/from16 v0, v17

    move/from16 v1, v41

    if-ge v0, v1, :cond_18

    .line 741
    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/util/SparseArray;

    .line 742
    .local v40, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v19, 0x0

    .local v19, "iu":I
    :goto_6
    invoke-virtual/range {v40 .. v40}, Landroid/util/SparseArray;->size()I

    move-result v41

    move/from16 v0, v19

    move/from16 v1, v41

    if-ge v0, v1, :cond_17

    .line 743
    move-object/from16 v0, v40

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 744
    .local v27, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    new-instance v12, Lcom/android/internal/app/ProcessStats$PssAggr;

    invoke-direct {v12}, Lcom/android/internal/app/ProcessStats$PssAggr;-><init>()V

    .line 745
    .local v12, "fgPss":Lcom/android/internal/app/ProcessStats$PssAggr;
    new-instance v7, Lcom/android/internal/app/ProcessStats$PssAggr;

    invoke-direct {v7}, Lcom/android/internal/app/ProcessStats$PssAggr;-><init>()V

    .line 746
    .local v7, "bgPss":Lcom/android/internal/app/ProcessStats$PssAggr;
    new-instance v8, Lcom/android/internal/app/ProcessStats$PssAggr;

    invoke-direct {v8}, Lcom/android/internal/app/ProcessStats$PssAggr;-><init>()V

    .line 747
    .local v8, "cachedPss":Lcom/android/internal/app/ProcessStats$PssAggr;
    const/4 v13, 0x0

    .line 748
    .local v13, "havePss":Z
    const/4 v14, 0x0

    :goto_7
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    move/from16 v41, v0

    move/from16 v0, v41

    if-ge v14, v0, :cond_a

    .line 749
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTable:[I

    move-object/from16 v41, v0

    aget v26, v41, v14

    .line 750
    .local v26, "off":I
    sget v41, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v41, v26, v41

    sget v42, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v39, v41, v42

    .line 751
    .local v39, "type":I
    rem-int/lit8 v29, v39, 0xe

    .line 752
    .local v29, "procState":I
    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssSampleCount(I)J

    move-result-wide v30

    .line 753
    .local v30, "samples":J
    const-wide/16 v42, 0x0

    cmp-long v41, v30, v42

    if-lez v41, :cond_7

    .line 754
    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssAverage(I)J

    move-result-wide v4

    .line 755
    .local v4, "avg":J
    const/4 v13, 0x1

    .line 756
    const/16 v41, 0x2

    move/from16 v0, v29

    move/from16 v1, v41

    if-gt v0, v1, :cond_8

    .line 757
    move-wide/from16 v0, v30

    invoke-virtual {v12, v4, v5, v0, v1}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    .line 748
    .end local v4    # "avg":J
    :cond_7
    :goto_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 758
    .restart local v4    # "avg":J
    :cond_8
    const/16 v41, 0x8

    move/from16 v0, v29

    move/from16 v1, v41

    if-gt v0, v1, :cond_9

    .line 759
    move-wide/from16 v0, v30

    invoke-virtual {v7, v4, v5, v0, v1}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    goto :goto_8

    .line 761
    :cond_9
    move-wide/from16 v0, v30

    invoke-virtual {v8, v4, v5, v0, v1}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    goto :goto_8

    .line 765
    .end local v4    # "avg":J
    .end local v26    # "off":I
    .end local v29    # "procState":I
    .end local v30    # "samples":J
    .end local v39    # "type":I
    :cond_a
    if-nez v13, :cond_c

    .line 742
    :cond_b
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 768
    :cond_c
    const/4 v10, 0x0

    .line 769
    .local v10, "fgHasBg":Z
    const/4 v11, 0x0

    .line 770
    .local v11, "fgHasCached":Z
    const/4 v6, 0x0

    .line 771
    .local v6, "bgHasCached":Z
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3

    cmp-long v41, v42, v44

    if-gez v41, :cond_d

    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x0

    cmp-long v41, v42, v44

    if-lez v41, :cond_d

    .line 772
    const/4 v10, 0x1

    .line 773
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    move-wide/from16 v42, v0

    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v42

    move-wide/from16 v2, v44

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    .line 775
    :cond_d
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3

    cmp-long v41, v42, v44

    if-gez v41, :cond_e

    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x0

    cmp-long v41, v42, v44

    if-lez v41, :cond_e

    .line 776
    const/4 v11, 0x1

    .line 777
    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    move-wide/from16 v42, v0

    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v42

    move-wide/from16 v2, v44

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    .line 779
    :cond_e
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3

    cmp-long v41, v42, v44

    if-gez v41, :cond_f

    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x0

    cmp-long v41, v42, v44

    if-lez v41, :cond_f

    .line 780
    const/4 v6, 0x1

    .line 781
    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    move-wide/from16 v42, v0

    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v42

    move-wide/from16 v2, v44

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    .line 783
    :cond_f
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3

    cmp-long v41, v42, v44

    if-gez v41, :cond_10

    if-nez v10, :cond_10

    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x0

    cmp-long v41, v42, v44

    if-lez v41, :cond_10

    .line 784
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    move-wide/from16 v42, v0

    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v42

    move-wide/from16 v2, v44

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    .line 786
    :cond_10
    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3

    cmp-long v41, v42, v44

    if-gez v41, :cond_11

    if-nez v6, :cond_11

    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x0

    cmp-long v41, v42, v44

    if-lez v41, :cond_11

    .line 787
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    move-wide/from16 v42, v0

    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v42

    move-wide/from16 v2, v44

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    .line 789
    :cond_11
    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3

    cmp-long v41, v42, v44

    if-gez v41, :cond_12

    if-nez v11, :cond_12

    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x0

    cmp-long v41, v42, v44

    if-lez v41, :cond_12

    .line 790
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    move-wide/from16 v42, v0

    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v42

    move-wide/from16 v2, v44

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    .line 792
    :cond_12
    const/4 v14, 0x0

    :goto_9
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    move/from16 v41, v0

    move/from16 v0, v41

    if-ge v14, v0, :cond_b

    .line 793
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTable:[I

    move-object/from16 v41, v0

    aget v26, v41, v14

    .line 794
    .restart local v26    # "off":I
    sget v41, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v41, v26, v41

    sget v42, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v39, v41, v42

    .line 795
    .restart local v39    # "type":I
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v34

    .line 796
    .local v34, "time":J
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    move/from16 v41, v0

    move/from16 v0, v41

    move/from16 v1, v39

    if-ne v0, v1, :cond_13

    .line 797
    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    move-wide/from16 v42, v0

    sub-long v42, p2, v42

    add-long v34, v34, v42

    .line 799
    :cond_13
    rem-int/lit8 v29, v39, 0xe

    .line 800
    .restart local v29    # "procState":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    move-object/from16 v41, v0

    aget-wide v42, v41, v29

    add-long v42, v42, v34

    aput-wide v42, v41, v29

    .line 801
    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssSampleCount(I)J

    move-result-wide v30

    .line 803
    .restart local v30    # "samples":J
    const-wide/16 v42, 0x0

    cmp-long v41, v30, v42

    if-lez v41, :cond_14

    .line 804
    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssAverage(I)J

    move-result-wide v4

    .line 815
    .restart local v4    # "avg":J
    :goto_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    move-object/from16 v41, v0

    aget-wide v42, v41, v29

    move-wide/from16 v0, v42

    long-to-double v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    move-object/from16 v41, v0

    aget v41, v41, v29

    move/from16 v0, v41

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v42, v42, v44

    long-to-double v0, v4

    move-wide/from16 v44, v0

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v44, v44, v46

    add-double v42, v42, v44

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    move-object/from16 v41, v0

    aget v41, v41, v29

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v44, v44, v30

    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v44, v0

    div-double v24, v42, v44

    .line 819
    .local v24, "newAvg":D
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    move-object/from16 v41, v0

    move-wide/from16 v0, v24

    double-to-long v0, v0

    move-wide/from16 v42, v0

    aput-wide v42, v41, v29

    .line 820
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    move-object/from16 v41, v0

    aget v42, v41, v29

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v42, v42, v30

    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v42, v0

    aput v42, v41, v29

    .line 821
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    move-object/from16 v41, v0

    aget-wide v42, v41, v29

    long-to-double v0, v4

    move-wide/from16 v44, v0

    move-wide/from16 v0, v34

    long-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v44, v44, v46

    add-double v42, v42, v44

    aput-wide v42, v41, v29

    .line 792
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_9

    .line 805
    .end local v4    # "avg":J
    .end local v24    # "newAvg":D
    :cond_14
    const/16 v41, 0x2

    move/from16 v0, v29

    move/from16 v1, v41

    if-gt v0, v1, :cond_15

    .line 806
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v30, v0

    .line 807
    iget-wide v4, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    .restart local v4    # "avg":J
    goto/16 :goto_a

    .line 808
    .end local v4    # "avg":J
    :cond_15
    const/16 v41, 0x8

    move/from16 v0, v29

    move/from16 v1, v41

    if-gt v0, v1, :cond_16

    .line 809
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v30, v0

    .line 810
    iget-wide v4, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    .restart local v4    # "avg":J
    goto/16 :goto_a

    .line 812
    .end local v4    # "avg":J
    :cond_16
    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v30, v0

    .line 813
    iget-wide v4, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    .restart local v4    # "avg":J
    goto/16 :goto_a

    .line 740
    .end local v4    # "avg":J
    .end local v6    # "bgHasCached":Z
    .end local v7    # "bgPss":Lcom/android/internal/app/ProcessStats$PssAggr;
    .end local v8    # "cachedPss":Lcom/android/internal/app/ProcessStats$PssAggr;
    .end local v10    # "fgHasBg":Z
    .end local v11    # "fgHasCached":Z
    .end local v12    # "fgPss":Lcom/android/internal/app/ProcessStats$PssAggr;
    .end local v13    # "havePss":Z
    .end local v26    # "off":I
    .end local v27    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v29    # "procState":I
    .end local v30    # "samples":J
    .end local v34    # "time":J
    .end local v39    # "type":I
    :cond_17
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_5

    .line 825
    .end local v19    # "iu":I
    .end local v40    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_18
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1546
    const/4 v0, 0x0

    return v0
.end method

.method public dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 48
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;

    .prologue
    .line 2650
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 2651
    .local v16, "now":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v37

    .line 2652
    .local v37, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    const-string/jumbo v4, "vers,5"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2653
    const-string/jumbo v4, "period,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2654
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2655
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats;->mRunning:Z

    if-eqz v4, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2656
    const/16 v36, 0x1

    .line 2657
    .local v36, "partial":Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 2658
    const-string v4, ",shutdown"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2659
    const/16 v36, 0x0

    .line 2661
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 2662
    const-string v4, ",sysprops"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2663
    const/16 v36, 0x0

    .line 2665
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 2666
    const-string v4, ",complete"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2667
    const/16 v36, 0x0

    .line 2669
    :cond_2
    if-eqz v36, :cond_3

    .line 2670
    const-string v4, ",partial"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2672
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2673
    const-string v4, "config,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2674
    const/16 v29, 0x0

    .local v29, "ip":I
    :goto_1
    invoke-virtual/range {v37 .. v37}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v29

    if-ge v0, v4, :cond_d

    .line 2675
    move-object/from16 v0, v37

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2676
    .local v6, "pkgName":Ljava/lang/String;
    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2674
    :cond_4
    add-int/lit8 v29, v29, 0x1

    goto :goto_1

    .line 2655
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v29    # "ip":I
    .end local v36    # "partial":Z
    :cond_5
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    goto :goto_0

    .line 2679
    .restart local v6    # "pkgName":Ljava/lang/String;
    .restart local v29    # "ip":I
    .restart local v36    # "partial":Z
    :cond_6
    move-object/from16 v0, v37

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/util/SparseArray;

    .line 2680
    .local v45, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/16 v32, 0x0

    .local v32, "iu":I
    :goto_2
    invoke-virtual/range {v45 .. v45}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v32

    if-ge v0, v4, :cond_4

    .line 2681
    move-object/from16 v0, v45

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 2682
    .local v7, "uid":I
    move-object/from16 v0, v45

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/util/SparseArray;

    .line 2683
    .local v47, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v33, 0x0

    .local v33, "iv":I
    :goto_3
    invoke-virtual/range {v47 .. v47}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v33

    if-ge v0, v4, :cond_c

    .line 2684
    move-object/from16 v0, v47

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 2685
    .local v8, "vers":I
    move-object/from16 v0, v47

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 2686
    .local v38, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v26

    .line 2687
    .local v26, "NPROCS":I
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v27

    .line 2688
    .local v27, "NSRVS":I
    const/16 v30, 0x0

    .local v30, "iproc":I
    :goto_4
    move/from16 v0, v30

    move/from16 v1, v26

    if-ge v0, v1, :cond_a

    .line 2689
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2690
    .local v39, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    const-string/jumbo v4, "pkgproc,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2691
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2692
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2693
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2694
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2695
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 2696
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2697
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/android/internal/app/ProcessStats;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2698
    move-object/from16 v0, p1

    move-object/from16 v1, v39

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->dumpAllProcessStateCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;J)V

    .line 2699
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2700
    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-lez v4, :cond_7

    .line 2701
    const-string/jumbo v4, "pkgpss,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2702
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2703
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2704
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2705
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2706
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 2707
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2708
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/android/internal/app/ProcessStats;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2709
    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->dumpAllProcessPssCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 2710
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2712
    :cond_7
    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    if-gtz v4, :cond_8

    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    if-gtz v4, :cond_8

    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-lez v4, :cond_9

    .line 2714
    :cond_8
    const-string/jumbo v4, "pkgkills,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2715
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2716
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2717
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2718
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2719
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 2720
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2721
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/android/internal/app/ProcessStats;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2722
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2723
    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2724
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2725
    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2726
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2727
    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2728
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2729
    move-object/from16 v0, v39

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2730
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2731
    move-object/from16 v0, v39

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2732
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2733
    move-object/from16 v0, v39

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2734
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2688
    :cond_9
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_4

    .line 2737
    .end local v39    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_a
    const/16 v31, 0x0

    .local v31, "isvc":I
    :goto_5
    move/from16 v0, v31

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    .line 2738
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/android/internal/app/ProcessStats;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2740
    .local v9, "serviceName":Ljava/lang/String;
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 2741
    .local v10, "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    const-string/jumbo v5, "pkgsvc-run"

    const/4 v11, 0x0

    iget v12, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    iget v13, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    iget-wide v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v17}, Lcom/android/internal/app/ProcessStats;->dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    .line 2744
    const-string/jumbo v5, "pkgsvc-start"

    const/4 v11, 0x1

    iget v12, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    iget v13, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    iget-wide v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v17}, Lcom/android/internal/app/ProcessStats;->dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    .line 2747
    const-string/jumbo v5, "pkgsvc-bound"

    const/4 v11, 0x2

    iget v12, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    iget v13, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    iget-wide v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v17}, Lcom/android/internal/app/ProcessStats;->dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    .line 2750
    const-string/jumbo v5, "pkgsvc-exec"

    const/4 v11, 0x3

    iget v12, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    iget v13, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    iget-wide v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v17}, Lcom/android/internal/app/ProcessStats;->dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    .line 2737
    add-int/lit8 v31, v31, 0x1

    goto :goto_5

    .line 2683
    .end local v9    # "serviceName":Ljava/lang/String;
    .end local v10    # "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_b
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_3

    .line 2680
    .end local v8    # "vers":I
    .end local v26    # "NPROCS":I
    .end local v27    # "NSRVS":I
    .end local v30    # "iproc":I
    .end local v31    # "isvc":I
    .end local v38    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_c
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_2

    .line 2758
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v32    # "iu":I
    .end local v33    # "iv":I
    .end local v45    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    .end local v47    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v40

    .line 2759
    .local v40, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/16 v29, 0x0

    :goto_6
    invoke-virtual/range {v40 .. v40}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v29

    if-ge v0, v4, :cond_13

    .line 2760
    move-object/from16 v0, v40

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    .line 2761
    .local v41, "procName":Ljava/lang/String;
    move-object/from16 v0, v40

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/util/SparseArray;

    .line 2762
    .local v46, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v32, 0x0

    .restart local v32    # "iu":I
    :goto_7
    invoke-virtual/range {v46 .. v46}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v32

    if-ge v0, v4, :cond_12

    .line 2763
    move-object/from16 v0, v46

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 2764
    .restart local v7    # "uid":I
    move-object/from16 v0, v46

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2765
    .local v42, "procState":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    if-lez v4, :cond_e

    .line 2766
    const-string/jumbo v4, "proc,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2767
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2768
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2769
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2770
    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->dumpAllProcessStateCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;J)V

    .line 2771
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2773
    :cond_e
    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-lez v4, :cond_f

    .line 2774
    const-string/jumbo v4, "pss,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2775
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2776
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2777
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2778
    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->dumpAllProcessPssCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 2779
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2781
    :cond_f
    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    if-gtz v4, :cond_10

    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    if-gtz v4, :cond_10

    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-lez v4, :cond_11

    .line 2783
    :cond_10
    const-string v4, "kills,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2784
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2785
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2786
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2787
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2788
    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2789
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2790
    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2791
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2792
    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2793
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2794
    move-object/from16 v0, v42

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2795
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2796
    move-object/from16 v0, v42

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2797
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2798
    move-object/from16 v0, v42

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2799
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2762
    :cond_11
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_7

    .line 2759
    .end local v7    # "uid":I
    .end local v42    # "procState":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_12
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_6

    .line 2803
    .end local v32    # "iu":I
    .end local v41    # "procName":Ljava/lang/String;
    .end local v46    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_13
    const-string/jumbo v4, "total"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2804
    const-string v19, ","

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-wide/from16 v22, v0

    move-object/from16 v18, p1

    move-wide/from16 v24, v16

    invoke-static/range {v18 .. v25}, Lcom/android/internal/app/ProcessStats;->dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V

    .line 2806
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2807
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    if-eqz v4, :cond_16

    .line 2808
    const-string/jumbo v4, "sysmemusage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2809
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    move/from16 v0, v28

    if-ge v0, v4, :cond_16

    .line 2810
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    aget v35, v4, v28

    .line 2811
    .local v35, "off":I
    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v4, v35, v4

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v44, v4, v5

    .line 2812
    .local v44, "type":I
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2813
    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 2814
    const/16 v34, 0x0

    .local v34, "j":I
    :goto_9
    const/16 v4, 0x10

    move/from16 v0, v34

    if-ge v0, v4, :cond_15

    .line 2815
    const/4 v4, 0x1

    move/from16 v0, v34

    if-le v0, v4, :cond_14

    .line 2816
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2818
    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2814
    add-int/lit8 v34, v34, 0x1

    goto :goto_9

    .line 2809
    :cond_15
    add-int/lit8 v28, v28, 0x1

    goto :goto_8

    .line 2822
    .end local v28    # "i":I
    .end local v34    # "j":I
    .end local v35    # "off":I
    .end local v44    # "type":I
    :cond_16
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2823
    new-instance v43, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;

    sget-object v4, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v5, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    move-object/from16 v0, v43

    invoke-direct {v0, v4, v5}, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    .line 2825
    .local v43, "totalMem":Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)V

    .line 2826
    const-string/jumbo v4, "weights,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2827
    move-object/from16 v0, v43

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2828
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2829
    move-object/from16 v0, v43

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    .line 2830
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2831
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2832
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2833
    move-object/from16 v0, v43

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    .line 2834
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2835
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2836
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2837
    move-object/from16 v0, v43

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    .line 2838
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2839
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2840
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2841
    move-object/from16 v0, v43

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    .line 2842
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2843
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2844
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2845
    move-object/from16 v0, v43

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    .line 2846
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2847
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2848
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_a
    const/16 v4, 0xe

    move/from16 v0, v28

    if-ge v0, v4, :cond_17

    .line 2849
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2850
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v4, v28

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    .line 2851
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2852
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v4, v4, v28

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2848
    add-int/lit8 v28, v28, 0x1

    goto :goto_a

    .line 2854
    :cond_17
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2855
    return-void
.end method

.method dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "screenStates"    # [I
    .param p5, "memStates"    # [I
    .param p6, "procStates"    # [I
    .param p7, "sortProcStates"    # [I
    .param p8, "now"    # J
    .param p10, "totalTime"    # J
    .param p12, "reqPackage"    # Ljava/lang/String;
    .param p13, "activeOnly"    # Z

    .prologue
    .line 2570
    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-wide/from16 v6, p8

    move-object/from16 v8, p12

    move/from16 v9, p13

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 2572
    .local v3, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2573
    if-eqz p2, :cond_0

    .line 2574
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2575
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2577
    :cond_0
    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v1 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IZJJ)V

    .line 2580
    :cond_1
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V
    .locals 59
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;
    .param p3, "now"    # J
    .param p5, "dumpSummary"    # Z
    .param p6, "dumpAll"    # Z
    .param p7, "activeOnly"    # Z

    .prologue
    .line 2217
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-wide/from16 v10, p3

    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v16

    .line 2219
    .local v16, "totalTime":J
    const/16 v52, 0x0

    .line 2220
    .local v52, "sepNeeded":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    if-eqz v4, :cond_0

    .line 2221
    const-string v4, "System memory usage:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2222
    const-string v4, "  "

    sget-object v5, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v7, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5, v7}, Lcom/android/internal/app/ProcessStats;->dumpSysMemUsage(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V

    .line 2223
    const/16 v52, 0x1

    .line 2225
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v44

    .line 2226
    .local v44, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    const/16 v48, 0x0

    .line 2227
    .local v48, "printedHeader":Z
    const/16 v37, 0x0

    .local v37, "ip":I
    :goto_0
    invoke-virtual/range {v44 .. v44}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v37

    if-ge v0, v4, :cond_25

    .line 2228
    move-object/from16 v0, v44

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 2229
    .local v46, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v44

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/util/SparseArray;

    .line 2230
    .local v54, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/16 v40, 0x0

    .local v40, "iu":I
    :goto_1
    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v40

    if-ge v0, v4, :cond_24

    .line 2231
    move-object/from16 v0, v54

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v53

    .line 2232
    .local v53, "uid":I
    move-object/from16 v0, v54

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/util/SparseArray;

    .line 2233
    .local v57, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v41, 0x0

    .local v41, "iv":I
    :goto_2
    invoke-virtual/range {v57 .. v57}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v41

    if-ge v0, v4, :cond_23

    .line 2234
    move-object/from16 v0, v57

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v56

    .line 2235
    .local v56, "vers":I
    move-object/from16 v0, v57

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 2236
    .local v47, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v35

    .line 2237
    .local v35, "NPROCS":I
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v36

    .line 2238
    .local v36, "NSRVS":I
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    const/16 v45, 0x1

    .line 2239
    .local v45, "pkgMatch":Z
    :goto_3
    if-nez v45, :cond_6

    .line 2240
    const/16 v50, 0x0

    .line 2241
    .local v50, "procMatch":Z
    const/16 v38, 0x0

    .local v38, "iproc":I
    :goto_4
    move/from16 v0, v38

    move/from16 v1, v35

    if-ge v0, v1, :cond_2

    .line 2242
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2243
    .local v6, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2244
    const/16 v50, 0x1

    .line 2248
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_2
    if-nez v50, :cond_6

    .line 2233
    .end local v50    # "procMatch":Z
    :cond_3
    add-int/lit8 v41, v41, 0x1

    goto :goto_2

    .line 2238
    .end local v38    # "iproc":I
    .end local v45    # "pkgMatch":Z
    :cond_4
    const/16 v45, 0x0

    goto :goto_3

    .line 2241
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v38    # "iproc":I
    .restart local v45    # "pkgMatch":Z
    .restart local v50    # "procMatch":Z
    :cond_5
    add-int/lit8 v38, v38, 0x1

    goto :goto_4

    .line 2252
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v38    # "iproc":I
    .end local v50    # "procMatch":Z
    :cond_6
    if-gtz v35, :cond_7

    if-lez v36, :cond_a

    .line 2253
    :cond_7
    if-nez v48, :cond_9

    .line 2254
    if-eqz v52, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2255
    :cond_8
    const-string v4, "Per-Package Stats:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2256
    const/16 v48, 0x1

    .line 2257
    const/16 v52, 0x1

    .line 2259
    :cond_9
    const-string v4, "  * "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " / "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2260
    move-object/from16 v0, p1

    move/from16 v1, v53

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v4, " / v"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2261
    move-object/from16 v0, p1

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2263
    :cond_a
    if-eqz p5, :cond_b

    if-eqz p6, :cond_f

    .line 2264
    :cond_b
    const/16 v38, 0x0

    .restart local v38    # "iproc":I
    :goto_5
    move/from16 v0, v38

    move/from16 v1, v35

    if-ge v0, v1, :cond_14

    .line 2265
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2266
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v45, :cond_c

    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 2264
    :goto_6
    add-int/lit8 v38, v38, 0x1

    goto :goto_5

    .line 2269
    :cond_c
    if-eqz p7, :cond_d

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v4

    if-nez v4, :cond_d

    .line 2270
    const-string v4, "      (Not active: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2271
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 2274
    :cond_d
    const-string v4, "      Process "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2275
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2276
    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v4, v4, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v4, :cond_e

    .line 2277
    const-string v4, " (multi, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2281
    :goto_7
    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2282
    const-string v4, " entries)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2283
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2284
    const-string v5, "        "

    sget-object v7, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v8, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v9, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v4, p1

    move-wide/from16 v10, p3

    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V

    .line 2286
    const-string v5, "        "

    sget-object v7, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v8, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v9, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/app/ProcessStats;->dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V

    .line 2288
    const-string v4, "        "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/android/internal/app/ProcessStats;->dumpProcessInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;Z)V

    goto/16 :goto_6

    .line 2279
    :cond_e
    const-string v4, " (unique, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    .line 2291
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v38    # "iproc":I
    :cond_f
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2292
    .local v9, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v38, 0x0

    .restart local v38    # "iproc":I
    :goto_8
    move/from16 v0, v38

    move/from16 v1, v35

    if-ge v0, v1, :cond_13

    .line 2293
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2294
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v45, :cond_11

    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 2292
    :cond_10
    :goto_9
    add-int/lit8 v38, v38, 0x1

    goto :goto_8

    .line 2297
    :cond_11
    if-eqz p7, :cond_12

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2300
    :cond_12
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2302
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_13
    const-string v8, "      "

    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v11, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v12, Lcom/android/internal/app/ProcessStats;->NON_CACHED_PROC_STATES:[I

    const/4 v13, 0x0

    move-object/from16 v7, p1

    move-wide/from16 v14, p3

    invoke-static/range {v7 .. v17}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IZJJ)V

    .line 2305
    .end local v9    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_14
    const/16 v39, 0x0

    .local v39, "isvc":I
    :goto_a
    move/from16 v0, v39

    move/from16 v1, v36

    if-ge v0, v1, :cond_3

    .line 2306
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 2307
    .local v24, "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    if-nez v45, :cond_16

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 2305
    :cond_15
    :goto_b
    add-int/lit8 v39, v39, 0x1

    goto :goto_a

    .line 2310
    :cond_16
    if-eqz p7, :cond_17

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/ProcessStats$ServiceState;->isInUse()Z

    move-result v4

    if-nez v4, :cond_17

    .line 2311
    const-string v4, "      (Not active: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2312
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    .line 2315
    :cond_17
    if-eqz p6, :cond_1e

    .line 2316
    const-string v4, "      Service "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2320
    :goto_c
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2321
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2322
    const-string v4, "        Process: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2323
    const-string v20, "        "

    const-string v21, "          "

    const-string v22, "    "

    const-string v23, "Running"

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    move/from16 v27, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    move-wide/from16 v28, v0

    if-eqz p5, :cond_18

    if-eqz p6, :cond_1f

    :cond_18
    const/16 v34, 0x1

    :goto_d
    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-wide/from16 v30, p3

    move-wide/from16 v32, v16

    invoke-virtual/range {v18 .. v34}, Lcom/android/internal/app/ProcessStats;->dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    .line 2326
    const-string v20, "        "

    const-string v21, "          "

    const-string v22, "    "

    const-string v23, "Started"

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    move/from16 v27, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    move-wide/from16 v28, v0

    if-eqz p5, :cond_19

    if-eqz p6, :cond_20

    :cond_19
    const/16 v34, 0x1

    :goto_e
    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-wide/from16 v30, p3

    move-wide/from16 v32, v16

    invoke-virtual/range {v18 .. v34}, Lcom/android/internal/app/ProcessStats;->dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    .line 2329
    const-string v20, "        "

    const-string v21, "          "

    const-string v22, "      "

    const-string v23, "Bound"

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    move/from16 v27, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    move-wide/from16 v28, v0

    if-eqz p5, :cond_1a

    if-eqz p6, :cond_21

    :cond_1a
    const/16 v34, 0x1

    :goto_f
    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-wide/from16 v30, p3

    move-wide/from16 v32, v16

    invoke-virtual/range {v18 .. v34}, Lcom/android/internal/app/ProcessStats;->dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    .line 2332
    const-string v20, "        "

    const-string v21, "          "

    const-string v22, "  "

    const-string v23, "Executing"

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    move/from16 v27, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    move-wide/from16 v28, v0

    if-eqz p5, :cond_1b

    if-eqz p6, :cond_22

    :cond_1b
    const/16 v34, 0x1

    :goto_10
    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-wide/from16 v30, p3

    move-wide/from16 v32, v16

    invoke-virtual/range {v18 .. v34}, Lcom/android/internal/app/ProcessStats;->dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    .line 2335
    if-eqz p6, :cond_15

    .line 2336
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-eqz v4, :cond_1c

    .line 2337
    const-string v4, "        mOwner="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2339
    :cond_1c
    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    if-nez v4, :cond_1d

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    if-eqz v4, :cond_15

    .line 2340
    :cond_1d
    const-string v4, "        mStarted="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2341
    const-string v4, " mRestarting="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_b

    .line 2318
    :cond_1e
    const-string v4, "      * "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 2323
    :cond_1f
    const/16 v34, 0x0

    goto/16 :goto_d

    .line 2326
    :cond_20
    const/16 v34, 0x0

    goto/16 :goto_e

    .line 2329
    :cond_21
    const/16 v34, 0x0

    goto/16 :goto_f

    .line 2332
    :cond_22
    const/16 v34, 0x0

    goto :goto_10

    .line 2230
    .end local v24    # "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v35    # "NPROCS":I
    .end local v36    # "NSRVS":I
    .end local v38    # "iproc":I
    .end local v39    # "isvc":I
    .end local v45    # "pkgMatch":Z
    .end local v47    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v56    # "vers":I
    :cond_23
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_1

    .line 2227
    .end local v41    # "iv":I
    .end local v53    # "uid":I
    .end local v57    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_24
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_0

    .line 2349
    .end local v40    # "iu":I
    .end local v46    # "pkgName":Ljava/lang/String;
    .end local v54    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v49

    .line 2350
    .local v49, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/16 v48, 0x0

    .line 2351
    const/16 v42, 0x0

    .local v42, "numShownProcs":I
    const/16 v43, 0x0

    .line 2352
    .local v43, "numTotalProcs":I
    const/16 v37, 0x0

    :goto_11
    invoke-virtual/range {v49 .. v49}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v37

    if-ge v0, v4, :cond_2d

    .line 2353
    move-object/from16 v0, v49

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/String;

    .line 2354
    .local v51, "procName":Ljava/lang/String;
    move-object/from16 v0, v49

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/util/SparseArray;

    .line 2355
    .local v55, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v40, 0x0

    .restart local v40    # "iu":I
    :goto_12
    invoke-virtual/range {v55 .. v55}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v40

    if-ge v0, v4, :cond_2c

    .line 2356
    move-object/from16 v0, v55

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v53

    .line 2357
    .restart local v53    # "uid":I
    add-int/lit8 v43, v43, 0x1

    .line 2358
    move-object/from16 v0, v55

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2359
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    if-nez v4, :cond_27

    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_27

    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-nez v4, :cond_27

    .line 2355
    :cond_26
    :goto_13
    add-int/lit8 v40, v40, 0x1

    goto :goto_12

    .line 2363
    :cond_27
    iget-boolean v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v4, :cond_26

    .line 2366
    if-eqz p2, :cond_28

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 2370
    :cond_28
    add-int/lit8 v42, v42, 0x1

    .line 2371
    if-eqz v52, :cond_29

    .line 2372
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2374
    :cond_29
    const/16 v52, 0x1

    .line 2375
    if-nez v48, :cond_2a

    .line 2376
    const-string v4, "Multi-Package Common Processes:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2377
    const/16 v48, 0x1

    .line 2379
    :cond_2a
    if-eqz p7, :cond_2b

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 2380
    const-string v4, "      (Not active: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_13

    .line 2383
    :cond_2b
    const-string v4, "  * "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " / "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2384
    move-object/from16 v0, p1

    move/from16 v1, v53

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2385
    const-string v4, " ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2386
    const-string v4, " entries)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2387
    const-string v27, "        "

    sget-object v29, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v30, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v31, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v26, p1

    move-object/from16 v28, v6

    move-wide/from16 v32, p3

    invoke-static/range {v26 .. v33}, Lcom/android/internal/app/ProcessStats;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V

    .line 2389
    const-string v11, "        "

    sget-object v13, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v14, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v15, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v10, p1

    move-object v12, v6

    invoke-static/range {v10 .. v15}, Lcom/android/internal/app/ProcessStats;->dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V

    .line 2391
    const-string v4, "        "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/android/internal/app/ProcessStats;->dumpProcessInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;Z)V

    goto/16 :goto_13

    .line 2352
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v53    # "uid":I
    :cond_2c
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_11

    .line 2394
    .end local v40    # "iu":I
    .end local v51    # "procName":Ljava/lang/String;
    .end local v55    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_2d
    if-eqz p6, :cond_2e

    .line 2395
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2396
    const-string v4, "  Total procs: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2397
    const-string v4, " shown of "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " total"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2400
    :cond_2e
    if-eqz v52, :cond_2f

    .line 2401
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2403
    :cond_2f
    if-eqz p5, :cond_31

    .line 2404
    const-string v4, "Summary:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v25, p0

    move-object/from16 v26, p1

    move-object/from16 v27, p2

    move-wide/from16 v28, p3

    move/from16 v30, p7

    .line 2405
    invoke-virtual/range {v25 .. v30}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    .line 2410
    :goto_14
    if-eqz p6, :cond_30

    .line 2411
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2412
    const-string v4, "Internal state:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2413
    const-string v4, "  Num long arrays: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2414
    const-string v4, "  Next long entry: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2415
    const-string v4, "  mRunning="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats;->mRunning:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2417
    :cond_30
    return-void

    .line 2407
    :cond_31
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    goto :goto_14
.end method

.method dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "prefixInner"    # Ljava/lang/String;
    .param p4, "headerPrefix"    # Ljava/lang/String;
    .param p5, "header"    # Ljava/lang/String;
    .param p6, "service"    # Lcom/android/internal/app/ProcessStats$ServiceState;
    .param p7, "count"    # I
    .param p8, "serviceType"    # I
    .param p9, "state"    # I
    .param p10, "startTime"    # J
    .param p12, "now"    # J
    .param p14, "totalTime"    # J
    .param p16, "dumpAll"    # Z

    .prologue
    .line 2461
    if-eqz p7, :cond_0

    .line 2462
    if-eqz p16, :cond_1

    .line 2463
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2464
    const-string v2, " op count "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v0, p7

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    move/from16 v6, p8

    move/from16 v7, p9

    move-wide/from16 v8, p10

    move-wide/from16 v10, p12

    .line 2465
    invoke-static/range {v3 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpSingleServiceTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIJJ)J

    .line 2477
    :cond_0
    :goto_0
    return-void

    .line 2468
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v5, p6

    move/from16 v6, p8

    move/from16 v7, p9

    move-wide/from16 v8, p10

    move-wide/from16 v10, p12

    invoke-static/range {v3 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpSingleServiceTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIJJ)J

    move-result-wide v12

    .line 2470
    .local v12, "myTime":J
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2471
    const-string v2, " count "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v0, p7

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2472
    const-string v2, " / time "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2473
    long-to-double v2, v12

    move-wide/from16 v0, p14

    long-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {p1, v2, v3}, Lcom/android/internal/app/ProcessStats;->printPercent(Ljava/io/PrintWriter;D)V

    .line 2474
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method public dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .locals 19
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;
    .param p3, "now"    # J
    .param p5, "activeOnly"    # Z

    .prologue
    .line 2480
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-wide/from16 v10, p3

    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v14

    .line 2482
    .local v14, "totalTime":J
    const/4 v6, 0x0

    const-string v7, "  "

    sget-object v8, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v9, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    sget-object v11, Lcom/android/internal/app/ProcessStats;->NON_CACHED_PROC_STATES:[I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v12, p3

    move-object/from16 v16, p2

    move/from16 v17, p5

    invoke-virtual/range {v4 .. v17}, Lcom/android/internal/app/ProcessStats;->dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V

    .line 2484
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2485
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    .line 2486
    return-void
.end method

.method dumpSysMemUsage(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I

    .prologue
    .line 961
    const/4 v15, -0x1

    .line 962
    .local v15, "printedScreen":I
    const/4 v12, 0x0

    .local v12, "is":I
    :goto_0
    move-object/from16 v0, p3

    array-length v2, v0

    if-ge v12, v2, :cond_6

    .line 963
    const/4 v14, -0x1

    .line 964
    .local v14, "printedMem":I
    const/4 v10, 0x0

    .local v10, "im":I
    :goto_1
    move-object/from16 v0, p4

    array-length v2, v0

    if-ge v10, v2, :cond_5

    .line 965
    aget v13, p3, v12

    .line 966
    .local v13, "iscreen":I
    aget v11, p4, v10

    .line 967
    .local v11, "imem":I
    add-int v2, v13, v11

    mul-int/lit8 v6, v2, 0xe

    .line 968
    .local v6, "bucket":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v2}, Lcom/android/internal/app/ProcessStats;->getSysMemUsageValue(II)J

    move-result-wide v8

    .line 969
    .local v8, "count":J
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-lez v2, :cond_2

    .line 970
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 971
    move-object/from16 v0, p3

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 972
    if-eq v15, v13, :cond_3

    move v2, v13

    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 974
    move v15, v13

    .line 976
    :cond_0
    move-object/from16 v0, p4

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 977
    if-eq v14, v11, :cond_4

    move v2, v11

    :goto_3
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 978
    move v14, v11

    .line 980
    :cond_1
    const-string v2, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 981
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 982
    const-string v2, " samples:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 983
    const-string v5, "  Cached"

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpSysMemUsageCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 985
    const-string v5, "  Free"

    const/4 v7, 0x4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpSysMemUsageCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 987
    const-string v5, "  ZRam"

    const/4 v7, 0x7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpSysMemUsageCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 989
    const-string v5, "  Kernel"

    const/16 v7, 0xa

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpSysMemUsageCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 991
    const-string v5, "  Native"

    const/16 v7, 0xd

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpSysMemUsageCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 964
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 972
    :cond_3
    const/4 v2, -0x1

    goto :goto_2

    .line 977
    :cond_4
    const/4 v2, -0x1

    goto :goto_3

    .line 962
    .end local v6    # "bucket":I
    .end local v8    # "count":J
    .end local v11    # "imem":I
    .end local v13    # "iscreen":I
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 996
    .end local v10    # "im":I
    .end local v14    # "printedMem":I
    :cond_6
    return-void
.end method

.method dumpSysMemUsageCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "bucket"    # I
    .param p5, "index"    # I

    .prologue
    const-wide/16 v2, 0x400

    .line 949
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 950
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p0, p4, p5}, Lcom/android/internal/app/ProcessStats;->getSysMemUsageValue(II)J

    move-result-wide v0

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 952
    const-string v0, " min, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 953
    add-int/lit8 v0, p5, 0x1

    invoke-virtual {p0, p4, v0}, Lcom/android/internal/app/ProcessStats;->getSysMemUsageValue(II)J

    move-result-wide v0

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 954
    const-string v0, " avg, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 955
    add-int/lit8 v0, p5, 0x2

    invoke-virtual {p0, p4, v0}, Lcom/android/internal/app/ProcessStats;->getSysMemUsageValue(II)J

    move-result-wide v0

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 956
    const-string v0, " max"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 957
    return-void
.end method

.method dumpTotalsLocked(Ljava/io/PrintWriter;J)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "now"    # J

    .prologue
    .line 2506
    const-string v4, "Run time Stats:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2507
    const-string v5, "  "

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-object/from16 v4, p1

    move-wide/from16 v10, p2

    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    .line 2508
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2509
    const-string v4, "Memory usage:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2510
    new-instance v17, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;

    sget-object v4, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v5, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    .line 2512
    .local v17, "totalMem":Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)V

    .line 2513
    const-wide/16 v12, 0x0

    .line 2514
    .local v12, "totalPss":J
    const-string v6, "  "

    const-string v7, "Kernel "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    .line 2516
    const-string v6, "  "

    const-string v7, "Native "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    .line 2518
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    const/16 v4, 0xe

    if-ge v15, v4, :cond_1

    .line 2520
    const/4 v4, 0x7

    if-eq v15, v4, :cond_0

    .line 2521
    const-string v6, "  "

    sget-object v4, Lcom/android/internal/app/ProcessStats;->STATE_NAMES:[Ljava/lang/String;

    aget-object v7, v4, v15

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v8, v4, v15

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v14, v4, v15

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    .line 2518
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 2526
    :cond_1
    const-string v6, "  "

    const-string v7, "Cached "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    .line 2528
    const-string v6, "  "

    const-string v7, "Free   "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    .line 2530
    const-string v6, "  "

    const-string v7, "Z-Ram  "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    .line 2532
    const-string v4, "  TOTAL  : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2533
    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 2534
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2535
    const-string v6, "  "

    sget-object v4, Lcom/android/internal/app/ProcessStats;->STATE_NAMES:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v7, v4, v5

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    const/4 v5, 0x7

    aget-wide v8, v4, v5

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    const/4 v5, 0x7

    aget v14, v4, v5

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    .line 2538
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2539
    const-string v4, "          Start time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2540
    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    invoke-static {v4, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2541
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2542
    const-string v4, "  Total elapsed time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2543
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats;->mRunning:Z

    if-eqz v4, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    :goto_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v4, v6

    move-object/from16 v0, p1

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2546
    const/16 v16, 0x1

    .line 2547
    .local v16, "partial":Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 2548
    const-string v4, " (shutdown)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2549
    const/16 v16, 0x0

    .line 2551
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    .line 2552
    const-string v4, " (sysprops)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2553
    const/16 v16, 0x0

    .line 2555
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    .line 2556
    const-string v4, " (complete)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2557
    const/16 v16, 0x0

    .line 2559
    :cond_4
    if-eqz v16, :cond_5

    .line 2560
    const-string v4, " (partial)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2562
    :cond_5
    const/16 v4, 0x20

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 2563
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2564
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2565
    return-void

    .line 2543
    .end local v16    # "partial":Z
    :cond_6
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    goto :goto_1
.end method

.method public evaluateSystemProperties(Z)Z
    .locals 4
    .param p1, "update"    # Z

    .prologue
    .line 1430
    const/4 v0, 0x0

    .line 1431
    .local v0, "changed":Z
    const-string/jumbo v2, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1433
    .local v1, "runtime":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1434
    const/4 v0, 0x1

    .line 1435
    if-eqz p1, :cond_0

    .line 1436
    iput-object v1, p0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    .line 1439
    :cond_0
    return v0
.end method

.method getLong(II)J
    .locals 4
    .param p1, "off"    # I
    .param p2, "index"    # I

    .prologue
    .line 2060
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v2, p1, v2

    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 2061
    .local v0, "longs":[J
    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v1, p1, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int/2addr v1, v2

    add-int/2addr v1, p2

    aget-wide v2, v0, v1

    return-wide v2
.end method

.method public getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/ProcessStats$PackageState;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # I

    .prologue
    .line 2084
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 2085
    .local v2, "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    if-nez v2, :cond_0

    .line 2086
    new-instance v2, Landroid/util/SparseArray;

    .end local v2    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 2087
    .restart local v2    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2089
    :cond_0
    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 2090
    .local v0, "as":Lcom/android/internal/app/ProcessStats$PackageState;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 2095
    .end local v0    # "as":Lcom/android/internal/app/ProcessStats$PackageState;
    .local v1, "as":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 2093
    .end local v1    # "as":Ljava/lang/Object;
    .restart local v0    # "as":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_1
    new-instance v0, Lcom/android/internal/app/ProcessStats$PackageState;

    .end local v0    # "as":Lcom/android/internal/app/ProcessStats$PackageState;
    invoke-direct {v0, p1, p2}, Lcom/android/internal/app/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    .line 2094
    .restart local v0    # "as":Lcom/android/internal/app/ProcessStats$PackageState;
    invoke-virtual {v2, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 2095
    .restart local v1    # "as":Ljava/lang/Object;
    goto :goto_0
.end method

.method public getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;
    .locals 26
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # I
    .param p4, "processName"    # Ljava/lang/String;

    .prologue
    .line 2100
    invoke-virtual/range {p0 .. p3}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v23

    .line 2101
    .local v23, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2102
    .local v4, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz v4, :cond_0

    move-object/from16 v24, v4

    .line 2166
    .end local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .local v24, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :goto_0
    return-object v24

    .line 2105
    .end local v24    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2106
    .local v2, "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v2, :cond_1

    .line 2107
    new-instance v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v2    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V

    .line 2108
    .end local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v2    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2111
    :cond_1
    iget-boolean v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-nez v3, :cond_6

    .line 2112
    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    move/from16 v0, p3

    if-ne v0, v3, :cond_2

    .line 2115
    move-object v4, v2

    .line 2164
    .restart local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :goto_1
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v24, v4

    .line 2166
    .end local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v24    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    goto :goto_0

    .line 2122
    .end local v24    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    .line 2127
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2130
    .local v10, "now":J
    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    iget v5, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v3, v1, v5}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v21

    .line 2132
    .local v21, "commonPkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    if-eqz v21, :cond_4

    .line 2133
    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3, v10, v11}, Lcom/android/internal/app/ProcessStats$ProcessState;->clone(Ljava/lang/String;J)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v20

    .line 2136
    .local v20, "cloned":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v5, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v3, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2139
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v22, v3, -0x1

    .local v22, "i":I
    :goto_2
    if-ltz v22, :cond_5

    .line 2140
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 2141
    .local v25, "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-ne v3, v2, :cond_3

    .line 2144
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2139
    :cond_3
    add-int/lit8 v22, v22, -0x1

    goto :goto_2

    .line 2150
    .end local v20    # "cloned":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v22    # "i":I
    .end local v25    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_4
    const-string v3, "ProcessStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cloning proc state: no package state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for proc "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    :cond_5
    new-instance v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object v5, v2

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    .line 2156
    .restart local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    goto/16 :goto_1

    .line 2160
    .end local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v10    # "now":J
    .end local v21    # "commonPkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_6
    new-instance v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-object v12, v4

    move-object v13, v2

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, p3

    move-object/from16 v17, p4

    invoke-direct/range {v12 .. v19}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    .restart local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    goto/16 :goto_1
.end method

.method public getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "className"    # Ljava/lang/String;

    .prologue
    .line 2171
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v6

    .line 2172
    .local v6, "as":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v1, v6, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 2173
    .local v0, "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    if-eqz v0, :cond_0

    move-object v7, v0

    .line 2182
    .end local v0    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    .local v7, "ss":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 2177
    .end local v7    # "ss":Ljava/lang/Object;
    .restart local v0    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/app/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v5

    .line 2179
    .local v5, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :goto_1
    new-instance v0, Lcom/android/internal/app/ProcessStats$ServiceState;

    .end local v0    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ProcessStats$ServiceState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 2180
    .restart local v0    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    iget-object v1, v6, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v0

    .line 2182
    .restart local v7    # "ss":Ljava/lang/Object;
    goto :goto_0

    .line 2177
    .end local v5    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v7    # "ss":Ljava/lang/Object;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method getSysMemUsageValue(II)J
    .locals 4
    .param p1, "state"    # I
    .param p2, "index"    # I

    .prologue
    .line 943
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 944
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "memWeight"    # D
    .param p6, "totalTime"    # J
    .param p8, "curTotalMem"    # J
    .param p10, "samples"    # I

    .prologue
    .line 2490
    const-wide/16 v4, 0x0

    cmpl-double v4, p4, v4

    if-eqz v4, :cond_0

    .line 2491
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    mul-double/2addr v4, p4

    long-to-double v6, p6

    div-double/2addr v4, v6

    double-to-long v2, v4

    .line 2492
    .local v2, "mem":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2493
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2494
    const-string v4, ": "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2495
    invoke-static {p1, v2, v3}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 2496
    const-string v4, " ("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2497
    move/from16 v0, p10

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2498
    const-string v4, " samples)"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2499
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2500
    add-long p8, p8, v2

    .line 2502
    .end local v2    # "mem":J
    .end local p8    # "curTotalMem":J
    :cond_0
    return-wide p8
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 1726
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [I

    .line 1727
    .local v2, "len":[I
    invoke-static {p1, v2}, Lcom/android/internal/app/ProcessStats;->readFully(Ljava/io/InputStream;[I)[B

    move-result-object v3

    .line 1728
    .local v3, "raw":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1729
    .local v1, "in":Landroid/os/Parcel;
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1730
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1731
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 1733
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1737
    .end local v1    # "in":Landroid/os/Parcel;
    .end local v2    # "len":[I
    .end local v3    # "raw":[B
    :goto_0
    return-void

    .line 1734
    :catch_0
    move-exception v0

    .line 1735
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 36
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1740
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-gtz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-lez v13, :cond_3

    :cond_0
    const/16 v26, 0x1

    .line 1742
    .local v26, "hadData":Z
    :goto_0
    if-eqz v26, :cond_1

    .line 1743
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ProcessStats;->resetSafely()V

    .line 1746
    :cond_1
    const v13, 0x50535453

    const-string/jumbo v14, "magic number"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 2007
    :cond_2
    :goto_1
    return-void

    .line 1740
    .end local v26    # "hadData":Z
    :cond_3
    const/16 v26, 0x0

    goto :goto_0

    .line 1749
    .restart local v26    # "hadData":Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 1750
    .local v31, "version":I
    const/16 v13, 0x12

    move/from16 v0, v31

    if-eq v0, v13, :cond_5

    .line 1751
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bad version: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v31

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto :goto_1

    .line 1754
    :cond_5
    const/16 v13, 0xe

    const-string/jumbo v14, "state count"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1757
    const/16 v13, 0x8

    const-string v14, "adj count"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1760
    const/4 v13, 0x7

    const-string/jumbo v14, "pss count"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1763
    const/16 v13, 0x10

    const-string/jumbo v14, "sys mem usage count"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1766
    const/16 v13, 0x1000

    const-string v14, "longs size"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1770
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    .line 1772
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    .line 1773
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ProcessStats;->buildTimePeriodStartClockStr()V

    .line 1774
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    .line 1775
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    .line 1776
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartUptime:J

    .line 1777
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    .line 1778
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    .line 1779
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    .line 1781
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/android/internal/app/ProcessStats;->mCtmName:Ljava/lang/String;

    .line 1783
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1784
    .local v19, "NLONGS":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1785
    .local v18, "NEXTLONG":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1786
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_2
    add-int/lit8 v13, v19, -0x1

    move/from16 v0, v28

    if-ge v0, v13, :cond_7

    .line 1787
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move/from16 v0, v28

    if-lt v0, v13, :cond_6

    .line 1788
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    const/16 v14, 0x1000

    new-array v14, v14, [J

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1790
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [J

    const/16 v14, 0x1000

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v13, v14}, Lcom/android/internal/app/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    .line 1786
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 1792
    :cond_7
    const/16 v13, 0x1000

    new-array v0, v13, [J

    move-object/from16 v29, v0

    .line 1793
    .local v29, "longs":[J
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    .line 1794
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move-object/from16 v3, v29

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    .line 1795
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1797
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    array-length v14, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v13, v14}, Lcom/android/internal/app/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    .line 1799
    const-string v13, "ProcessStats"

    const-string/jumbo v14, "sys mem usage"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/android/internal/app/ProcessStats;->readTableFromParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    .line 1800
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    sget-object v14, Lcom/android/internal/app/ProcessStats;->BAD_TABLE:[I

    if-eq v13, v14, :cond_2

    .line 1803
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    array-length v13, v13

    :goto_4
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    .line 1805
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1806
    .local v21, "NPROC":I
    if-gez v21, :cond_9

    .line 1807
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bad process count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1803
    .end local v21    # "NPROC":I
    :cond_8
    const/4 v13, 0x0

    goto :goto_4

    .line 1810
    .restart local v21    # "NPROC":I
    :cond_9
    if-lez v21, :cond_12

    .line 1811
    add-int/lit8 v21, v21, -0x1

    .line 1812
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    .line 1813
    .local v11, "procName":Ljava/lang/String;
    if-nez v11, :cond_a

    .line 1814
    const-string v13, "bad process name"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1817
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1818
    .local v24, "NUID":I
    if-gez v24, :cond_c

    .line 1819
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bad uid count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1851
    .local v6, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .local v8, "pkgName":Ljava/lang/String;
    .local v9, "uid":I
    .local v10, "vers":I
    :cond_b
    sget-object v13, Lcom/android/internal/app/ProcessStats;->mCtmName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    .line 1852
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v11, v9, v6}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1853
    const-string v13, "ProcessStats"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "CTM_FLOW procName 005 : "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " ctm ="

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v17, Lcom/android/internal/app/ProcessStats;->mCtmName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " uid= "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " proc="

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "uid":I
    .end local v10    # "vers":I
    :cond_c
    :goto_5
    if-lez v24, :cond_9

    .line 1823
    add-int/lit8 v24, v24, -0x1

    .line 1824
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1825
    .restart local v9    # "uid":I
    if-gez v9, :cond_d

    .line 1826
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bad uid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1829
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    .line 1830
    .restart local v8    # "pkgName":Ljava/lang/String;
    if-nez v8, :cond_e

    .line 1831
    const-string v13, "bad process package name"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1834
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1835
    .restart local v10    # "vers":I
    if-eqz v26, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v11, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object v6, v13

    .line 1836
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :goto_6
    if-eqz v6, :cond_10

    .line 1837
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v13

    if-nez v13, :cond_b

    goto/16 :goto_1

    .line 1835
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_f
    const/4 v6, 0x0

    goto :goto_6

    .line 1841
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_10
    new-instance v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V

    .line 1842
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v13

    if-nez v13, :cond_b

    goto/16 :goto_1

    .line 1855
    :cond_11
    const-string v13, "ProcessStats"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "CTM_FLOW procName 001 : "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " ctm ="

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v17, Lcom/android/internal/app/ProcessStats;->mCtmName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " uid= "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " proc="

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1863
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "uid":I
    .end local v10    # "vers":I
    .end local v11    # "procName":Ljava/lang/String;
    .end local v24    # "NUID":I
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1864
    .local v20, "NPKG":I
    if-gez v20, :cond_13

    .line 1865
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bad package count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1868
    :cond_13
    if-lez v20, :cond_2a

    .line 1869
    add-int/lit8 v20, v20, -0x1

    .line 1870
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    .line 1871
    .restart local v8    # "pkgName":Ljava/lang/String;
    if-nez v8, :cond_14

    .line 1872
    const-string v13, "bad package name"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1875
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1876
    .restart local v24    # "NUID":I
    if-gez v24, :cond_15

    .line 1877
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bad uid count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1880
    :cond_15
    if-lez v24, :cond_13

    .line 1881
    add-int/lit8 v24, v24, -0x1

    .line 1882
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1883
    .restart local v9    # "uid":I
    if-gez v9, :cond_16

    .line 1884
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bad uid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1887
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1888
    .local v25, "NVERS":I
    if-gez v25, :cond_17

    .line 1889
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bad versions count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1892
    :cond_17
    if-lez v25, :cond_15

    .line 1893
    add-int/lit8 v25, v25, -0x1

    .line 1894
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1895
    .restart local v10    # "vers":I
    new-instance v30, Lcom/android/internal/app/ProcessStats$PackageState;

    move-object/from16 v0, v30

    invoke-direct {v0, v8, v9}, Lcom/android/internal/app/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    .line 1896
    .local v30, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v8, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/util/SparseArray;

    .line 1897
    .local v32, "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    if-nez v32, :cond_18

    .line 1898
    new-instance v32, Landroid/util/SparseArray;

    .end local v32    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-direct/range {v32 .. v32}, Landroid/util/SparseArray;-><init>()V

    .line 1901
    .restart local v32    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    sget-object v13, Lcom/android/internal/app/ProcessStats;->mCtmName:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_19

    .line 1902
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v32

    invoke-virtual {v13, v8, v9, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1903
    const-string v13, "ProcessStats"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "CTM_FLOW pkgName 006: "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " ctm ="

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v17, Lcom/android/internal/app/ProcessStats;->mCtmName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " uid= "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    :cond_18
    :goto_7
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1910
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1911
    .local v22, "NPROCS":I
    if-gez v22, :cond_1b

    .line 1912
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bad package process count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1905
    .end local v22    # "NPROCS":I
    :cond_19
    const-string v13, "ProcessStats"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "CTM_FLOW pkgName 002: "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " ctm ="

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v17, Lcom/android/internal/app/ProcessStats;->mCtmName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " uid= "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1954
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .local v7, "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v11    # "procName":Ljava/lang/String;
    .restart local v22    # "NPROCS":I
    .local v27, "hasProc":I
    :cond_1a
    sget-object v13, Lcom/android/internal/app/ProcessStats;->mCtmName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_20

    .line 1955
    move-object/from16 v0, v30

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1956
    const-string v13, "ProcessStats"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "CTM_FLOW procName 007: "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " ctm ="

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v17, Lcom/android/internal/app/ProcessStats;->mCtmName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " uid= "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v7    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v11    # "procName":Ljava/lang/String;
    .end local v27    # "hasProc":I
    :cond_1b
    :goto_8
    if-lez v22, :cond_23

    .line 1916
    add-int/lit8 v22, v22, -0x1

    .line 1917
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    .line 1918
    .restart local v11    # "procName":Ljava/lang/String;
    if-nez v11, :cond_1c

    .line 1919
    const-string v13, "bad package process name"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1922
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1925
    .restart local v27    # "hasProc":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v11, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1928
    .restart local v7    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v7, :cond_1d

    .line 1929
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "no common proc: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1932
    :cond_1d
    if-eqz v27, :cond_21

    .line 1937
    if-eqz v26, :cond_1e

    move-object/from16 v0, v30

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object v6, v13

    .line 1938
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :goto_9
    if-eqz v6, :cond_1f

    .line 1939
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v13

    if-nez v13, :cond_1a

    goto/16 :goto_1

    .line 1937
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_1e
    const/4 v6, 0x0

    goto :goto_9

    .line 1943
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_1f
    new-instance v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    const-wide/16 v12, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    .line 1945
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v13

    if-nez v13, :cond_1a

    goto/16 :goto_1

    .line 1958
    :cond_20
    const-string v13, "ProcessStats"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "CTM_FLOW procName 003: "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " ctm ="

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v17, Lcom/android/internal/app/ProcessStats;->mCtmName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " uid= "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1967
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_21
    sget-object v13, Lcom/android/internal/app/ProcessStats;->mCtmName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_22

    .line 1968
    move-object/from16 v0, v30

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    const-string v13, "ProcessStats"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "CTM_FLOW procName 008: "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " ctm ="

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v17, Lcom/android/internal/app/ProcessStats;->mCtmName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " commonProc= "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1971
    :cond_22
    const-string v13, "ProcessStats"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "CTM_FLOW procName 004: "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " ctm ="

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v17, Lcom/android/internal/app/ProcessStats;->mCtmName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " commonProc= "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1976
    .end local v7    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v11    # "procName":Ljava/lang/String;
    .end local v27    # "hasProc":I
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1977
    .local v23, "NSRVS":I
    if-gez v23, :cond_25

    .line 1978
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bad package service count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1998
    .local v12, "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    .local v15, "serviceName":Ljava/lang/String;
    .local v16, "processName":Ljava/lang/String;
    :cond_24
    move-object/from16 v0, v30

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v15, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    .end local v12    # "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v15    # "serviceName":Ljava/lang/String;
    .end local v16    # "processName":Ljava/lang/String;
    :cond_25
    if-lez v23, :cond_17

    .line 1982
    add-int/lit8 v23, v23, -0x1

    .line 1983
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1984
    .restart local v15    # "serviceName":Ljava/lang/String;
    if-nez v15, :cond_26

    .line 1985
    const-string v13, "bad package service name"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1988
    :cond_26
    const/16 v13, 0x9

    move/from16 v0, v31

    if-le v0, v13, :cond_28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    .line 1989
    .restart local v16    # "processName":Ljava/lang/String;
    :goto_a
    if-eqz v26, :cond_29

    move-object/from16 v0, v30

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ProcessStats$ServiceState;

    move-object v12, v13

    .line 1990
    .restart local v12    # "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    :goto_b
    if-nez v12, :cond_27

    .line 1991
    new-instance v12, Lcom/android/internal/app/ProcessStats$ServiceState;

    .end local v12    # "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    const/16 v17, 0x0

    move-object/from16 v13, p0

    move-object v14, v8

    invoke-direct/range {v12 .. v17}, Lcom/android/internal/app/ProcessStats$ServiceState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 1993
    .restart local v12    # "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_27
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/internal/app/ProcessStats$ServiceState;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v13

    if-nez v13, :cond_24

    goto/16 :goto_1

    .line 1988
    .end local v12    # "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v16    # "processName":Ljava/lang/String;
    :cond_28
    const/16 v16, 0x0

    goto :goto_a

    .line 1989
    .restart local v16    # "processName":Ljava/lang/String;
    :cond_29
    const/4 v12, 0x0

    goto :goto_b

    .line 2004
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "uid":I
    .end local v10    # "vers":I
    .end local v15    # "serviceName":Ljava/lang/String;
    .end local v16    # "processName":Ljava/lang/String;
    .end local v22    # "NPROCS":I
    .end local v23    # "NSRVS":I
    .end local v24    # "NUID":I
    .end local v25    # "NVERS":I
    .end local v30    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v32    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_2a
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    goto/16 :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 1308
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats;->resetCommon()V

    .line 1309
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1310
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1311
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    .line 1312
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 1314
    return-void
.end method

.method public resetSafely()V
    .locals 19

    .prologue
    .line 1318
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ProcessStats;->resetCommon()V

    .line 1321
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1322
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    .line 1323
    .local v11, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v2, v17, -0x1

    .local v2, "ip":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1324
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    .line 1325
    .local v15, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int/lit8 v5, v17, -0x1

    .local v5, "iu":I
    :goto_1
    if-ltz v5, :cond_0

    .line 1326
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/app/ProcessStats$ProcessState;

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpNumInUse:I

    .line 1325
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1323
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1332
    .end local v5    # "iu":I
    .end local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 1333
    .local v7, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v2, v17, -0x1

    :goto_2
    if-ltz v2, :cond_b

    .line 1334
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseArray;

    .line 1335
    .local v14, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int/lit8 v5, v17, -0x1

    .restart local v5    # "iu":I
    :goto_3
    if-ltz v5, :cond_9

    .line 1336
    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/SparseArray;

    .line 1337
    .local v16, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int/lit8 v6, v17, -0x1

    .local v6, "iv":I
    :goto_4
    if-ltz v6, :cond_7

    .line 1338
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 1339
    .local v10, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v3, v17, -0x1

    .local v3, "iproc":I
    :goto_5
    if-ltz v3, :cond_3

    .line 1340
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1341
    .local v12, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {v12}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1342
    invoke-virtual {v12, v8, v9}, Lcom/android/internal/app/ProcessStats$ProcessState;->resetSafely(J)V

    .line 1343
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpNumInUse:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpNumInUse:I

    .line 1344
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpFoundSubProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1339
    :goto_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 1346
    :cond_2
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeDead()V

    .line 1347
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_6

    .line 1350
    .end local v12    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_3
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v4, v17, -0x1

    .local v4, "isvc":I
    :goto_7
    if-ltz v4, :cond_5

    .line 1351
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1352
    .local v13, "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    invoke-virtual {v13}, Lcom/android/internal/app/ProcessStats$ServiceState;->isInUse()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1353
    invoke-virtual {v13, v8, v9}, Lcom/android/internal/app/ProcessStats$ServiceState;->resetSafely(J)V

    .line 1350
    :goto_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    .line 1355
    :cond_4
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_8

    .line 1358
    .end local v13    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_5
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    if-gtz v17, :cond_6

    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    if-gtz v17, :cond_6

    .line 1359
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1337
    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_4

    .line 1362
    .end local v3    # "iproc":I
    .end local v4    # "isvc":I
    .end local v10    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_7
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v17

    if-gtz v17, :cond_8

    .line 1363
    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1335
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_3

    .line 1366
    .end local v6    # "iv":I
    .end local v16    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_9
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v17

    if-gtz v17, :cond_a

    .line 1367
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1333
    :cond_a
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2

    .line 1372
    .end local v5    # "iu":I
    .end local v14    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_b
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v2, v17, -0x1

    :goto_9
    if-ltz v2, :cond_11

    .line 1373
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    .line 1374
    .restart local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int/lit8 v5, v17, -0x1

    .restart local v5    # "iu":I
    :goto_a
    if-ltz v5, :cond_f

    .line 1375
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1376
    .restart local v12    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {v12}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v17

    if-nez v17, :cond_c

    iget v0, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpNumInUse:I

    move/from16 v17, v0

    if-lez v17, :cond_e

    .line 1383
    :cond_c
    iget-boolean v0, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    iget-boolean v0, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    iget v0, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpNumInUse:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 1385
    iget-object v12, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpFoundSubProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1386
    iput-object v12, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1387
    invoke-virtual {v15, v5, v12}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 1374
    :goto_b
    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    .line 1389
    :cond_d
    invoke-virtual {v12, v8, v9}, Lcom/android/internal/app/ProcessStats$ProcessState;->resetSafely(J)V

    goto :goto_b

    .line 1392
    :cond_e
    invoke-virtual {v12}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeDead()V

    .line 1393
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_b

    .line 1396
    .end local v12    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_f
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v17

    if-gtz v17, :cond_10

    .line 1397
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1372
    :cond_10
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 1401
    .end local v5    # "iu":I
    .end local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_11
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 1403
    return-void
.end method

.method setLong(IIJ)V
    .locals 5
    .param p1, "off"    # I
    .param p2, "index"    # I
    .param p3, "value"    # J

    .prologue
    .line 2055
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v2, p1, v2

    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 2056
    .local v0, "longs":[J
    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v1, p1, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int/2addr v1, v2

    add-int/2addr v1, p2

    aput-wide p3, v0, v1

    .line 2057
    return-void
.end method

.method validateLongOffset(I)Z
    .locals 5
    .param p1, "off"    # I

    .prologue
    const/4 v2, 0x0

    .line 2033
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v3, p1, v3

    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int v0, v3, v4

    .line 2034
    .local v0, "arr":I
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 2043
    :cond_0
    :goto_0
    return v2

    .line 2037
    :cond_1
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v3, p1, v3

    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int v1, v3, v4

    .line 2038
    .local v1, "idx":I
    const/16 v3, 0x1000

    if-ge v1, v3, :cond_0

    .line 2043
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1551
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 1552
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;JI)V
    .locals 32
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J
    .param p4, "flags"    # I

    .prologue
    .line 1556
    const v26, 0x50535453

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1557
    const/16 v26, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1558
    const/16 v26, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1559
    const/16 v26, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1560
    const/16 v26, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1561
    const/16 v26, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1562
    const/16 v26, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1564
    new-instance v26, Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    invoke-direct/range {v26 .. v27}, Landroid/util/ArrayMap;-><init>(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v21

    .line 1568
    .local v21, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1569
    .local v5, "NPROC":I
    const/4 v12, 0x0

    .local v12, "ip":I
    :goto_0
    if-ge v12, v5, :cond_1

    .line 1570
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    .line 1571
    .local v24, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1572
    .local v8, "NUID":I
    const/4 v15, 0x0

    .local v15, "iu":I
    :goto_1
    if-ge v15, v8, :cond_0

    .line 1573
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v0, v26

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->commitStateTime(J)V

    .line 1572
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1569
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1576
    .end local v8    # "NUID":I
    .end local v15    # "iu":I
    .end local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v18

    .line 1577
    .local v18, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1578
    .local v4, "NPKG":I
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v4, :cond_7

    .line 1579
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/SparseArray;

    .line 1580
    .local v23, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1581
    .restart local v8    # "NUID":I
    const/4 v15, 0x0

    .restart local v15    # "iu":I
    :goto_3
    if-ge v15, v8, :cond_6

    .line 1582
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/util/SparseArray;

    .line 1583
    .local v25, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 1584
    .local v9, "NVERS":I
    const/16 v16, 0x0

    .local v16, "iv":I
    :goto_4
    move/from16 v0, v16

    if-ge v0, v9, :cond_5

    .line 1585
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 1586
    .local v19, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1587
    .local v6, "NPROCS":I
    const/4 v13, 0x0

    .local v13, "iproc":I
    :goto_5
    if-ge v13, v6, :cond_3

    .line 1588
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1589
    .local v20, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 1590
    move-object/from16 v0, v20

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->commitStateTime(J)V

    .line 1587
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 1593
    .end local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_3
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 1594
    .local v7, "NSRVS":I
    const/4 v14, 0x0

    .local v14, "isvc":I
    :goto_6
    if-ge v14, v7, :cond_4

    .line 1595
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/app/ProcessStats$ServiceState;

    move-object/from16 v0, v26

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->commitStateTime(J)V

    .line 1594
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 1584
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 1581
    .end local v6    # "NPROCS":I
    .end local v7    # "NSRVS":I
    .end local v13    # "iproc":I
    .end local v14    # "isvc":I
    .end local v19    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1578
    .end local v9    # "NVERS":I
    .end local v16    # "iv":I
    .end local v25    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 1601
    .end local v8    # "NUID":I
    .end local v15    # "iu":I
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1602
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1603
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1604
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartUptime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1605
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1607
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1609
    sget-object v26, Lcom/android/internal/app/ProcessStats;->mCtmName:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1612
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1613
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-ge v11, v0, :cond_8

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [J

    .line 1615
    .local v10, "array":[J
    array-length v0, v10

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-direct {v0, v1, v10, v2}, Lcom/android/internal/app/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 1613
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1617
    .end local v10    # "array":[J
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [J

    .line 1618
    .local v17, "lastLongs":[J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 1620
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_9

    .line 1621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move/from16 v27, v0

    aget-wide v28, v26, v27

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-wide/from16 v30, v0

    sub-long v30, p2, v30

    add-long v28, v28, v30

    aput-wide v28, v26, v27

    .line 1622
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 1624
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 1626
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1627
    const/4 v11, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v11, v0, :cond_a

    .line 1630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    move-object/from16 v26, v0

    aget v26, v26, v11

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1627
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 1633
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1634
    const/4 v12, 0x0

    :goto_9
    if-ge v12, v5, :cond_c

    .line 1635
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1636
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    .line 1637
    .restart local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1638
    .restart local v8    # "NUID":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1639
    const/4 v15, 0x0

    .restart local v15    # "iu":I
    :goto_a
    if-ge v15, v8, :cond_b

    .line 1640
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1641
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1642
    .restart local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1643
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1644
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 1639
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 1634
    .end local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 1647
    .end local v8    # "NUID":I
    .end local v15    # "iu":I
    .end local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1648
    const/4 v12, 0x0

    :goto_b
    if-ge v12, v4, :cond_12

    .line 1649
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1650
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/SparseArray;

    .line 1651
    .restart local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1652
    .restart local v8    # "NUID":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1653
    const/4 v15, 0x0

    .restart local v15    # "iu":I
    :goto_c
    if-ge v15, v8, :cond_11

    .line 1654
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1655
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/util/SparseArray;

    .line 1656
    .restart local v25    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 1657
    .restart local v9    # "NVERS":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1658
    const/16 v16, 0x0

    .restart local v16    # "iv":I
    :goto_d
    move/from16 v0, v16

    if-ge v0, v9, :cond_10

    .line 1659
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1660
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 1661
    .restart local v19    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1662
    .restart local v6    # "NPROCS":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1663
    const/4 v13, 0x0

    .restart local v13    # "iproc":I
    :goto_e
    if-ge v13, v6, :cond_e

    .line 1664
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1665
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1666
    .restart local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 1668
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1663
    :goto_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 1671
    :cond_d
    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1672
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_f

    .line 1675
    .end local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_e
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 1676
    .restart local v7    # "NSRVS":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1677
    const/4 v14, 0x0

    .restart local v14    # "isvc":I
    :goto_10
    if-ge v14, v7, :cond_f

    .line 1678
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1679
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1680
    .local v22, "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1681
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 1677
    add-int/lit8 v14, v14, 0x1

    goto :goto_10

    .line 1658
    .end local v22    # "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_f
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_d

    .line 1653
    .end local v6    # "NPROCS":I
    .end local v7    # "NSRVS":I
    .end local v13    # "iproc":I
    .end local v14    # "isvc":I
    .end local v19    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_c

    .line 1648
    .end local v9    # "NVERS":I
    .end local v16    # "iv":I
    .end local v25    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_b

    .line 1687
    .end local v8    # "NUID":I
    .end local v15    # "iu":I
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_12
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    .line 1688
    return-void
.end method
