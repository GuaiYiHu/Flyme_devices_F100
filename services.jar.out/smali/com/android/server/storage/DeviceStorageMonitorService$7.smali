.class Lcom/android/server/storage/DeviceStorageMonitorService$7;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$7;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$7;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemoryDialog:Lamigo/app/AmigoAlertDialog;
    invoke-static {v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$2000(Lcom/android/server/storage/DeviceStorageMonitorService;)Lamigo/app/AmigoAlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1055
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$7;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemoryDialog:Lamigo/app/AmigoAlertDialog;
    invoke-static {v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$2000(Lcom/android/server/storage/DeviceStorageMonitorService;)Lamigo/app/AmigoAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lamigo/app/AmigoAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$7;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemoryDialog:Lamigo/app/AmigoAlertDialog;
    invoke-static {v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$2000(Lcom/android/server/storage/DeviceStorageMonitorService;)Lamigo/app/AmigoAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lamigo/app/AmigoAlertDialog;->dismiss()V

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$7;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemoryDialog:Lamigo/app/AmigoAlertDialog;
    invoke-static {v0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$2002(Lcom/android/server/storage/DeviceStorageMonitorService;Lamigo/app/AmigoAlertDialog;)Lamigo/app/AmigoAlertDialog;

    .line 1060
    :cond_1
    return-void
.end method
