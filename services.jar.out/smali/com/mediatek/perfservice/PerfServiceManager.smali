.class public Lcom/mediatek/perfservice/PerfServiceManager;
.super Ljava/lang/Object;
.source "PerfServiceManager.java"

# interfaces
.implements Lcom/mediatek/perfservice/IPerfServiceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;,
        Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final HEAP_UTILIZATION_DURING_FRAME_UPDATE:F = 0.5f

.field private static final RENDER_BIT:I = 0x800000

.field private static final TAG:Ljava/lang/String; = "PerfServiceManager"

.field private static final TOUCH_BOOST_DURATION_MS:I = 0xbb8

.field private static final UI_UPDATE_DURATION_MS:I = 0x1f4


# instance fields
.field private bDuringTouch:Z

.field private bDuringTouchBoost:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultUtilization:F

.field private mDisplayType:I

.field private mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mRuntime:Ldalvik/system/VMRuntime;

.field final mTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/mediatek/perfservice/PerfServiceManager;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mContext:Landroid/content/Context;

    .line 122
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PerfServiceManager"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 123
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 124
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 125
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 126
    new-instance v1, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;-><init>(Lcom/mediatek/perfservice/PerfServiceManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    .line 128
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    .line 129
    iput-boolean v4, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z

    .line 130
    iput-boolean v4, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z

    .line 131
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDisplayType:I

    .line 132
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;

    .line 133
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v1

    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDefaultUtilization:F

    .line 134
    const-string v1, "Created and started PerfService thread"

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/perfservice/PerfServiceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/perfservice/PerfServiceManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;

    .prologue
    .line 58
    iget v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDefaultUtilization:F

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/perfservice/PerfServiceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/perfservice/PerfServiceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/perfservice/PerfServiceManager;)Ldalvik/system/VMRuntime;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/mediatek/perfservice/PerfServiceManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 710
    const-string v0, "PerfServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PerfService] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 714
    const-string v0, "PerfServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PerfService] ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return-void
.end method

.method public static native nativePerfBoostDisable(I)I
.end method

.method public static native nativePerfBoostEnable(I)I
.end method

.method public static native nativePerfDumpAll()I
.end method

.method public static native nativePerfLevelBoost(I)I
.end method

.method public static native nativePerfNotifyAppState(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native nativePerfRestorePolicy(I)I
.end method

.method public static native nativePerfSetFavorPid(I)I
.end method

.method public static native nativePerfUserGetCapability(I)I
.end method

.method public static native nativePerfUserRegScn(II)I
.end method

.method public static native nativePerfUserRegScnConfig(IIIIII)I
.end method

.method public static native nativePerfUserScnDisable(I)I
.end method

.method public static native nativePerfUserScnDisableAll()I
.end method

.method public static native nativePerfUserScnEnable(I)I
.end method

.method public static native nativePerfUserScnReg(IIII)I
.end method

.method public static native nativePerfUserScnRegBigLittle(IIIIII)I
.end method

.method public static native nativePerfUserScnResetAll()I
.end method

.method public static native nativePerfUserScnRestoreAll()I
.end method

.method public static native nativePerfUserScnUnreg(I)I
.end method

.method public static native nativePerfUserUnregScn(I)I
.end method


# virtual methods
.method public boostDisable(I)V
    .locals 3
    .param p1, "scenario"    # I

    .prologue
    .line 165
    const/4 v1, 0x5

    if-ne v1, p1, :cond_0

    .line 166
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z

    .line 167
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    const/16 v2, 0xbb8

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckTouchBoostTimerMs(I)V
    invoke-static {v1, v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$200(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$100(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 171
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 172
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 173
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 174
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 175
    return-void
.end method

.method public boostEnable(I)V
    .locals 3
    .param p1, "scenario"    # I

    .prologue
    const/4 v2, 0x1

    .line 143
    const/4 v1, 0x5

    if-ne v1, p1, :cond_1

    .line 144
    iget v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDisplayType:I

    if-nez v1, :cond_0

    .line 145
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    .line 161
    :goto_0
    return-void

    .line 149
    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z

    .line 150
    iput-boolean v2, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z

    .line 151
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTouchBoostTimer()V
    invoke-static {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$000(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;)V

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$100(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 157
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 158
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 159
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 160
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public boostEnableTimeout(II)V
    .locals 2
    .param p1, "scenario"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 179
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$100(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 181
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 182
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 183
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 184
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 185
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 186
    return-void
.end method

.method public boostEnableTimeoutMs(II)V
    .locals 2
    .param p1, "scenario"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 190
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$100(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 192
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 193
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 194
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 195
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 196
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 197
    return-void
.end method

.method public dumpAll()V
    .locals 0

    .prologue
    .line 295
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfDumpAll()I

    .line 296
    return-void
.end method

.method public notifyAppState(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "packName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "state"    # I

    .prologue
    .line 201
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 202
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 203
    new-instance v1, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;-><init>(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 204
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 205
    return-void
.end method

.method public notifyDisplayType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 326
    sget-boolean v0, Lcom/mediatek/perfservice/PerfServiceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDisplayType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 328
    :cond_0
    iput p1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDisplayType:I

    .line 329
    return-void
.end method

.method public notifyFrameUpdate(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v3, 0x7

    .line 307
    sget-boolean v1, Lcom/mediatek/perfservice/PerfServiceManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFrameUpdate - bDuringTouchBoost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 310
    :cond_0
    if-eqz p1, :cond_1

    .line 311
    const/high16 v1, 0x800000

    or-int/2addr v1, p1

    invoke-static {v1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfSetFavorPid(I)I

    .line 313
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z

    if-nez v1, :cond_2

    .line 323
    :goto_0
    return-void

    .line 316
    :cond_2
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTimer(I)V
    invoke-static {v1, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$100(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 318
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 319
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 320
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 321
    const/16 v1, 0x1f4

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 322
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public notifyUserStatus(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "status"    # I

    .prologue
    .line 332
    sget-boolean v0, Lcom/mediatek/perfservice/PerfServiceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyUserStatus - type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 336
    :cond_0
    return-void
.end method

.method public restorePolicy(I)V
    .locals 0
    .param p1, "pid"    # I

    .prologue
    .line 303
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfRestorePolicy(I)I

    .line 304
    return-void
.end method

.method public setFavorPid(I)V
    .locals 0
    .param p1, "pid"    # I

    .prologue
    .line 299
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfSetFavorPid(I)I

    .line 300
    return-void
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 138
    const-string v0, "systemReady, register ACTION_BOOT_COMPLETED"

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public userDisable(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 248
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckUserTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$300(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 250
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 251
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 252
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 253
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 254
    return-void
.end method

.method public userDisableAll()V
    .locals 2

    .prologue
    .line 283
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 284
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x20

    iput v1, v0, Landroid/os/Message;->what:I

    .line 285
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 286
    return-void
.end method

.method public userEnable(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 239
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckUserTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$300(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 241
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 242
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 243
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 244
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 245
    return-void
.end method

.method public userEnableTimeout(II)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 257
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckUserTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$300(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 259
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 260
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 261
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 262
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 263
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 264
    return-void
.end method

.method public userEnableTimeoutMs(II)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 267
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckUserTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$300(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 269
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 270
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 271
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 272
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 273
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 274
    return-void
.end method

.method public userGetCapability(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 220
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserGetCapability(I)I

    move-result v0

    return v0
.end method

.method public userReg(IIII)I
    .locals 1
    .param p1, "scn_core"    # I
    .param p2, "scn_freq"    # I
    .param p3, "pid"    # I
    .param p4, "tid"    # I

    .prologue
    .line 208
    invoke-static {p1, p2, p3, p4}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnReg(IIII)I

    move-result v0

    return v0
.end method

.method public userRegBigLittle(IIIIII)I
    .locals 1
    .param p1, "scn_core_big"    # I
    .param p2, "scn_freq_big"    # I
    .param p3, "scn_core_little"    # I
    .param p4, "scn_freq_little"    # I
    .param p5, "pid"    # I
    .param p6, "tid"    # I

    .prologue
    .line 212
    invoke-static/range {p1 .. p6}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnRegBigLittle(IIIIII)I

    move-result v0

    return v0
.end method

.method public userRegScn(II)I
    .locals 1
    .param p1, "pid"    # I
    .param p2, "tid"    # I

    .prologue
    .line 224
    invoke-static {p1, p2}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserRegScn(II)I

    move-result v0

    return v0
.end method

.method public userRegScnConfig(IIIIII)V
    .locals 0
    .param p1, "handle"    # I
    .param p2, "cmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I

    .prologue
    .line 228
    invoke-static/range {p1 .. p6}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserRegScnConfig(IIIIII)I

    .line 229
    return-void
.end method

.method public userResetAll()V
    .locals 2

    .prologue
    .line 277
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 278
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 279
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 280
    return-void
.end method

.method public userRestoreAll()V
    .locals 2

    .prologue
    .line 289
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 290
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x21

    iput v1, v0, Landroid/os/Message;->what:I

    .line 291
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 292
    return-void
.end method

.method public userUnreg(I)V
    .locals 0
    .param p1, "handle"    # I

    .prologue
    .line 216
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnUnreg(I)I

    .line 217
    return-void
.end method

.method public userUnregScn(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 232
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 233
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 234
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 235
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 236
    return-void
.end method
