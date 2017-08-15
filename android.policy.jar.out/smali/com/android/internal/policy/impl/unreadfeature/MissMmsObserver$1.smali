.class Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$1;
.super Landroid/os/Handler;
.source "MissMmsObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$1;->this$0:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 128
    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$1;->this$0:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;

    iget-object v2, v2, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->mGnUnreadLoader:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$1;->this$0:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->access$200(Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->getMissMmsCount(Landroid/content/Context;)I

    move-result v1

    .line 129
    .local v1, "missMmsCount":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$1;->this$0:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;

    iget-object v2, v2, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->mGnUnreadLoader:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$1;->this$0:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->access$200(Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->getMissCallCount(Landroid/content/Context;)I

    move-result v0

    .line 130
    .local v0, "missCallCount":I
    const-string v2, "SmartRemind-MissMms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "missMmsCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tmissCallCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-gtz v1, :cond_0

    if-lez v0, :cond_1

    .line 132
    :cond_0
    const-string v2, "SmartRemind-MissMms"

    const-string v3, "Miss Mms request write  1 now"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$1;->this$0:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;

    iget-object v2, v2, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->mGnUnreadLoader:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->ProcessSmartRemindValue(Ljava/lang/String;)V

    .line 135
    :cond_1
    return-void
.end method
