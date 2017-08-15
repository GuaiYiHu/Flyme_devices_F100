.class Landroid/hardware/SmartStayMonitor$StartupCameraThread;
.super Ljava/lang/Thread;
.source "SmartStayMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SmartStayMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartupCameraThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SmartStayMonitor;


# direct methods
.method private constructor <init>(Landroid/hardware/SmartStayMonitor;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Landroid/hardware/SmartStayMonitor$StartupCameraThread;->this$0:Landroid/hardware/SmartStayMonitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/SmartStayMonitor;Landroid/hardware/SmartStayMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/hardware/SmartStayMonitor;
    .param p2, "x1"    # Landroid/hardware/SmartStayMonitor$1;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/hardware/SmartStayMonitor$StartupCameraThread;-><init>(Landroid/hardware/SmartStayMonitor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 61
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor$StartupCameraThread;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Landroid/hardware/SmartStayMonitor;->access$000(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/Camera;

    move-result-object v1

    if-nez v1, :cond_0

    .line 66
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->isCameraRunning()Z

    move-result v1

    if-nez v1, :cond_4

    .line 69
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor$StartupCameraThread;->this$0:Landroid/hardware/SmartStayMonitor;

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    # setter for: Landroid/hardware/SmartStayMonitor;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1, v2}, Landroid/hardware/SmartStayMonitor;->access$002(Landroid/hardware/SmartStayMonitor;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 70
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor$StartupCameraThread;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Landroid/hardware/SmartStayMonitor;->access$000(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/Camera;

    move-result-object v1

    if-nez v1, :cond_1

    .line 71
    const-string v1, "SmartStayMonitor"

    const-string v2, "Failed to open front camera."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor$StartupCameraThread;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mHandler:Landroid/hardware/SmartStayMonitor$MainHandler;
    invoke-static {v1}, Landroid/hardware/SmartStayMonitor;->access$400(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/SmartStayMonitor$MainHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor$StartupCameraThread;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mHandler:Landroid/hardware/SmartStayMonitor$MainHandler;
    invoke-static {v1}, Landroid/hardware/SmartStayMonitor;->access$400(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/SmartStayMonitor$MainHandler;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/hardware/SmartStayMonitor$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 115
    :cond_0
    return-void

    .line 73
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor$StartupCameraThread;->this$0:Landroid/hardware/SmartStayMonitor;

    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    # setter for: Landroid/hardware/SmartStayMonitor;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;
    invoke-static {v1, v2}, Landroid/hardware/SmartStayMonitor;->access$102(Landroid/hardware/SmartStayMonitor;Landroid/hardware/Camera$CameraInfo;)Landroid/hardware/Camera$CameraInfo;

    .line 74
    const/4 v1, 0x1

    iget-object v2, p0, Landroid/hardware/SmartStayMonitor$StartupCameraThread;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;
    invoke-static {v2}, Landroid/hardware/SmartStayMonitor;->access$100(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 77
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor$StartupCameraThread;->this$0:Landroid/hardware/SmartStayMonitor;

    iget-object v2, p0, Landroid/hardware/SmartStayMonitor$StartupCameraThread;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Landroid/hardware/SmartStayMonitor;->access$000(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    # setter for: Landroid/hardware/SmartStayMonitor;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1, v2}, Landroid/hardware/SmartStayMonitor;->access$202(Landroid/hardware/SmartStayMonitor;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 78
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor$StartupCameraThread;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Landroid/hardware/SmartStayMonitor;->access$200(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "mtk-cam-mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 79
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor$StartupCameraThread;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Landroid/hardware/SmartStayMonitor;->access$000(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/SmartStayMonitor$StartupCameraThread;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Landroid/hardware/SmartStayMonitor;->access$200(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 82
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor$StartupCameraThread;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Landroid/hardware/SmartStayMonitor;->access$000(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 85
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor$StartupCameraThread;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Landroid/hardware/SmartStayMonitor;->access$000(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 86
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor$StartupCameraThread;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Landroid/hardware/SmartStayMonitor;->access$000(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/SmartStayMonitor$StartupCameraThread;->this$0:Landroid/hardware/SmartStayMonitor;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 87
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor$StartupCameraThread;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Landroid/hardware/SmartStayMonitor;->access$000(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 91
    :cond_2
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor$StartupCameraThread;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mOrientationListener:Landroid/hardware/SmartStayMonitor$MyOrientationListener;
    invoke-static {v1}, Landroid/hardware/SmartStayMonitor;->access$300(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/SmartStayMonitor$MyOrientationListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 92
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor$StartupCameraThread;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mOrientationListener:Landroid/hardware/SmartStayMonitor$MyOrientationListener;
    invoke-static {v1}, Landroid/hardware/SmartStayMonitor;->access$300(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/SmartStayMonitor$MyOrientationListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/SmartStayMonitor$MyOrientationListener;->enable()V

    .line 95
    :cond_3
    iget-object v1, p0, Landroid/hardware/SmartStayMonitor$StartupCameraThread;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Landroid/hardware/SmartStayMonitor;->access$000(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/Camera;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setSmartStayMonitor(Z)V

    .line 96
    const-string v1, "SmartStayMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "running:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/SmartStayMonitor$StartupCameraThread;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mCamera:Landroid/hardware/Camera;
    invoke-static {v3}, Landroid/hardware/SmartStayMonitor;->access$000(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->isSmartStayMonitorRunning()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartStayMonitor"

    const-string v2, "Failed to open camera. Please check the camera device."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_2
    const-string v1, "SmartStayMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "camera is used by another ap cameraRunning="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/hardware/Camera;->isCameraRunning()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
