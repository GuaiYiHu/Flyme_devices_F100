.class public abstract Landroid/telecom/Connection$VideoProvider;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VideoProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;,
        Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;
    }
.end annotation


# static fields
.field private static final MSG_MTK_BASE:I = 0x64

.field private static final MSG_ON_DISCONNECTED:I = 0x69

.field private static final MSG_ON_USER_INPUT:I = 0x70

.field private static final MSG_REQUEST_CAMERA_CAPABILITIES:I = 0x9

.field private static final MSG_REQUEST_CONNECTION_DATA_USAGE:I = 0xa

.field private static final MSG_SEND_SESSION_MODIFY_REQUEST:I = 0x7

.field private static final MSG_SEND_SESSION_MODIFY_RESPONSE:I = 0x8

.field private static final MSG_SET_CAMERA:I = 0x2

.field private static final MSG_SET_DEVICE_ORIENTATION:I = 0x5

.field private static final MSG_SET_DISPLAY:I = 0x6a

.field private static final MSG_SET_DISPLAY_SURFACE:I = 0x4

.field private static final MSG_SET_LOCAL_VIEW:I = 0x6c

.field private static final MSG_SET_PAUSE_IMAGE:I = 0xb

.field private static final MSG_SET_PEER_VIEW:I = 0x6d

.field private static final MSG_SET_PREVIEW_SURFACE:I = 0x3

.field private static final MSG_SET_UI_MODE:I = 0x64

.field private static final MSG_SET_VIDEO_CALLBACK:I = 0x1

.field private static final MSG_SET_VT_CLOSE:I = 0x68

.field private static final MSG_SET_VT_CONNECTED:I = 0x67

.field private static final MSG_SET_VT_OPEN:I = 0x65

.field private static final MSG_SET_VT_READY:I = 0x66

.field private static final MSG_SET_VT_VISIBLE:I = 0x6f

.field private static final MSG_SET_ZOOM:I = 0x6

.field private static final MSG_SWITCH_CAMERA:I = 0x6e

.field private static final MSG_SWITCH_DISPLAY_SURFACE:I = 0x6b

.field public static final SESSION_EVENT_CAMERA_FAILURE:I = 0x5

.field public static final SESSION_EVENT_CAMERA_READY:I = 0x6

.field public static final SESSION_EVENT_RX_PAUSE:I = 0x1

.field public static final SESSION_EVENT_RX_RESUME:I = 0x2

.field public static final SESSION_EVENT_TX_START:I = 0x3

.field public static final SESSION_EVENT_TX_STOP:I = 0x4

.field public static final SESSION_MODIFY_REQUEST_FAIL:I = 0x2

.field public static final SESSION_MODIFY_REQUEST_INVALID:I = 0x3

.field public static final SESSION_MODIFY_REQUEST_SUCCESS:I = 0x1


# instance fields
.field private final mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

.field private final mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

.field private mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    invoke-direct {v0, p0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/telecom/Connection$1;)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    .line 696
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    invoke-direct {v0, p0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/telecom/Connection$1;)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    .line 697
    return-void
.end method

.method static synthetic access$102(Landroid/telecom/Connection$VideoProvider;Lcom/android/internal/telecom/IVideoCallback;)Lcom/android/internal/telecom/IVideoCallback;
    .locals 0
    .param p0, "x0"    # Landroid/telecom/Connection$VideoProvider;
    .param p1, "x1"    # Lcom/android/internal/telecom/IVideoCallback;

    .prologue
    .line 401
    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    return-object p1
.end method

.method static synthetic access$200(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 401
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    return-object v0
.end method


# virtual methods
.method public changeCallDataUsage(I)V
    .locals 1
    .param p1, "dataUsage"    # I

    .prologue
    .line 948
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    if-eqz v0, :cond_0

    .line 950
    :try_start_0
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->changeCallDataUsage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    :cond_0
    :goto_0
    return-void

    .line 951
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public changeCameraCapabilities(Landroid/telecom/CameraCapabilities;)V
    .locals 1
    .param p1, "cameraCapabilities"    # Landroid/telecom/CameraCapabilities;

    .prologue
    .line 962
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    if-eqz v0, :cond_0

    .line 964
    :try_start_0
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->changeCameraCapabilities(Landroid/telecom/CameraCapabilities;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 965
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public changePeerDimensions(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 934
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    if-eqz v0, :cond_0

    .line 936
    :try_start_0
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IVideoCallback;->changePeerDimensions(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 937
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final getInterface()Lcom/android/internal/telecom/IVideoProvider;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    return-object v0
.end method

.method public handleCallSessionEvent(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 919
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    if-eqz v0, :cond_0

    .line 921
    :try_start_0
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->handleCallSessionEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 922
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOnDisconnected()V
    .locals 0

    .prologue
    .line 822
    return-void
.end method

.method public onOnUserInput(Ljava/lang/String;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 870
    return-void
.end method

.method public abstract onRequestCameraCapabilities()V
.end method

.method public abstract onRequestConnectionDataUsage()V
.end method

.method public abstract onSendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract onSetCamera(Ljava/lang/String;)V
.end method

.method public abstract onSetDeviceOrientation(I)V
.end method

.method public onSetDisplay(Landroid/view/Surface;Landroid/view/Surface;)V
    .locals 0
    .param p1, "local"    # Landroid/view/Surface;
    .param p2, "peer"    # Landroid/view/Surface;

    .prologue
    .line 830
    return-void
.end method

.method public abstract onSetDisplaySurface(Landroid/view/Surface;)V
.end method

.method public onSetLocalView(ILjava/lang/String;)V
    .locals 0
    .param p1, "videoType"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 843
    return-void
.end method

.method public abstract onSetPauseImage(Ljava/lang/String;)V
.end method

.method public onSetPeerView(ILjava/lang/String;)V
    .locals 0
    .param p1, "bEnableReplacePeerVideo"    # I
    .param p2, "sReplacePeerVideoPicturePath"    # Ljava/lang/String;

    .prologue
    .line 851
    return-void
.end method

.method public abstract onSetPreviewSurface(Landroid/view/Surface;)V
.end method

.method public onSetUIMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 794
    return-void
.end method

.method public onSetVTClose()V
    .locals 0

    .prologue
    .line 817
    return-void
.end method

.method public onSetVTConnected()V
    .locals 0

    .prologue
    .line 812
    return-void
.end method

.method public onSetVTOpen()V
    .locals 0

    .prologue
    .line 802
    return-void
.end method

.method public onSetVTReady()V
    .locals 0

    .prologue
    .line 807
    return-void
.end method

.method public onSetVTVisible(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 863
    return-void
.end method

.method public abstract onSetZoom(F)V
.end method

.method public onSwitchCamera()V
    .locals 0

    .prologue
    .line 856
    return-void
.end method

.method public onSwitchDisplaySurface()V
    .locals 0

    .prologue
    .line 835
    return-void
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 1
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 879
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    if-eqz v0, :cond_0

    .line 881
    :try_start_0
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 882
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 899
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    if-eqz v0, :cond_0

    .line 901
    :try_start_0
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 903
    :catch_0
    move-exception v0

    goto :goto_0
.end method
