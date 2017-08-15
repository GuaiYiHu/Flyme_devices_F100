.class Landroid/hardware/Camera$EventHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V
    .locals 0
    .param p2, "c"    # Landroid/hardware/Camera;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1259
    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    .line 1260
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1261
    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    .line 1262
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 30
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1268
    const-string v2, "CameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1663
    const-string v2, "CameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    :cond_0
    :goto_0
    return-void

    .line 1272
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1273
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    goto :goto_0

    .line 1279
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mGestureCallback:Landroid/hardware/Camera$GestureCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1281
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mGestureCallback:Landroid/hardware/Camera$GestureCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/Camera$GestureCallback;->onGestureDetection()V

    goto :goto_0

    .line 1287
    :sswitch_2
    const-string v2, "CameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CAMERA_MSG_SCENE_DETECTION = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mScenceDetectionCallback:Landroid/hardware/Camera$SceneDectetionCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$SceneDectetionCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1289
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mScenceDetectionCallback:Landroid/hardware/Camera$SceneDectetionCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$SceneDectetionCallback;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/hardware/Camera$SceneDectetionCallback;->onSceneDectetion(I)V

    goto :goto_0

    .line 1293
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mGNFaceListener:Landroid/hardware/Camera$GNFaceDetectionListener;
    invoke-static {v2}, Landroid/hardware/Camera;->access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$GNFaceDetectionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1294
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mGNFaceListener:Landroid/hardware/Camera$GNFaceDetectionListener;
    invoke-static {v2}, Landroid/hardware/Camera;->access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$GNFaceDetectionListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Landroid/hardware/Camera$Face;

    check-cast v2, [Landroid/hardware/Camera$Face;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v3, v2, v4}, Landroid/hardware/Camera$GNFaceDetectionListener;->onGNFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1299
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$400(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1300
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$400(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v3, v2, v4}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1305
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$500(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1306
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$500(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v3, v2, v4}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1311
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$600(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v21

    .line 1312
    .local v21, "pCb":Landroid/hardware/Camera$PreviewCallback;
    if-eqz v21, :cond_0

    .line 1313
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mOneShot:Z
    invoke-static {v2}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1317
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    const/4 v3, 0x0

    # setter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v2, v3}, Landroid/hardware/Camera;->access$602(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    .line 1324
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v3}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1318
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mWithBuffer:Z
    invoke-static {v2}, Landroid/hardware/Camera;->access$800(Landroid/hardware/Camera;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1322
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    const/4 v3, 0x1

    const/4 v4, 0x0

    # invokes: Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V
    invoke-static {v2, v3, v4}, Landroid/hardware/Camera;->access$900(Landroid/hardware/Camera;ZZ)V

    goto :goto_1

    .line 1329
    .end local v21    # "pCb":Landroid/hardware/Camera$PreviewCallback;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1330
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v3, v2, v4}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1335
    :sswitch_8
    const/4 v12, 0x0

    .line 1336
    .local v12, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1337
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v12

    .line 1338
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1339
    if-eqz v12, :cond_0

    .line 1340
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_3

    const/16 v24, 0x0

    .line 1341
    .local v24, "success":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move/from16 v0, v24

    invoke-interface {v12, v0, v2}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1338
    .end local v24    # "success":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1340
    :cond_3
    const/16 v24, 0x1

    goto :goto_2

    .line 1346
    .end local v12    # "cb":Landroid/hardware/Camera$AutoFocusCallback;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static {v2}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1347
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static {v2}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v3, v4, v2, v5}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 1352
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static {v2}, Landroid/hardware/Camera;->access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1353
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static {v2}, Landroid/hardware/Camera;->access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Landroid/hardware/Camera$Face;

    check-cast v2, [Landroid/hardware/Camera$Face;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v3, v2, v4}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1358
    :sswitch_b
    const-string v2, "CameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1360
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v2, v3, v4}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1365
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1366
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v3

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_5

    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v3, v2, v4}, Landroid/hardware/Camera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_4

    .line 1371
    :sswitch_d
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    sparse-switch v2, :sswitch_data_1

    .line 1475
    :cond_6
    :goto_5
    const-string v2, "CameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown MTK-extended notify message type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1374
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mSmileCallback:Landroid/hardware/Camera$SmileCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$SmileCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1375
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mSmileCallback:Landroid/hardware/Camera$SmileCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$SmileCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/Camera$SmileCallback;->onSmile()V

    goto/16 :goto_0

    .line 1389
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAsdCallback:Landroid/hardware/Camera$AsdCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$AsdCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1390
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAsdCallback:Landroid/hardware/Camera$AsdCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$AsdCallback;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3}, Landroid/hardware/Camera$AsdCallback;->onDetected(I)V

    goto/16 :goto_0

    .line 1395
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mMavCallback:Landroid/hardware/Camera$MavCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$MavCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1396
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mMavCallback:Landroid/hardware/Camera$MavCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$MavCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/hardware/Camera$MavCallback;->onFrame([B)V

    goto/16 :goto_0

    .line 1400
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mEnableRaw16:Z
    invoke-static {v2}, Landroid/hardware/Camera;->access$2000(Landroid/hardware/Camera;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1401
    new-instance v23, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct/range {v23 .. v23}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 1402
    .local v23, "result_meta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v14, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v14}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 1403
    .local v14, "characteristic_meta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v14}, Landroid/hardware/Camera;->getMetadata(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1405
    new-instance v22, Landroid/hardware/camera2/CaptureResult;

    const/4 v2, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;I)V

    .line 1406
    .local v22, "result":Landroid/hardware/camera2/CaptureResult;
    new-instance v13, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v13, v14}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1408
    .local v13, "characteristic":Landroid/hardware/camera2/CameraCharacteristics;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mMetadataCallbacks:Landroid/hardware/Camera$MetadataCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$MetadataCallback;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v2, v0, v13}, Landroid/hardware/Camera$MetadataCallback;->onMetadataReceived(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)V

    goto/16 :goto_0

    .line 1414
    .end local v13    # "characteristic":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v14    # "characteristic_meta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v22    # "result":Landroid/hardware/camera2/CaptureResult;
    .end local v23    # "result_meta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mGnCSDoneCallback:Landroid/hardware/Camera$ContinuousShotDone;
    invoke-static {v2}, Landroid/hardware/Camera;->access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$ContinuousShotDone;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1415
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mGnCSDoneCallback:Landroid/hardware/Camera$ContinuousShotDone;
    invoke-static {v2}, Landroid/hardware/Camera;->access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$ContinuousShotDone;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3}, Landroid/hardware/Camera$ContinuousShotDone;->onConinuousShotDone(I)V

    .line 1419
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$2300(Landroid/hardware/Camera;)Landroid/hardware/Camera$ContinuousShotCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1420
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$2300(Landroid/hardware/Camera;)Landroid/hardware/Camera$ContinuousShotCallback;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3}, Landroid/hardware/Camera$ContinuousShotCallback;->onConinuousShotDone(I)V

    goto/16 :goto_0

    .line 1424
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;
    invoke-static {v2}, Landroid/hardware/Camera;->access$2400(Landroid/hardware/Camera;)Landroid/hardware/Camera$ZSDPreviewDone;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1425
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;
    invoke-static {v2}, Landroid/hardware/Camera;->access$2400(Landroid/hardware/Camera;)Landroid/hardware/Camera$ZSDPreviewDone;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/Camera$ZSDPreviewDone;->onPreviewDone()V

    goto/16 :goto_0

    .line 1429
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mStereoCameraWarningCallback:Landroid/hardware/Camera$StereoCameraWarningCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$2500(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraWarningCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1430
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    .line 1436
    .local v20, "message":I
    const/4 v2, 0x3

    new-array v0, v2, [I

    move-object/from16 v25, v0

    .line 1437
    .local v25, "type":[I
    const/16 v26, -0x1

    .line 1438
    .local v26, "warnType":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_6
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ge v0, v2, :cond_8

    .line 1439
    and-int/lit8 v2, v20, 0x1

    aput v2, v25, v16

    .line 1440
    shr-int/lit8 v20, v20, 0x1

    .line 1438
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 1443
    :cond_8
    const/4 v2, 0x0

    aget v2, v25, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 1444
    const/16 v26, 0x0

    .line 1452
    :goto_7
    const/4 v2, -0x1

    move/from16 v0, v26

    if-eq v0, v2, :cond_0

    .line 1453
    const-string v2, "CameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stereo Camera warning message type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mStereoCameraWarningCallback:Landroid/hardware/Camera$StereoCameraWarningCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$2500(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraWarningCallback;

    move-result-object v2

    move/from16 v0, v26

    invoke-interface {v2, v0}, Landroid/hardware/Camera$StereoCameraWarningCallback;->onWarning(I)V

    goto/16 :goto_0

    .line 1445
    :cond_9
    const/4 v2, 0x2

    aget v2, v25, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 1446
    const/16 v26, 0x2

    goto :goto_7

    .line 1447
    :cond_a
    const/4 v2, 0x1

    aget v2, v25, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 1448
    const/16 v26, 0x1

    goto :goto_7

    .line 1450
    :cond_b
    const/16 v26, 0x3

    goto :goto_7

    .line 1460
    .end local v16    # "i":I
    .end local v20    # "message":I
    .end local v25    # "type":[I
    .end local v26    # "warnType":I
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mDistanceInfoCallback:Landroid/hardware/Camera$DistanceInfoCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$2600(Landroid/hardware/Camera;)Landroid/hardware/Camera$DistanceInfoCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1461
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    .line 1462
    .local v17, "info":Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 1463
    const-string v2, "CameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Distance info: Info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mDistanceInfoCallback:Landroid/hardware/Camera$DistanceInfoCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$2600(Landroid/hardware/Camera;)Landroid/hardware/Camera$DistanceInfoCallback;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/hardware/Camera$DistanceInfoCallback;->onInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1470
    .end local v17    # "info":Ljava/lang/String;
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$2700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewRawDumpCallback;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1472
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$2700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewRawDumpCallback;

    move-result-object v2

    const/16 v3, 0x12

    invoke-interface {v2, v3}, Landroid/hardware/Camera$PreviewRawDumpCallback;->onNotify(I)V

    goto/16 :goto_5

    .line 1481
    :sswitch_17
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    sparse-switch v2, :sswitch_data_2

    .line 1657
    const-string v2, "CameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown MTK-extended data message type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1485
    :sswitch_18
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v10, v2

    check-cast v10, [B

    .line 1486
    .local v10, "byteArray":[B
    const/16 v2, 0x10

    new-array v11, v2, [B

    .line 1487
    .local v11, "byteHead":[B
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v10, v2, v11, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1488
    const-string v2, "CameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MTK_CAMERA_MSG_EXT_DATA_AUTORAMA: byteArray.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v18

    .line 1491
    .local v18, "intBuf":Ljava/nio/IntBuffer;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    if-nez v2, :cond_c

    .line 1492
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoRamaMoveCallback:Landroid/hardware/Camera$AutoRamaMoveCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$2800(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaMoveCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1493
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v27

    .line 1494
    .local v27, "x":I
    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v29

    .line 1495
    .local v29, "y":I
    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v15

    .line 1496
    .local v15, "dir":I
    const v2, 0xffff

    and-int v2, v2, v27

    shl-int/lit8 v2, v2, 0x10

    const v3, 0xffff

    and-int v3, v3, v29

    add-int v28, v2, v3

    .line 1497
    .local v28, "xy":I
    const-string v2, "CameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call mAutoRamaMoveCallback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoRamaCallback:Landroid/hardware/Camera$AutoRamaCallback;
    invoke-static {v4}, Landroid/hardware/Camera;->access$2900(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dir:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " xy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoRamaMoveCallback:Landroid/hardware/Camera$AutoRamaMoveCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$2800(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaMoveCallback;

    move-result-object v2

    move/from16 v0, v28

    invoke-interface {v2, v0, v15}, Landroid/hardware/Camera$AutoRamaMoveCallback;->onFrame(II)V

    goto/16 :goto_0

    .line 1501
    .end local v15    # "dir":I
    .end local v27    # "x":I
    .end local v28    # "xy":I
    .end local v29    # "y":I
    :cond_c
    const-string v2, "CameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call mAutoRamaCallback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoRamaCallback:Landroid/hardware/Camera$AutoRamaCallback;
    invoke-static {v4}, Landroid/hardware/Camera;->access$2900(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoRamaCallback:Landroid/hardware/Camera$AutoRamaCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$2900(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1503
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_d

    .line 1504
    const-string v2, "CameraFramework"

    const-string v3, "capturing frame"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoRamaCallback:Landroid/hardware/Camera$AutoRamaCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$2900(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/hardware/Camera$AutoRamaCallback;->onCapture([B)V

    goto/16 :goto_0

    .line 1506
    :cond_d
    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1507
    const-string v2, "CameraFramework"

    const-string v3, "image is merged over"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    array-length v2, v10

    add-int/lit8 v2, v2, -0x4

    new-array v0, v2, [B

    move-object/from16 v19, v0

    .line 1509
    .local v19, "jpegData":[B
    const/4 v2, 0x4

    const/4 v3, 0x0

    array-length v4, v10

    add-int/lit8 v4, v4, -0x4

    move-object/from16 v0, v19

    invoke-static {v10, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1510
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoRamaCallback:Landroid/hardware/Camera$AutoRamaCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$2900(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/hardware/Camera$AutoRamaCallback;->onCapture([B)V

    goto/16 :goto_0

    .line 1520
    .end local v10    # "byteArray":[B
    .end local v11    # "byteHead":[B
    .end local v18    # "intBuf":Ljava/nio/IntBuffer;
    .end local v19    # "jpegData":[B
    :sswitch_19
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v10, v2

    check-cast v10, [B

    .line 1521
    .restart local v10    # "byteArray":[B
    if-nez v10, :cond_e

    .line 1522
    const-string v2, "CameraFramework"

    const-string v3, "MTK_CAMERA_MSG_EXT_DATA_MOTIONTRACK: byteArray is null,please check"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1526
    :cond_e
    const-string v2, "CameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MTK_CAMERA_MSG_EXT_DATA_MOTIONTRACK: byteArray.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mMotionTrackCallback:Landroid/hardware/Camera$MotionTrackCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$3000(Landroid/hardware/Camera;)Landroid/hardware/Camera$MotionTrackCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1528
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mMotionTrackCallback:Landroid/hardware/Camera$MotionTrackCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$3000(Landroid/hardware/Camera;)Landroid/hardware/Camera$MotionTrackCallback;

    move-result-object v2

    invoke-interface {v2, v10}, Landroid/hardware/Camera$MotionTrackCallback;->onDataCallback([B)V

    goto/16 :goto_0

    .line 1535
    .end local v10    # "byteArray":[B
    :sswitch_1a
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v10, v2

    check-cast v10, [B

    .line 1537
    .restart local v10    # "byteArray":[B
    const-string v2, "CameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MTK_CAMERA_MSG_EXT_DATA_AF: byteArray.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$3100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AFDataCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1547
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$3100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AFDataCallback;

    move-result-object v9

    .line 1548
    .local v9, "afDatacb":Landroid/hardware/Camera$AFDataCallback;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v9, v2, v3}, Landroid/hardware/Camera$AFDataCallback;->onAFData([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1554
    .end local v9    # "afDatacb":Landroid/hardware/Camera$AFDataCallback;
    .end local v10    # "byteArray":[B
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v10, v2

    check-cast v10, [B

    .line 1555
    .restart local v10    # "byteArray":[B
    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v18

    .line 1556
    .restart local v18    # "intBuf":Ljava/nio/IntBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mGestureEventCallback:Landroid/hardware/Camera$GestureEventCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$3200(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureEventCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mGestureEvent:Landroid/hardware/Camera$GestureEvent;
    invoke-static {v2}, Landroid/hardware/Camera;->access$3300(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureEvent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1557
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mGestureEvent:Landroid/hardware/Camera$GestureEvent;
    invoke-static {v2}, Landroid/hardware/Camera;->access$3300(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureEvent;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    const/4 v5, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    const/4 v6, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    const/4 v7, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    const/4 v8, 0x5

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/Camera$GestureEvent;->setGestureValue(IIIIII)V

    .line 1563
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mGestureEventCallback:Landroid/hardware/Camera$GestureEventCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$3200(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureEventCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mGestureEvent:Landroid/hardware/Camera$GestureEvent;
    invoke-static {v3}, Landroid/hardware/Camera;->access$3300(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/hardware/Camera$GestureEventCallback;->onGestureEvent(Landroid/hardware/Camera$GestureEvent;)V

    goto/16 :goto_0

    .line 1569
    .end local v10    # "byteArray":[B
    .end local v18    # "intBuf":Ljava/nio/IntBuffer;
    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v10, v2

    check-cast v10, [B

    .line 1571
    .restart local v10    # "byteArray":[B
    const-string v2, "CameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MTK_CAMERA_MSG_EXT_DATA_OT: byteArray.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v18

    .line 1577
    .restart local v18    # "intBuf":Ljava/nio/IntBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mObjectCallbackLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/hardware/Camera;->access$3400(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1578
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mObjectListener:Landroid/hardware/Camera$ObjectTrackingListener;
    invoke-static {v2}, Landroid/hardware/Camera;->access$3500(Landroid/hardware/Camera;)Landroid/hardware/Camera$ObjectTrackingListener;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 1579
    const-string v2, "CameraFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OT callback0:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_10

    .line 1581
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/hardware/Camera;->access$3600(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v2

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 1582
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/hardware/Camera;->access$3600(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v2

    const/4 v4, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 1583
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/hardware/Camera;->access$3600(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v2

    const/4 v4, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 1584
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/hardware/Camera;->access$3600(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v2

    const/4 v4, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 1585
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mObjectFace:Landroid/hardware/Camera$Face;
    invoke-static {v2}, Landroid/hardware/Camera;->access$3700(Landroid/hardware/Camera;)Landroid/hardware/Camera$Face;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;
    invoke-static {v4}, Landroid/hardware/Camera;->access$3600(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, v2, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    .line 1586
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mObjectFace:Landroid/hardware/Camera$Face;
    invoke-static {v2}, Landroid/hardware/Camera;->access$3700(Landroid/hardware/Camera;)Landroid/hardware/Camera$Face;

    move-result-object v2

    const/4 v4, 0x5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    iput v4, v2, Landroid/hardware/Camera$Face;->score:I

    .line 1587
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mObjectListener:Landroid/hardware/Camera$ObjectTrackingListener;
    invoke-static {v2}, Landroid/hardware/Camera;->access$3500(Landroid/hardware/Camera;)Landroid/hardware/Camera$ObjectTrackingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mObjectFace:Landroid/hardware/Camera$Face;
    invoke-static {v4}, Landroid/hardware/Camera;->access$3700(Landroid/hardware/Camera;)Landroid/hardware/Camera$Face;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v2, v4, v5}, Landroid/hardware/Camera$ObjectTrackingListener;->onObjectTracking(Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    .line 1593
    :cond_f
    :goto_8
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 1590
    :cond_10
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mObjectListener:Landroid/hardware/Camera$ObjectTrackingListener;
    invoke-static {v2}, Landroid/hardware/Camera;->access$3500(Landroid/hardware/Camera;)Landroid/hardware/Camera$ObjectTrackingListener;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v2, v4, v5}, Landroid/hardware/Camera$ObjectTrackingListener;->onObjectTracking(Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    .line 1598
    .end local v10    # "byteArray":[B
    .end local v18    # "intBuf":Ljava/nio/IntBuffer;
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mHdrOriginalCallback:Landroid/hardware/Camera$HdrOriginalCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$3800(Landroid/hardware/Camera;)Landroid/hardware/Camera$HdrOriginalCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1599
    const-string v2, "CameraFramework"

    const-string v3, "HDR Original callback"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v10, v2

    check-cast v10, [B

    .line 1601
    .restart local v10    # "byteArray":[B
    array-length v2, v10

    add-int/lit8 v2, v2, -0x4

    new-array v0, v2, [B

    move-object/from16 v19, v0

    .line 1602
    .restart local v19    # "jpegData":[B
    const/4 v2, 0x4

    const/4 v3, 0x0

    array-length v4, v10

    add-int/lit8 v4, v4, -0x4

    move-object/from16 v0, v19

    invoke-static {v10, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1603
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mHdrOriginalCallback:Landroid/hardware/Camera$HdrOriginalCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$3800(Landroid/hardware/Camera;)Landroid/hardware/Camera$HdrOriginalCallback;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/hardware/Camera$HdrOriginalCallback;->onCapture([B)V

    goto/16 :goto_0

    .line 1607
    .end local v10    # "byteArray":[B
    .end local v19    # "jpegData":[B
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mFbOriginalCallback:Landroid/hardware/Camera$FbOriginalCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$3900(Landroid/hardware/Camera;)Landroid/hardware/Camera$FbOriginalCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1608
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v10, v2

    check-cast v10, [B

    .line 1609
    .restart local v10    # "byteArray":[B
    array-length v2, v10

    add-int/lit8 v2, v2, -0x4

    new-array v0, v2, [B

    move-object/from16 v19, v0

    .line 1610
    .restart local v19    # "jpegData":[B
    const/4 v2, 0x4

    const/4 v3, 0x0

    array-length v4, v10

    add-int/lit8 v4, v4, -0x4

    move-object/from16 v0, v19

    invoke-static {v10, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1611
    const-string v3, "CameraFramework"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FB Original callback, VFB enable : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v2, "ro.mtk_cam_vfb"

    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_11

    const/4 v2, 0x1

    :goto_9
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    const-string v2, "ro.mtk_cam_vfb"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$500(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1615
    const-string v2, "CameraFramework"

    const-string v3, "FB Original callback,will call mJpegCallback.onPictureTaken"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$500(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, v19

    invoke-interface {v2, v0, v3}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1611
    :cond_11
    const/4 v2, 0x0

    goto :goto_9

    .line 1619
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mFbOriginalCallback:Landroid/hardware/Camera$FbOriginalCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$3900(Landroid/hardware/Camera;)Landroid/hardware/Camera$FbOriginalCallback;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/hardware/Camera$FbOriginalCallback;->onCapture([B)V

    goto/16 :goto_0

    .line 1624
    .end local v10    # "byteArray":[B
    .end local v19    # "jpegData":[B
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mMavCallback:Landroid/hardware/Camera$MavCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$MavCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1625
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v10, v2

    check-cast v10, [B

    .line 1626
    .restart local v10    # "byteArray":[B
    array-length v2, v10

    add-int/lit8 v2, v2, -0x4

    new-array v0, v2, [B

    move-object/from16 v19, v0

    .line 1627
    .restart local v19    # "jpegData":[B
    const-string v2, "CameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MTK_CAMERA_MSG_EXT_DATA_MAV: byteArray.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    const/4 v2, 0x4

    const/4 v3, 0x0

    array-length v4, v10

    add-int/lit8 v4, v4, -0x4

    move-object/from16 v0, v19

    invoke-static {v10, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1629
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mMavCallback:Landroid/hardware/Camera$MavCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$MavCallback;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/hardware/Camera$MavCallback;->onFrame([B)V

    goto/16 :goto_0

    .line 1633
    .end local v10    # "byteArray":[B
    .end local v19    # "jpegData":[B
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mStereoCameraJpsCallback:Landroid/hardware/Camera$StereoCameraJpsCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$4000(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraJpsCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1634
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v10, v2

    check-cast v10, [B

    .line 1635
    .restart local v10    # "byteArray":[B
    array-length v2, v10

    add-int/lit8 v2, v2, -0x4

    new-array v0, v2, [B

    move-object/from16 v19, v0

    .line 1636
    .restart local v19    # "jpegData":[B
    const-string v2, "CameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MTK_CAMERA_MSG_EXT_DATA_JPS: jpegData.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    const/4 v2, 0x4

    const/4 v3, 0x0

    array-length v4, v10

    add-int/lit8 v4, v4, -0x4

    move-object/from16 v0, v19

    invoke-static {v10, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1638
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mStereoCameraJpsCallback:Landroid/hardware/Camera$StereoCameraJpsCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$4000(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraJpsCallback;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/hardware/Camera$StereoCameraJpsCallback;->onCapture([B)V

    goto/16 :goto_0

    .line 1643
    .end local v10    # "byteArray":[B
    .end local v19    # "jpegData":[B
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mStereoCameraMaskCallback:Landroid/hardware/Camera$StereoCameraMaskCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$4100(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraMaskCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1644
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v10, v2

    check-cast v10, [B

    .line 1645
    .restart local v10    # "byteArray":[B
    array-length v2, v10

    add-int/lit8 v2, v2, -0x4

    new-array v0, v2, [B

    move-object/from16 v19, v0

    .line 1646
    .restart local v19    # "jpegData":[B
    const-string v2, "CameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MTK_CAMERA_MSG_EXT_DATA_STEREO_DBG: jpegData.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    const/4 v2, 0x4

    const/4 v3, 0x0

    array-length v4, v10

    add-int/lit8 v4, v4, -0x4

    move-object/from16 v0, v19

    invoke-static {v10, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1648
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mStereoCameraMaskCallback:Landroid/hardware/Camera$StereoCameraMaskCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$4100(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraMaskCallback;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/hardware/Camera$StereoCameraMaskCallback;->onCapture([B)V

    goto/16 :goto_0

    .line 1652
    .end local v10    # "byteArray":[B
    .end local v19    # "jpegData":[B
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mEnableRaw16:Z
    invoke-static {v2}, Landroid/hardware/Camera;->access$2000(Landroid/hardware/Camera;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1653
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mRaw16Callbacks:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v2}, Landroid/hardware/Camera;->access$4200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v3, v2, v4}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1270
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_17
        0x1 -> :sswitch_b
        0x2 -> :sswitch_0
        0x4 -> :sswitch_8
        0x8 -> :sswitch_9
        0x10 -> :sswitch_6
        0x40 -> :sswitch_7
        0x80 -> :sswitch_4
        0x100 -> :sswitch_5
        0x400 -> :sswitch_a
        0x800 -> :sswitch_c
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_2
        0x4000 -> :sswitch_3
        0x40000000 -> :sswitch_d
    .end sparse-switch

    .line 1371
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_e
        0x2 -> :sswitch_f
        0x3 -> :sswitch_10
        0x6 -> :sswitch_12
        0x7 -> :sswitch_13
        0x12 -> :sswitch_16
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_11
    .end sparse-switch

    .line 1481
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_18
        0x2 -> :sswitch_1a
        0x5 -> :sswitch_1c
        0x6 -> :sswitch_1e
        0x7 -> :sswitch_1f
        0x8 -> :sswitch_1d
        0x9 -> :sswitch_19
        0x11 -> :sswitch_20
        0x12 -> :sswitch_21
        0x13 -> :sswitch_22
        0x20 -> :sswitch_1b
    .end sparse-switch
.end method
