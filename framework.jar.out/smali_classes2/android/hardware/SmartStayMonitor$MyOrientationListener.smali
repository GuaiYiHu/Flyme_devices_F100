.class Landroid/hardware/SmartStayMonitor$MyOrientationListener;
.super Landroid/view/OrientationEventListener;
.source "SmartStayMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SmartStayMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SmartStayMonitor;


# direct methods
.method public constructor <init>(Landroid/hardware/SmartStayMonitor;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    iput-object p1, p0, Landroid/hardware/SmartStayMonitor$MyOrientationListener;->this$0:Landroid/hardware/SmartStayMonitor;

    .line 120
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 121
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "orientationCompensation":I
    const/4 v1, 0x0

    .line 128
    .local v1, "rotation":I
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v2, p0, Landroid/hardware/SmartStayMonitor$MyOrientationListener;->this$0:Landroid/hardware/SmartStayMonitor;

    iget-object v3, p0, Landroid/hardware/SmartStayMonitor$MyOrientationListener;->this$0:Landroid/hardware/SmartStayMonitor;

    iget-object v4, p0, Landroid/hardware/SmartStayMonitor$MyOrientationListener;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mOrientation:I
    invoke-static {v4}, Landroid/hardware/SmartStayMonitor;->access$500(Landroid/hardware/SmartStayMonitor;)I

    move-result v4

    # invokes: Landroid/hardware/SmartStayMonitor;->roundOrientation(II)I
    invoke-static {v3, p1, v4}, Landroid/hardware/SmartStayMonitor;->access$600(Landroid/hardware/SmartStayMonitor;II)I

    move-result v3

    # setter for: Landroid/hardware/SmartStayMonitor;->mOrientation:I
    invoke-static {v2, v3}, Landroid/hardware/SmartStayMonitor;->access$502(Landroid/hardware/SmartStayMonitor;I)I

    .line 133
    iget-object v2, p0, Landroid/hardware/SmartStayMonitor$MyOrientationListener;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mOrientation:I
    invoke-static {v2}, Landroid/hardware/SmartStayMonitor;->access$500(Landroid/hardware/SmartStayMonitor;)I

    move-result v2

    rem-int/lit16 v0, v2, 0x168

    .line 135
    iget-object v2, p0, Landroid/hardware/SmartStayMonitor$MyOrientationListener;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mOrientationCompensation:I
    invoke-static {v2}, Landroid/hardware/SmartStayMonitor;->access$700(Landroid/hardware/SmartStayMonitor;)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 136
    iget-object v2, p0, Landroid/hardware/SmartStayMonitor$MyOrientationListener;->this$0:Landroid/hardware/SmartStayMonitor;

    # setter for: Landroid/hardware/SmartStayMonitor;->mOrientationCompensation:I
    invoke-static {v2, v0}, Landroid/hardware/SmartStayMonitor;->access$702(Landroid/hardware/SmartStayMonitor;I)I

    .line 138
    iget-object v2, p0, Landroid/hardware/SmartStayMonitor$MyOrientationListener;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Landroid/hardware/SmartStayMonitor;->access$000(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/SmartStayMonitor$MyOrientationListener;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Landroid/hardware/SmartStayMonitor;->access$200(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Landroid/hardware/SmartStayMonitor$MyOrientationListener;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;
    invoke-static {v2}, Landroid/hardware/SmartStayMonitor;->access$100(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, v0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 140
    iget-object v2, p0, Landroid/hardware/SmartStayMonitor$MyOrientationListener;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Landroid/hardware/SmartStayMonitor;->access$200(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 141
    iget-object v2, p0, Landroid/hardware/SmartStayMonitor$MyOrientationListener;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Landroid/hardware/SmartStayMonitor;->access$000(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/SmartStayMonitor$MyOrientationListener;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Landroid/hardware/SmartStayMonitor;->access$200(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method
