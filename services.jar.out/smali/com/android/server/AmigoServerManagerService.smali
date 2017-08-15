.class public Lcom/android/server/AmigoServerManagerService;
.super Landroid/os/amigoserver/IAmigoServerManager$Stub;
.source "AmigoServerManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AmigoServerManagerService"

.field private static mSettingOff:I

.field private static mSettingOn:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHalLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    sput v0, Lcom/android/server/AmigoServerManagerService;->mSettingOn:I

    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/android/server/AmigoServerManagerService;->mSettingOff:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/amigoserver/IAmigoServerManager$Stub;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AmigoServerManagerService;->mHalLock:Ljava/lang/Object;

    .line 30
    iput-object p1, p0, Lcom/android/server/AmigoServerManagerService;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private initNodeState(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "ssg_switch"

    sget v11, Lcom/android/server/AmigoServerManagerService;->mSettingOff:I

    invoke-static {v9, v10, v11}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    sget v10, Lcom/android/server/AmigoServerManagerService;->mSettingOff:I

    if-eq v9, v10, :cond_5

    move v5, v7

    .line 39
    .local v5, "mSSGSwitch":Z
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "ssg_quick_operating"

    sget v11, Lcom/android/server/AmigoServerManagerService;->mSettingOff:I

    invoke-static {v9, v10, v11}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    sget v10, Lcom/android/server/AmigoServerManagerService;->mSettingOff:I

    if-eq v9, v10, :cond_6

    move v3, v7

    .line 40
    .local v3, "mSSGQuickOpera":Z
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "ssg_doubleclick_wake"

    sget v11, Lcom/android/server/AmigoServerManagerService;->mSettingOff:I

    invoke-static {v9, v10, v11}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    sget v10, Lcom/android/server/AmigoServerManagerService;->mSettingOff:I

    if-eq v9, v10, :cond_7

    move v0, v7

    .line 41
    .local v0, "mDoubleClick":Z
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "glove_patterns"

    sget v11, Lcom/android/server/AmigoServerManagerService;->mSettingOff:I

    invoke-static {v9, v10, v11}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    sget v10, Lcom/android/server/AmigoServerManagerService;->mSettingOff:I

    if-eq v9, v10, :cond_8

    move v1, v7

    .line 42
    .local v1, "mGloveMode":Z
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "auto_lcm_acl"

    sget v11, Lcom/android/server/AmigoServerManagerService;->mSettingOff:I

    invoke-static {v9, v10, v11}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    sget v10, Lcom/android/server/AmigoServerManagerService;->mSettingOff:I

    if-eq v9, v10, :cond_9

    move v2, v7

    .line 44
    .local v2, "mLcmAcl":Z
    :goto_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "skylight_switch"

    sget v11, Lcom/android/server/AmigoServerManagerService;->mSettingOn:I

    invoke-static {v9, v10, v11}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    sget v10, Lcom/android/server/AmigoServerManagerService;->mSettingOff:I

    if-eq v9, v10, :cond_a

    move v6, v7

    .line 46
    .local v6, "mSkyLightEnable":Z
    :goto_5
    if-eqz v5, :cond_1

    .line 48
    if-eqz v0, :cond_0

    .line 50
    const/16 v7, 0x8

    sget v9, Lcom/android/server/AmigoServerManagerService;->mSettingOn:I

    invoke-virtual {p0, v7, v9}, Lcom/android/server/AmigoServerManagerService;->setNodeState(II)V

    .line 52
    :cond_0
    if-eqz v3, :cond_1

    .line 54
    const/16 v7, 0xa

    sget v9, Lcom/android/server/AmigoServerManagerService;->mSettingOn:I

    invoke-virtual {p0, v7, v9}, Lcom/android/server/AmigoServerManagerService;->setNodeState(II)V

    .line 55
    sget v4, Lcom/android/server/AmigoServerManagerService;->mSettingOff:I

    .line 56
    .local v4, "mSSGQuickOperaConfig":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "black_gesture_config_value"

    sget v10, Lcom/android/server/AmigoServerManagerService;->mSettingOff:I

    invoke-static {v7, v9, v10}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 57
    sget v7, Lcom/android/server/AmigoServerManagerService;->mSettingOff:I

    if-le v4, v7, :cond_1

    .line 59
    const/16 v7, 0xb

    invoke-virtual {p0, v7, v4}, Lcom/android/server/AmigoServerManagerService;->setNodeState(II)V

    .line 63
    .end local v4    # "mSSGQuickOperaConfig":I
    :cond_1
    if-eqz v1, :cond_2

    .line 65
    const/16 v7, 0x9

    sget v9, Lcom/android/server/AmigoServerManagerService;->mSettingOn:I

    invoke-virtual {p0, v7, v9}, Lcom/android/server/AmigoServerManagerService;->setNodeState(II)V

    .line 67
    :cond_2
    if-eqz v2, :cond_3

    .line 69
    sget v7, Lcom/android/server/AmigoServerManagerService;->mSettingOn:I

    invoke-virtual {p0, v8, v7}, Lcom/android/server/AmigoServerManagerService;->setNodeState(II)V

    .line 72
    :cond_3
    if-nez v6, :cond_4

    .line 74
    const/16 v7, 0x29

    sget v8, Lcom/android/server/AmigoServerManagerService;->mSettingOff:I

    invoke-virtual {p0, v7, v8}, Lcom/android/server/AmigoServerManagerService;->setNodeState(II)V

    .line 77
    :cond_4
    return-void

    .end local v0    # "mDoubleClick":Z
    .end local v1    # "mGloveMode":Z
    .end local v2    # "mLcmAcl":Z
    .end local v3    # "mSSGQuickOpera":Z
    .end local v5    # "mSSGSwitch":Z
    .end local v6    # "mSkyLightEnable":Z
    :cond_5
    move v5, v8

    .line 38
    goto/16 :goto_0

    .restart local v5    # "mSSGSwitch":Z
    :cond_6
    move v3, v8

    .line 39
    goto/16 :goto_1

    .restart local v3    # "mSSGQuickOpera":Z
    :cond_7
    move v0, v8

    .line 40
    goto :goto_2

    .restart local v0    # "mDoubleClick":Z
    :cond_8
    move v1, v8

    .line 41
    goto :goto_3

    .restart local v1    # "mGloveMode":Z
    :cond_9
    move v2, v8

    .line 42
    goto :goto_4

    .restart local v2    # "mLcmAcl":Z
    :cond_a
    move v6, v8

    .line 44
    goto :goto_5
.end method

.method private static native nativeGetNodeContent(I)Ljava/lang/String;
.end method

.method private static native nativeGetNodeState(I)I
.end method

.method private static native nativeSetNodeState(II)V
.end method


# virtual methods
.method public getNodeContent(I)Ljava/lang/String;
    .locals 3
    .param p1, "NodeType"    # I

    .prologue
    .line 93
    const-string v0, "AmigoServerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNodeContent NodeType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lcom/android/server/AmigoServerManagerService;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    invoke-static {p1}, Lcom/android/server/AmigoServerManagerService;->nativeGetNodeContent(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNodeState(I)I
    .locals 3
    .param p1, "NodeType"    # I

    .prologue
    .line 86
    const-string v0, "AmigoServerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNodeState NodeType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/android/server/AmigoServerManagerService;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    invoke-static {p1}, Lcom/android/server/AmigoServerManagerService;->nativeGetNodeState(I)I

    move-result v0

    monitor-exit v1

    return v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSystemReady()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "AmigoServerManagerService"

    const-string v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/android/server/AmigoServerManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/AmigoServerManagerService;->initNodeState(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public setNodeState(II)V
    .locals 3
    .param p1, "NodeType"    # I
    .param p2, "mValue"    # I

    .prologue
    .line 80
    const-string v0, "AmigoServerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNodeState NodeType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mValue= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/android/server/AmigoServerManagerService;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/AmigoServerManagerService;->nativeSetNodeState(II)V

    .line 83
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
