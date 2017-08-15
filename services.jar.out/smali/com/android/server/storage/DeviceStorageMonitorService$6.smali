.class Lcom/android/server/storage/DeviceStorageMonitorService$6;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1021
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$6;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1025
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1026
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 1044
    :goto_0
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$6;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemoryDialog:Lamigo/app/AmigoAlertDialog;
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$2000(Lcom/android/server/storage/DeviceStorageMonitorService;)Lamigo/app/AmigoAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lamigo/app/AmigoAlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1045
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$6;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemoryDialog:Lamigo/app/AmigoAlertDialog;
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$2000(Lcom/android/server/storage/DeviceStorageMonitorService;)Lamigo/app/AmigoAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lamigo/app/AmigoAlertDialog;->dismiss()V

    .line 1047
    :cond_0
    return-void

    .line 1028
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$6;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService;->goToSystemMgr()V
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$1600(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    goto :goto_0

    .line 1031
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$6;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService;->mvFileToSdcard()V
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$1700(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    goto :goto_0

    .line 1034
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$6;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService;->delFileInFileMgr()V
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$1800(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    goto :goto_0

    .line 1037
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$6;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService;->showMemoryDetails()V
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$1900(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    goto :goto_0

    .line 1026
    nop

    :pswitch_data_0
    .packed-switch 0x70a001c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
