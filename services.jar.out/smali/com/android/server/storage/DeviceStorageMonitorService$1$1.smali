.class Lcom/android/server/storage/DeviceStorageMonitorService$1$1;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/storage/DeviceStorageMonitorService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/storage/DeviceStorageMonitorService$1;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService$1;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1$1;->this$1:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1$1;->this$1:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    iget-object v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService;->postShowMemoryLowDialog()V
    invoke-static {v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$300(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    .line 236
    return-void
.end method
