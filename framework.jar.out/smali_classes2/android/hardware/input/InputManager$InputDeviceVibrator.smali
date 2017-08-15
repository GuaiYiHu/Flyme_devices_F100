.class final Landroid/hardware/input/InputManager$InputDeviceVibrator;
.super Landroid/os/Vibrator;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDeviceVibrator"
.end annotation


# instance fields
.field private final mDeviceId:I

.field private final mToken:Landroid/os/Binder;

.field final synthetic this$0:Landroid/hardware/input/InputManager;


# direct methods
.method public constructor <init>(Landroid/hardware/input/InputManager;I)V
    .locals 1
    .param p2, "deviceId"    # I

    .prologue
    .line 878
    iput-object p1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 879
    iput p2, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    .line 880
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    .line 881
    return-void
.end method


# virtual methods
.method public amigoVibrate(Landroid/os/Bundle;ILjava/lang/String;JLandroid/media/AudioAttributes;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "uid"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "milliseconds"    # J
    .param p6, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 962
    return-void
.end method

.method public amigoVibrate(Landroid/os/Bundle;ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "uid"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "pattern"    # [J
    .param p5, "repeat"    # I
    .param p6, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 970
    return-void
.end method

.method public amigoVibrate(Ljava/lang/String;ILjava/lang/String;JLandroid/media/AudioAttributes;)V
    .locals 0
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "milliseconds"    # J
    .param p6, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 944
    return-void
.end method

.method public amigoVibrate(Ljava/lang/String;ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
    .locals 0
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "pattern"    # [J
    .param p5, "repeat"    # I
    .param p6, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 952
    return-void
.end method

.method public cancel()V
    .locals 4

    .prologue
    .line 915
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    # getter for: Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;
    invoke-static {v1}, Landroid/hardware/input/InputManager;->access$200(Landroid/hardware/input/InputManager;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    iget v2, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    iget-object v3, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2, v3}, Landroid/hardware/input/IInputManager;->cancelVibrate(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :goto_0
    return-void

    .line 916
    :catch_0
    move-exception v0

    .line 917
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Failed to cancel vibration."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public cancelAmigoVibrate(Ljava/lang/String;)V
    .locals 0
    .param p1, "effectName"    # Ljava/lang/String;

    .prologue
    .line 937
    return-void
.end method

.method public hasVibrator()Z
    .locals 1

    .prologue
    .line 885
    const/4 v0, 0x1

    return v0
.end method

.method public isAmigoVibrator(Ljava/lang/String;)Z
    .locals 1
    .param p1, "effectName"    # Ljava/lang/String;

    .prologue
    .line 931
    const/4 v0, 0x1

    return v0
.end method

.method public vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 893
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/input/InputManager$InputDeviceVibrator;->vibrate([JI)V

    .line 894
    return-void
.end method

.method public vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 902
    array-length v1, p3

    if-lt p4, v1, :cond_0

    .line 903
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 906
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    # getter for: Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;
    invoke-static {v1}, Landroid/hardware/input/InputManager;->access$200(Landroid/hardware/input/InputManager;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    iget v2, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    iget-object v3, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2, p3, p4, v3}, Landroid/hardware/input/IInputManager;->vibrate(I[JILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    :goto_0
    return-void

    .line 907
    :catch_0
    move-exception v0

    .line 908
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Failed to vibrate."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public vibrateEx([B)V
    .locals 0
    .param p1, "params"    # [B

    .prologue
    .line 924
    return-void
.end method
