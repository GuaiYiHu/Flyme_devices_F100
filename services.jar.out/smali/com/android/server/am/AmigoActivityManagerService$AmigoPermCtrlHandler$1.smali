.class Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$1;
.super Ljava/lang/Object;
.source "AmigoActivityManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$1;->this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iput-object p2, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$1;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 688
    const-string v0, "perm_ctrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "which clicked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    packed-switch p2, :pswitch_data_0

    .line 706
    :goto_0
    return-void

    .line 691
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$1;->this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlResultMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/am/AmigoActivityManagerService;->access$600(Lcom/android/server/am/AmigoActivityManagerService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$1;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$1;->this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # setter for: Lcom/android/server/am/AmigoActivityManagerService;->mPermissionsStatus:I
    invoke-static {v0, v3}, Lcom/android/server/am/AmigoActivityManagerService;->access$702(Lcom/android/server/am/AmigoActivityManagerService;I)I

    goto :goto_0

    .line 695
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$1;->this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # setter for: Lcom/android/server/am/AmigoActivityManagerService;->mStartSetting:Z
    invoke-static {v0, v3}, Lcom/android/server/am/AmigoActivityManagerService;->access$802(Lcom/android/server/am/AmigoActivityManagerService;Z)Z

    .line 696
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$1;->this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$1;->this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iget-object v1, v1, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/AmigoActivityManagerService;->access$200(Lcom/android/server/am/AmigoActivityManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$1;->val$pkgName:Ljava/lang/String;

    # invokes: Lcom/android/server/am/AmigoActivityManagerService;->amigoStartSettingActivity(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/am/AmigoActivityManagerService;->access$900(Lcom/android/server/am/AmigoActivityManagerService;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 699
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$1;->this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlResultMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/am/AmigoActivityManagerService;->access$600(Lcom/android/server/am/AmigoActivityManagerService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$1;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$1;->this$1:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    const/4 v1, -0x1

    # setter for: Lcom/android/server/am/AmigoActivityManagerService;->mPermissionsStatus:I
    invoke-static {v0, v1}, Lcom/android/server/am/AmigoActivityManagerService;->access$702(Lcom/android/server/am/AmigoActivityManagerService;I)I

    goto :goto_0

    .line 689
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
