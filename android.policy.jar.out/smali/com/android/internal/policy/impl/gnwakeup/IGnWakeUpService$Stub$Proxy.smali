.class Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGnWakeUpService.java"

# interfaces
.implements Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 74
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public dissWakeUpAnim()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 86
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 88
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.policy.impl.gnwakeup.IGnWakeUpService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 90
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 94
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 96
    return-void

    .line 93
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 94
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "com.android.internal.policy.impl.gnwakeup.IGnWakeUpService"

    return-object v0
.end method

.method public showWakeUpAnim(ILcom/android/internal/policy/impl/gnwakeup/IGnWakeUpCallback;Z)V
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "cb"    # Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpCallback;
    .param p3, "isKeyguardSecure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 100
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 102
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.policy.impl.gnwakeup.IGnWakeUpService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 105
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v2, p0, Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 107
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 113
    return-void

    .line 104
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
