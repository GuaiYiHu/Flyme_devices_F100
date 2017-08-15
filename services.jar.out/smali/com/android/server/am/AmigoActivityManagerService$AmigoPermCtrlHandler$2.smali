.class Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;
.super Ljava/lang/Object;
.source "AmigoActivityManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$permission:Ljava/lang/String;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 721
    iput-object p1, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iput-object p2, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->val$pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->val$permission:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 724
    const-string v0, "perm_ctrl"

    const-string v1, "The showing dialog dimiss!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mStartSetting:Z
    invoke-static {v0}, Lcom/android/server/am/AmigoActivityManagerService;->access$800(Lcom/android/server/am/AmigoActivityManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mRememberMe:Z
    invoke-static {v0}, Lcom/android/server/am/AmigoActivityManagerService;->access$1000(Lcom/android/server/am/AmigoActivityManagerService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 729
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/am/AmigoActivityManagerService;->mRememberMe:Z
    invoke-static {v0, v1}, Lcom/android/server/am/AmigoActivityManagerService;->access$1002(Lcom/android/server/am/AmigoActivityManagerService;Z)Z

    .line 730
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iget-object v1, v1, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/AmigoActivityManagerService;->access$200(Lcom/android/server/am/AmigoActivityManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->val$pkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->val$permission:Ljava/lang/String;

    const/4 v4, 0x0

    # invokes: Lcom/android/server/am/AmigoActivityManagerService;->amigoUpdatePermStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/AmigoActivityManagerService;->access$1100(Lcom/android/server/am/AmigoActivityManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 736
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/am/AmigoActivityManagerService;->access$1200(Lcom/android/server/am/AmigoActivityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 737
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/am/AmigoActivityManagerService;->access$1200(Lcom/android/server/am/AmigoActivityManagerService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 738
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlResultMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/am/AmigoActivityManagerService;->access$600(Lcom/android/server/am/AmigoActivityManagerService;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->val$key:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlResultMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/am/AmigoActivityManagerService;->access$600(Lcom/android/server/am/AmigoActivityManagerService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlResultMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/am/AmigoActivityManagerService;->access$600(Lcom/android/server/am/AmigoActivityManagerService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    .line 741
    const-string v0, "perm_ctrl"

    const-string v1, "We remove the dialog from the map!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->val$pkgName:Ljava/lang/String;

    # invokes: Lcom/android/server/am/AmigoActivityManagerService;->amigoClearPermMessages(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/am/AmigoActivityManagerService;->access$1300(Lcom/android/server/am/AmigoActivityManagerService;Ljava/lang/String;)V

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # invokes: Lcom/android/server/am/AmigoActivityManagerService;->amigoPopPermMessage()V
    invoke-static {v0}, Lcom/android/server/am/AmigoActivityManagerService;->access$1400(Lcom/android/server/am/AmigoActivityManagerService;)V

    .line 749
    return-void

    .line 732
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iget-object v1, v1, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/AmigoActivityManagerService;->access$200(Lcom/android/server/am/AmigoActivityManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->val$pkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->val$permission:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;->this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iget-object v4, v4, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mPermissionsStatus:I
    invoke-static {v4}, Lcom/android/server/am/AmigoActivityManagerService;->access$700(Lcom/android/server/am/AmigoActivityManagerService;)I

    move-result v4

    # invokes: Lcom/android/server/am/AmigoActivityManagerService;->amigoUpdatePermStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/AmigoActivityManagerService;->access$1100(Lcom/android/server/am/AmigoActivityManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 738
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
