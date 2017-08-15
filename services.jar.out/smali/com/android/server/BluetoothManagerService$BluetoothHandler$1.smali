.class Lcom/android/server/BluetoothManagerService$BluetoothHandler$1;
.super Ljava/lang/Thread;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BluetoothManagerService$BluetoothHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BluetoothManagerService$BluetoothHandler;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService$BluetoothHandler;)V
    .locals 0

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BluetoothHandler$1;->this$1:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$BluetoothHandler$1;->this$1:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceUpCallback()V
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;)V

    .line 1161
    const-string v0, "BluetoothManagerService"

    const-string v1, "new Thread sendBluetoothServiceUpCallback "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    return-void
.end method
