.class public Landroid/hardware/SmartStayMonitor;
.super Ljava/lang/Object;
.source "SmartStayMonitor.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SmartStayMonitor$1;,
        Landroid/hardware/SmartStayMonitor$MainHandler;,
        Landroid/hardware/SmartStayMonitor$MyOrientationListener;,
        Landroid/hardware/SmartStayMonitor$StartupCameraThread;,
        Landroid/hardware/SmartStayMonitor$SmartStayListener;
    }
.end annotation


# static fields
.field private static final FACE_DETECTION_TIME:I = 0x3e8

.field private static final MSG_FACE_DETECTION_TIMEOUT:I = 0x0

.field private static final ORIENTATION_HYSTERESIS:I = 0x23

.field public static final SAMRT_STAY_EVENT_KEEP_AKAKE:I = 0x0

.field public static final SAMRT_STAY_EVENT_STANDBY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SmartStayMonitor"


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraInfo:Landroid/hardware/Camera$CameraInfo;

.field private mHandler:Landroid/hardware/SmartStayMonitor$MainHandler;

.field private mLock:Ljava/lang/Object;

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Landroid/hardware/SmartStayMonitor$MyOrientationListener;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mSmartStayListener:Landroid/hardware/SmartStayMonitor$SmartStayListener;

.field private mStartupCameraThread:Landroid/hardware/SmartStayMonitor$StartupCameraThread;

.field private mTimeout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput v0, p0, Landroid/hardware/SmartStayMonitor;->mOrientation:I

    .line 164
    iput v0, p0, Landroid/hardware/SmartStayMonitor;->mOrientationCompensation:I

    .line 166
    new-instance v0, Landroid/hardware/SmartStayMonitor$MyOrientationListener;

    invoke-direct {v0, p0, p1}, Landroid/hardware/SmartStayMonitor$MyOrientationListener;-><init>(Landroid/hardware/SmartStayMonitor;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/hardware/SmartStayMonitor;->mOrientationListener:Landroid/hardware/SmartStayMonitor$MyOrientationListener;

    .line 167
    new-instance v0, Landroid/hardware/SmartStayMonitor$StartupCameraThread;

    invoke-direct {v0, p0, v1}, Landroid/hardware/SmartStayMonitor$StartupCameraThread;-><init>(Landroid/hardware/SmartStayMonitor;Landroid/hardware/SmartStayMonitor$1;)V

    iput-object v0, p0, Landroid/hardware/SmartStayMonitor;->mStartupCameraThread:Landroid/hardware/SmartStayMonitor$StartupCameraThread;

    .line 168
    new-instance v0, Landroid/hardware/SmartStayMonitor$MainHandler;

    invoke-direct {v0, p0, v1}, Landroid/hardware/SmartStayMonitor$MainHandler;-><init>(Landroid/hardware/SmartStayMonitor;Landroid/hardware/SmartStayMonitor$1;)V

    iput-object v0, p0, Landroid/hardware/SmartStayMonitor;->mHandler:Landroid/hardware/SmartStayMonitor$MainHandler;

    .line 170
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/SmartStayMonitor;->mLock:Ljava/lang/Object;

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/SmartStayMonitor;->mTimeout:Z

    .line 173
    iput-object v1, p0, Landroid/hardware/SmartStayMonitor;->mSmartStayListener:Landroid/hardware/SmartStayMonitor$SmartStayListener;

    .line 174
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SmartStayMonitor;

    .prologue
    .line 27
    iget-object v0, p0, Landroid/hardware/SmartStayMonitor;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$002(Landroid/hardware/SmartStayMonitor;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/SmartStayMonitor;
    .param p1, "x1"    # Landroid/hardware/Camera;

    .prologue
    .line 27
    iput-object p1, p0, Landroid/hardware/SmartStayMonitor;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$100(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/Camera$CameraInfo;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SmartStayMonitor;

    .prologue
    .line 27
    iget-object v0, p0, Landroid/hardware/SmartStayMonitor;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/hardware/SmartStayMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/hardware/SmartStayMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Landroid/hardware/SmartStayMonitor;->mTimeout:Z

    return p1
.end method

.method static synthetic access$102(Landroid/hardware/SmartStayMonitor;Landroid/hardware/Camera$CameraInfo;)Landroid/hardware/Camera$CameraInfo;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/SmartStayMonitor;
    .param p1, "x1"    # Landroid/hardware/Camera$CameraInfo;

    .prologue
    .line 27
    iput-object p1, p0, Landroid/hardware/SmartStayMonitor;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    return-object p1
.end method

.method static synthetic access$200(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SmartStayMonitor;

    .prologue
    .line 27
    iget-object v0, p0, Landroid/hardware/SmartStayMonitor;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$202(Landroid/hardware/SmartStayMonitor;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/SmartStayMonitor;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 27
    iput-object p1, p0, Landroid/hardware/SmartStayMonitor;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$300(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/SmartStayMonitor$MyOrientationListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SmartStayMonitor;

    .prologue
    .line 27
    iget-object v0, p0, Landroid/hardware/SmartStayMonitor;->mOrientationListener:Landroid/hardware/SmartStayMonitor$MyOrientationListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/SmartStayMonitor$MainHandler;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SmartStayMonitor;

    .prologue
    .line 27
    iget-object v0, p0, Landroid/hardware/SmartStayMonitor;->mHandler:Landroid/hardware/SmartStayMonitor$MainHandler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/SmartStayMonitor;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SmartStayMonitor;

    .prologue
    .line 27
    iget v0, p0, Landroid/hardware/SmartStayMonitor;->mOrientation:I

    return v0
.end method

.method static synthetic access$502(Landroid/hardware/SmartStayMonitor;I)I
    .locals 0
    .param p0, "x0"    # Landroid/hardware/SmartStayMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Landroid/hardware/SmartStayMonitor;->mOrientation:I

    return p1
.end method

.method static synthetic access$600(Landroid/hardware/SmartStayMonitor;II)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SmartStayMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/hardware/SmartStayMonitor;->roundOrientation(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/hardware/SmartStayMonitor;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SmartStayMonitor;

    .prologue
    .line 27
    iget v0, p0, Landroid/hardware/SmartStayMonitor;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$702(Landroid/hardware/SmartStayMonitor;I)I
    .locals 0
    .param p0, "x0"    # Landroid/hardware/SmartStayMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Landroid/hardware/SmartStayMonitor;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$800(Landroid/hardware/SmartStayMonitor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SmartStayMonitor;

    .prologue
    .line 27
    iget-object v0, p0, Landroid/hardware/SmartStayMonitor;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/SmartStayMonitor$SmartStayListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SmartStayMonitor;

    .prologue
    .line 27
    iget-object v0, p0, Landroid/hardware/SmartStayMonitor;->mSmartStayListener:Landroid/hardware/SmartStayMonitor$SmartStayListener;

    return-object v0
.end method

.method private roundOrientation(II)I
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "orientationHistory"    # I

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 242
    .local v0, "changeOrientation":Z
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 243
    const/4 v0, 0x1

    .line 250
    :goto_0
    if-eqz v0, :cond_0

    .line 251
    add-int/lit8 v2, p1, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 p2, v2, 0x168

    .line 254
    .end local p2    # "orientationHistory":I
    :cond_0
    return p2

    .line 245
    .restart local p2    # "orientationHistory":I
    :cond_1
    sub-int v2, p1, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 246
    .local v1, "dist":I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 247
    const/16 v2, 0x50

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 3
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Landroid/hardware/SmartStayMonitor;->mHandler:Landroid/hardware/SmartStayMonitor$MainHandler;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Landroid/hardware/SmartStayMonitor;->mHandler:Landroid/hardware/SmartStayMonitor$MainHandler;

    invoke-virtual {v0, v1}, Landroid/hardware/SmartStayMonitor$MainHandler;->removeMessages(I)V

    .line 232
    :cond_0
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 233
    :try_start_0
    iget-boolean v0, p0, Landroid/hardware/SmartStayMonitor;->mTimeout:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/hardware/SmartStayMonitor;->mSmartStayListener:Landroid/hardware/SmartStayMonitor$SmartStayListener;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Landroid/hardware/SmartStayMonitor;->mSmartStayListener:Landroid/hardware/SmartStayMonitor$SmartStayListener;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/hardware/SmartStayMonitor$SmartStayListener;->onSmartStayEvent(I)V

    .line 236
    :cond_1
    monitor-exit v1

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSmartStayMonitorListener(Landroid/hardware/SmartStayMonitor$SmartStayListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/SmartStayMonitor$SmartStayListener;

    .prologue
    .line 177
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    iput-object p1, p0, Landroid/hardware/SmartStayMonitor;->mSmartStayListener:Landroid/hardware/SmartStayMonitor$SmartStayListener;

    .line 179
    monitor-exit v1

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()Z
    .locals 2

    .prologue
    .line 183
    const/4 v0, 0x1

    .line 185
    .local v0, "ret":Z
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor;->mStartupCameraThread:Landroid/hardware/SmartStayMonitor$StartupCameraThread;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor;->mStartupCameraThread:Landroid/hardware/SmartStayMonitor$StartupCameraThread;

    invoke-virtual {v1}, Landroid/hardware/SmartStayMonitor$StartupCameraThread;->start()V

    .line 189
    :cond_0
    return v0
.end method

.method public declared-synchronized stop()V
    .locals 4

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor;->mStartupCameraThread:Landroid/hardware/SmartStayMonitor$StartupCameraThread;

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor;->mStartupCameraThread:Landroid/hardware/SmartStayMonitor$StartupCameraThread;

    invoke-virtual {v1}, Landroid/hardware/SmartStayMonitor$StartupCameraThread;->join()V

    .line 196
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/SmartStayMonitor;->mStartupCameraThread:Landroid/hardware/SmartStayMonitor$StartupCameraThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor;->mOrientationListener:Landroid/hardware/SmartStayMonitor$MyOrientationListener;

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor;->mOrientationListener:Landroid/hardware/SmartStayMonitor$MyOrientationListener;

    invoke-virtual {v1}, Landroid/hardware/SmartStayMonitor$MyOrientationListener;->disable()V

    .line 206
    :cond_1
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor;->mHandler:Landroid/hardware/SmartStayMonitor$MainHandler;

    if-eqz v1, :cond_2

    .line 207
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor;->mHandler:Landroid/hardware/SmartStayMonitor$MainHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/SmartStayMonitor$MainHandler;->removeMessages(I)V

    .line 210
    :cond_2
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_3

    .line 211
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 212
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 214
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 215
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 218
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setSmartStayMonitor(Z)V

    .line 219
    const-string v1, "SmartStayMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "running:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/SmartStayMonitor;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->isSmartStayMonitorRunning()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/SmartStayMonitor;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 222
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/SmartStayMonitor;->mCamera:Landroid/hardware/Camera;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :cond_3
    monitor-exit p0

    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "SmartStayMonitor"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 194
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
