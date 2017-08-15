.class public Landroid/os/Process;
.super Ljava/lang/Object;
.source "Process.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Process$ProcessStartResult;,
        Landroid/os/Process$ZygoteState;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_UID:I = 0x3ea

.field public static final DRM_UID:I = 0x3fb

.field public static final FIRST_APPLICATION_UID:I = 0x2710

.field public static final FIRST_ISOLATED_UID:I = 0x182b8

.field public static final FIRST_SHARED_APPLICATION_GID:I = 0xc350

.field public static final LAST_APPLICATION_UID:I = 0x4e1f

.field public static final LAST_ISOLATED_UID:I = 0x1869f

.field public static final LAST_SHARED_APPLICATION_GID:I = 0xea5f

.field private static final LOG_TAG:Ljava/lang/String; = "Process"

.field public static final LOG_UID:I = 0x3ef

.field public static final MEDIA_RW_GID:I = 0x3ff

.field public static final MEDIA_UID:I = 0x3f5

.field public static final NFC_UID:I = 0x403

.field public static final PACKAGE_INFO_GID:I = 0x408

.field public static final PHONE_UID:I = 0x3e9

.field public static final PROC_COMBINE:I = 0x100

.field public static final PROC_OUT_FLOAT:I = 0x4000

.field public static final PROC_OUT_LONG:I = 0x2000

.field public static final PROC_OUT_STRING:I = 0x1000

.field public static final PROC_PARENS:I = 0x200

.field public static final PROC_QUOTES:I = 0x400

.field public static final PROC_SPACE_TERM:I = 0x20

.field public static final PROC_TAB_TERM:I = 0x9

.field public static final PROC_TERM_MASK:I = 0xff

.field public static final PROC_ZERO_TERM:I = 0x0

.field public static final ROOT_UID:I = 0x0

.field public static final SCHED_BATCH:I = 0x3

.field public static final SCHED_FIFO:I = 0x1

.field public static final SCHED_IDLE:I = 0x5

.field public static final SCHED_OTHER:I = 0x0

.field public static final SCHED_RR:I = 0x2

.field public static final SECONDARY_ZYGOTE_SOCKET:Ljava/lang/String; = "zygote_secondary"

.field public static final SHARED_RELRO_UID:I = 0x40d

.field public static final SHARED_USER_GID:I = 0x270d

.field public static final SHELL_UID:I = 0x7d0

.field public static final SIGNAL_KILL:I = 0x9

.field public static final SIGNAL_QUIT:I = 0x3

.field public static final SIGNAL_USR1:I = 0xa

.field public static final SYSTEM_UID:I = 0x3e8

.field public static final THREAD_GROUP_AUDIO_APP:I = 0x3

.field public static final THREAD_GROUP_AUDIO_SYS:I = 0x4

.field public static final THREAD_GROUP_BG_NONINTERACTIVE:I = 0x0

.field public static final THREAD_GROUP_DEFAULT:I = -0x1

.field private static final THREAD_GROUP_FOREGROUND:I = 0x1

.field public static final THREAD_GROUP_SYSTEM:I = 0x2

.field public static final THREAD_PRIORITY_AUDIO:I = -0x10

.field public static final THREAD_PRIORITY_BACKGROUND:I = 0xa

.field public static final THREAD_PRIORITY_DEFAULT:I = 0x0

.field public static final THREAD_PRIORITY_DISPLAY:I = -0x4

.field public static final THREAD_PRIORITY_FOREGROUND:I = -0x2

.field public static final THREAD_PRIORITY_LESS_FAVORABLE:I = 0x1

.field public static final THREAD_PRIORITY_LOWEST:I = 0x13

.field public static final THREAD_PRIORITY_MORE_FAVORABLE:I = -0x1

.field public static final THREAD_PRIORITY_URGENT_AUDIO:I = -0x13

.field public static final THREAD_PRIORITY_URGENT_DISPLAY:I = -0x8

.field public static final VPN_UID:I = 0x3f8

.field public static final WIFI_UID:I = 0x3f2

.field static final ZYGOTE_RETRY_MILLIS:I = 0x1f4

.field public static final ZYGOTE_SOCKET:Ljava/lang/String; = "zygote"

.field static primaryZygoteState:Landroid/os/Process$ZygoteState;

.field static secondaryZygoteState:Landroid/os/Process$ZygoteState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1217
    return-void
.end method

.method static synthetic access$000(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/io/BufferedWriter;
    .param p1, "x1"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {p0, p1}, Landroid/os/Process;->getAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static establishZygoteConnectionForAbi(Ljava/lang/String;)V
    .locals 4
    .param p0, "abi"    # Ljava/lang/String;

    .prologue
    .line 713
    :try_start_0
    invoke-static {p0}, Landroid/os/Process;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/Process$ZygoteState;
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    return-void

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, "ex":Landroid/os/ZygoteStartFailedEx;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to connect to zygote for abi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "writer"    # Ljava/io/BufferedWriter;
    .param p1, "inputStream"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    const-string v2, "1"

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 522
    const-string v2, "--query-abi-list"

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 524
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V

    .line 527
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 528
    .local v1, "numBytes":I
    new-array v0, v1, [B

    .line 529
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 531
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2
.end method

.method public static final native getElapsedCpuTime()J
.end method

.method public static final native getFreeMemory()J
.end method

.method public static final native getGidForName(Ljava/lang/String;)I
.end method

.method public static final native getLruAnonMemory()J
.end method

.method public static final getParentPid(I)I
    .locals 5
    .param p0, "pid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 846
    new-array v0, v3, [Ljava/lang/String;

    const-string v2, "PPid:"

    aput-object v2, v0, v4

    .line 847
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v3, [J

    .line 848
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    aput-wide v2, v1, v4

    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 850
    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final native getPids(Ljava/lang/String;[I)[I
.end method

.method public static final native getPidsForCommands([Ljava/lang/String;)[I
.end method

.method public static final native getProcessGroup(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native getPss(I)J
.end method

.method public static final native getRswapRssSum(I)J
.end method

.method public static final getThreadGroupLeader(I)I
    .locals 5
    .param p0, "tid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 861
    new-array v0, v3, [Ljava/lang/String;

    const-string v2, "Tgid:"

    aput-object v2, v0, v4

    .line 862
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v3, [J

    .line 863
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    aput-wide v2, v1, v4

    .line 864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 865
    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final native getThreadPriority(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native getTotalMemory()J
.end method

.method public static final native getUidForName(Ljava/lang/String;)I
.end method

.method public static final getUidForPid(I)I
    .locals 5
    .param p0, "pid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 832
    new-array v0, v3, [Ljava/lang/String;

    const-string v2, "Uid:"

    aput-object v2, v0, v4

    .line 833
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v3, [J

    .line 834
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    aput-wide v2, v1, v4

    .line 835
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 836
    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final getZramCompressRatio()F
    .locals 8

    .prologue
    .line 1087
    invoke-static {}, Landroid/os/Debug;->getCompZram()J

    move-result-wide v0

    .line 1088
    .local v0, "compZram":J
    invoke-static {}, Landroid/os/Debug;->getOrigZram()J

    move-result-wide v2

    .line 1089
    .local v2, "origZram":J
    const/high16 v4, 0x300000

    .line 1091
    .local v4, "threshold":I
    const-wide/16 v6, 0x0

    cmp-long v5, v6, v0

    if-nez v5, :cond_0

    .line 1092
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1099
    :goto_0
    return v5

    .line 1093
    :cond_0
    int-to-long v6, v4

    cmp-long v5, v0, v6

    if-gez v5, :cond_2

    .line 1094
    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Debug;->getZramCompressMethod()S

    move-result v6

    if-ne v5, v6, :cond_1

    .line 1095
    const v5, 0x404ccccd    # 3.2f

    goto :goto_0

    .line 1097
    :cond_1
    const v5, 0x402851ec    # 2.63f

    goto :goto_0

    .line 1099
    :cond_2
    long-to-float v5, v2

    long-to-float v6, v0

    div-float/2addr v5, v6

    goto :goto_0
.end method

.method public static final getZramExtraAvailableSize()J
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x0

    .line 1130
    invoke-static {}, Landroid/os/Debug;->getTotalZram()J

    move-result-wide v6

    .line 1131
    .local v6, "totalZram":J
    cmp-long v8, v6, v4

    if-nez v8, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return-wide v4

    .line 1134
    :cond_1
    const-string/jumbo v8, "ro.default_cache_free"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1136
    const-wide/32 v0, 0xf00000

    .line 1137
    .local v0, "anonReserve":J
    invoke-static {}, Landroid/os/Process;->getLruAnonMemory()J

    move-result-wide v8

    const-wide/32 v10, 0xf00000

    sub-long v2, v8, v10

    .line 1138
    .local v2, "anonToCompress":J
    cmp-long v8, v2, v4

    if-gez v8, :cond_2

    .line 1139
    const-wide/16 v2, 0x0

    .line 1141
    :cond_2
    long-to-float v8, v2

    invoke-static {}, Landroid/os/Process;->getZramCompressRatio()F

    move-result v9

    div-float v9, v12, v9

    sub-float v9, v12, v9

    mul-float/2addr v8, v9

    float-to-long v4, v8

    .line 1142
    .local v4, "savableMemory":J
    goto :goto_0
.end method

.method public static final getZramExtraTotalSize()J
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    .line 1111
    invoke-static {}, Landroid/os/Debug;->getTotalZram()J

    move-result-wide v4

    .line 1112
    .local v4, "totalZram":J
    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 1120
    :goto_0
    return-wide v6

    .line 1117
    :cond_0
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    div-long v0, v6, v8

    .line 1118
    .local v0, "compTotalSize":J
    long-to-float v6, v0

    invoke-static {}, Landroid/os/Process;->getZramCompressRatio()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-long v2, v6

    .line 1120
    .local v2, "origTotalSize":J
    sub-long v6, v2, v0

    goto :goto_0
.end method

.method public static final isIsolated()Z
    .locals 2

    .prologue
    .line 807
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 808
    .local v0, "uid":I
    const v1, 0x182b8

    if-lt v0, v1, :cond_0

    const v1, 0x1869f

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final killProcess(I)V
    .locals 1
    .param p0, "pid"    # I

    .prologue
    .line 1038
    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 1039
    return-void
.end method

.method public static final native killProcessGroup(II)I
.end method

.method public static final killProcessQuiet(I)V
    .locals 1
    .param p0, "pid"    # I

    .prologue
    .line 1062
    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignalQuiet(II)V

    .line 1063
    return-void
.end method

.method public static final myPid()I
    .locals 1

    .prologue
    .line 763
    invoke-static {}, Landroid/system/Os;->getpid()I

    move-result v0

    return v0
.end method

.method public static final myPpid()I
    .locals 1

    .prologue
    .line 771
    invoke-static {}, Landroid/system/Os;->getppid()I

    move-result v0

    return v0
.end method

.method public static final myTid()I
    .locals 1

    .prologue
    .line 779
    invoke-static {}, Landroid/system/Os;->gettid()I

    move-result v0

    return v0
.end method

.method public static final myUid()I
    .locals 1

    .prologue
    .line 789
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v0

    return v0
.end method

.method public static final myUserHandle()Landroid/os/UserHandle;
    .locals 2

    .prologue
    .line 799
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method private static openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/Process$ZygoteState;
    .locals 4
    .param p0, "abi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .prologue
    .line 724
    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    invoke-virtual {v1}, Landroid/os/Process$ZygoteState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 726
    :cond_0
    :try_start_0
    const-string/jumbo v1, "zygote"

    invoke-static {v1}, Landroid/os/Process$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    move-result-object v1

    sput-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :cond_1
    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    invoke-virtual {v1, p0}, Landroid/os/Process$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 733
    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    .line 746
    :goto_0
    return-object v1

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    const-string v2, "Error connecting to primary zygote"

    invoke-direct {v1, v2, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 737
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_2
    sget-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;

    if-eqz v1, :cond_3

    sget-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;

    invoke-virtual {v1}, Landroid/os/Process$ZygoteState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 739
    :cond_3
    :try_start_1
    const-string/jumbo v1, "zygote_secondary"

    invoke-static {v1}, Landroid/os/Process$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    move-result-object v1

    sput-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 745
    :cond_4
    sget-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;

    invoke-virtual {v1, p0}, Landroid/os/Process$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 746
    sget-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;

    goto :goto_0

    .line 740
    :catch_1
    move-exception v0

    .line 741
    .restart local v0    # "ioe":Ljava/io/IOException;
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    const-string v2, "Error connecting to secondary zygote"

    invoke-direct {v1, v2, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 749
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_5
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported zygote ABI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final native parseProcLine([BII[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V
.end method

.method public static final native removeAllProcessGroups()V
.end method

.method public static final native sendSignal(II)V
.end method

.method public static final native sendSignalQuiet(II)V
.end method

.method public static final native setArgV0(Ljava/lang/String;)V
.end method

.method public static final native setCanSelfBackground(Z)V
.end method

.method public static final native setGid(I)I
.end method

.method public static final native setProcessGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setSwappiness(IZ)Z
.end method

.method public static final native setThreadGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadPriority(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadPriority(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadScheduler(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native setUid(I)I
.end method

.method public static final start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 3
    .param p0, "processClass"    # Ljava/lang/String;
    .param p1, "niceName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "gids"    # [I
    .param p5, "debugFlags"    # I
    .param p6, "mountExternal"    # I
    .param p7, "targetSdkVersion"    # I
    .param p8, "seInfo"    # Ljava/lang/String;
    .param p9, "abi"    # Ljava/lang/String;
    .param p10, "instructionSet"    # Ljava/lang/String;
    .param p11, "appDataDir"    # Ljava/lang/String;
    .param p12, "zygoteArgs"    # [Ljava/lang/String;

    .prologue
    .line 496
    :try_start_0
    invoke-static/range {p0 .. p12}, Landroid/os/Process;->startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "ex":Landroid/os/ZygoteStartFailedEx;
    const-string v1, "Process"

    const-string v2, "Starting VM process through Zygote failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Starting VM process through Zygote failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 12
    .param p0, "processClass"    # Ljava/lang/String;
    .param p1, "niceName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "gids"    # [I
    .param p5, "debugFlags"    # I
    .param p6, "mountExternal"    # I
    .param p7, "targetSdkVersion"    # I
    .param p8, "seInfo"    # Ljava/lang/String;
    .param p9, "abi"    # Ljava/lang/String;
    .param p10, "instructionSet"    # Ljava/lang/String;
    .param p11, "appDataDir"    # Ljava/lang/String;
    .param p12, "extraArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .prologue
    .line 628
    const-class v10, Landroid/os/Process;

    monitor-enter v10

    .line 629
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .local v2, "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, "--runtime-init"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--setuid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--setgid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    and-int/lit8 v9, p5, 0x10

    if-eqz v9, :cond_0

    .line 637
    const-string v9, "--enable-jni-logging"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_0
    and-int/lit8 v9, p5, 0x8

    if-eqz v9, :cond_1

    .line 640
    const-string v9, "--enable-safemode"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_1
    and-int/lit8 v9, p5, 0x1

    if-eqz v9, :cond_2

    .line 643
    const-string v9, "--enable-debugger"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_2
    and-int/lit8 v9, p5, 0x2

    if-eqz v9, :cond_3

    .line 646
    const-string v9, "--enable-checkjni"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_3
    and-int/lit8 v9, p5, 0x4

    if-eqz v9, :cond_4

    .line 649
    const-string v9, "--enable-assert"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_4
    const/4 v9, 0x2

    move/from16 v0, p6

    if-ne v0, v9, :cond_7

    .line 652
    const-string v9, "--mount-external-multiuser"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_5
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--target-sdk-version="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p7

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    if-eqz p4, :cond_9

    move-object/from16 v0, p4

    array-length v9, v0

    if-lez v9, :cond_9

    .line 663
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v9, "--setgroups="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    move-object/from16 v0, p4

    array-length v8, v0

    .line 667
    .local v8, "sz":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v8, :cond_8

    .line 668
    if-eqz v4, :cond_6

    .line 669
    const/16 v9, 0x2c

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 671
    :cond_6
    aget v9, p4, v4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 667
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 653
    .end local v4    # "i":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "sz":I
    :cond_7
    const/4 v9, 0x3

    move/from16 v0, p6

    if-ne v0, v9, :cond_5

    .line 654
    const-string v9, "--mount-external-multiuser-all"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 702
    .end local v2    # "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 674
    .restart local v2    # "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "i":I
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "sz":I
    :cond_8
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    .end local v4    # "i":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "sz":I
    :cond_9
    if-eqz p1, :cond_a

    .line 678
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--nice-name="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    :cond_a
    if-eqz p8, :cond_b

    .line 682
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--seinfo="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_b
    if-eqz p10, :cond_c

    .line 686
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--instruction-set="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p10

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    :cond_c
    if-eqz p11, :cond_d

    .line 690
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--app-data-dir="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p11

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_d
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    if-eqz p12, :cond_e

    .line 696
    move-object/from16 v3, p12

    .local v3, "arr$":[Ljava/lang/String;
    array-length v6, v3

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v6, :cond_e

    aget-object v1, v3, v5

    .line 697
    .local v1, "arg":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 701
    .end local v1    # "arg":Ljava/lang/String;
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_e
    invoke-static/range {p9 .. p9}, Landroid/os/Process;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    move-result-object v9

    invoke-static {v9, v2}, Landroid/os/Process;->zygoteSendArgsAndGetResult(Landroid/os/Process$ZygoteState;Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;

    move-result-object v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v9
.end method

.method public static final supportsProcesses()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1000
    const/4 v0, 0x1

    return v0
.end method

.method private static zygoteSendArgsAndGetResult(Landroid/os/Process$ZygoteState;Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;
    .locals 9
    .param p0, "zygoteState"    # Landroid/os/Process$ZygoteState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Process$ZygoteState;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Process$ProcessStartResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .prologue
    .line 547
    .local p1, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 548
    .local v5, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 549
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_0

    .line 550
    new-instance v7, Landroid/os/ZygoteStartFailedEx;

    const-string v8, "embedded newlines not allowed"

    invoke-direct {v7, v8}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    .end local v2    # "i":I
    .end local v5    # "sz":I
    :catch_0
    move-exception v1

    .line 592
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Landroid/os/Process$ZygoteState;->close()V

    .line 593
    new-instance v7, Landroid/os/ZygoteStartFailedEx;

    invoke-direct {v7, v1}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 548
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v2    # "i":I
    .restart local v5    # "sz":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 564
    :cond_1
    :try_start_1
    iget-object v6, p0, Landroid/os/Process$ZygoteState;->writer:Ljava/io/BufferedWriter;

    .line 565
    .local v6, "writer":Ljava/io/BufferedWriter;
    iget-object v3, p0, Landroid/os/Process$ZygoteState;->inputStream:Ljava/io/DataInputStream;

    .line 567
    .local v3, "inputStream":Ljava/io/DataInputStream;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 570
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    .line 571
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 572
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 570
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 576
    .end local v0    # "arg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    .line 579
    new-instance v4, Landroid/os/Process$ProcessStartResult;

    invoke-direct {v4}, Landroid/os/Process$ProcessStartResult;-><init>()V

    .line 584
    .local v4, "result":Landroid/os/Process$ProcessStartResult;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    .line 585
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v7

    iput-boolean v7, v4, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    .line 587
    iget v7, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    if-gez v7, :cond_3

    .line 588
    new-instance v7, Landroid/os/ZygoteStartFailedEx;

    const-string v8, "fork() failed"

    invoke-direct {v7, v8}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 590
    :cond_3
    return-object v4
.end method
