.class final Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;
.super Landroid/os/Handler;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection$VideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Connection$VideoProvider;


# direct methods
.method private constructor <init>(Landroid/telecom/Connection$VideoProvider;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/Connection$VideoProvider;Landroid/telecom/Connection$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/telecom/Connection$VideoProvider;
    .param p2, "x1"    # Landroid/telecom/Connection$1;

    .prologue
    .line 489
    invoke-direct {p0, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;-><init>(Landroid/telecom/Connection$VideoProvider;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 492
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 577
    :goto_0
    return-void

    .line 494
    :sswitch_0
    iget-object v2, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v1}, Lcom/android/internal/telecom/IVideoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    # setter for: Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;
    invoke-static {v2, v1}, Landroid/telecom/Connection$VideoProvider;->access$102(Landroid/telecom/Connection$VideoProvider;Lcom/android/internal/telecom/IVideoCallback;)Lcom/android/internal/telecom/IVideoCallback;

    goto :goto_0

    .line 497
    :sswitch_1
    iget-object v2, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/telecom/Connection$VideoProvider;->onSetCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :sswitch_2
    iget-object v2, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v2, v1}, Landroid/telecom/Connection$VideoProvider;->onSetPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 503
    :sswitch_3
    iget-object v2, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v2, v1}, Landroid/telecom/Connection$VideoProvider;->onSetDisplaySurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 506
    :sswitch_4
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/telecom/Connection$VideoProvider;->onSetDeviceOrientation(I)V

    goto :goto_0

    .line 509
    :sswitch_5
    iget-object v2, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/telecom/Connection$VideoProvider;->onSetZoom(F)V

    goto :goto_0

    .line 512
    :sswitch_6
    iget-object v2, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    invoke-virtual {v2, v1}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 515
    :sswitch_7
    iget-object v2, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    invoke-virtual {v2, v1}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 518
    :sswitch_8
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-virtual {v1}, Landroid/telecom/Connection$VideoProvider;->onRequestCameraCapabilities()V

    goto :goto_0

    .line 521
    :sswitch_9
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-virtual {v1}, Landroid/telecom/Connection$VideoProvider;->onRequestConnectionDataUsage()V

    goto :goto_0

    .line 524
    :sswitch_a
    iget-object v2, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/telecom/Connection$VideoProvider;->onSetPauseImage(Ljava/lang/String;)V

    goto :goto_0

    .line 528
    :sswitch_b
    iget-object v2, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/telecom/Connection$VideoProvider;->onSetUIMode(I)V

    goto :goto_0

    .line 531
    :sswitch_c
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-virtual {v1}, Landroid/telecom/Connection$VideoProvider;->onSetVTOpen()V

    goto :goto_0

    .line 535
    :sswitch_d
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-virtual {v1}, Landroid/telecom/Connection$VideoProvider;->onSetVTReady()V

    goto/16 :goto_0

    .line 538
    :sswitch_e
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-virtual {v1}, Landroid/telecom/Connection$VideoProvider;->onSetVTConnected()V

    goto/16 :goto_0

    .line 541
    :sswitch_f
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-virtual {v1}, Landroid/telecom/Connection$VideoProvider;->onSetVTClose()V

    goto/16 :goto_0

    .line 544
    :sswitch_10
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-virtual {v1}, Landroid/telecom/Connection$VideoProvider;->onOnDisconnected()V

    goto/16 :goto_0

    .line 547
    :sswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 548
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/view/Surface;

    invoke-virtual {v3, v1, v2}, Landroid/telecom/Connection$VideoProvider;->onSetDisplay(Landroid/view/Surface;Landroid/view/Surface;)V

    goto/16 :goto_0

    .line 552
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_12
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-virtual {v1}, Landroid/telecom/Connection$VideoProvider;->onSwitchDisplaySurface()V

    goto/16 :goto_0

    .line 555
    :sswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 556
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/telecom/Connection$VideoProvider;->onSetLocalView(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 560
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 561
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/telecom/Connection$VideoProvider;->onSetPeerView(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 565
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_15
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-virtual {v1}, Landroid/telecom/Connection$VideoProvider;->onSwitchCamera()V

    goto/16 :goto_0

    .line 568
    :sswitch_16
    iget-object v2, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/telecom/Connection$VideoProvider;->onSetVTVisible(Z)V

    goto/16 :goto_0

    .line 571
    :sswitch_17
    iget-object v2, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/telecom/Connection$VideoProvider;->onOnUserInput(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 492
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0x64 -> :sswitch_b
        0x65 -> :sswitch_c
        0x66 -> :sswitch_d
        0x67 -> :sswitch_e
        0x68 -> :sswitch_f
        0x69 -> :sswitch_10
        0x6a -> :sswitch_11
        0x6b -> :sswitch_12
        0x6c -> :sswitch_13
        0x6d -> :sswitch_14
        0x6e -> :sswitch_15
        0x6f -> :sswitch_16
        0x70 -> :sswitch_17
    .end sparse-switch
.end method
