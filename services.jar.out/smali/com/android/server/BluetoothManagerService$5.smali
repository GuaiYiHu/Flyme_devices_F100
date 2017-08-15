.class Lcom/android/server/BluetoothManagerService$5;
.super Ljava/lang/Thread;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BluetoothManagerService;->recoverBluetoothServiceFromError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    .prologue
    .line 1682
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1684
    const-string v0, "BluetoothManagerService"

    const-string v1, "new Thread sendBluetoothServiceDownCallback in recoverBluetoothServiceFromError()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$3500(Lcom/android/server/BluetoothManagerService;)V

    .line 1687
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1500(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v1

    monitor-enter v1

    .line 1688
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1689
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v0, v2}, Lcom/android/server/BluetoothManagerService;->access$1602(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 1691
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$3800(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1500(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1693
    :cond_0
    monitor-exit v1

    .line 1695
    return-void

    .line 1693
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
