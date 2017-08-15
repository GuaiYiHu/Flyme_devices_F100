.class Lcom/android/internal/policy/impl/AmigoGlobalActions$8;
.super Ljava/lang/Object;
.source "AmigoGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AmigoGlobalActions;->initView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 440
    iget-object v1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$900(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 442
    .local v0, "mgr":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mAirplaneState:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$300(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    .line 443
    iget-object v1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mAirplaneState:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$300(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    # setter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mAirplaneState:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$302(Lcom/android/internal/policy/impl/AmigoGlobalActions;Z)Z

    .line 444
    const-string v1, "AmigoGlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAirplaneImageView click  mAirplaneState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mAirplaneState:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$300(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$800(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 446
    iget-object v1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/AmigoGlobalActions;->dismissDialog()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$000(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V

    .line 447
    return-void

    :cond_0
    move v1, v3

    .line 442
    goto :goto_0

    :cond_1
    move v2, v3

    .line 443
    goto :goto_1
.end method
