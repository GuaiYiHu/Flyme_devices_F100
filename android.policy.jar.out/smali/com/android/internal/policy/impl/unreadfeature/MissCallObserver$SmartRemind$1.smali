.class Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind$1;
.super Ljava/lang/Thread;
.source "MissCallObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind;-><init>(Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind;

.field final synthetic val$this$0:Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind;Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind$1;->this$1:Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind;

    iput-object p2, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind$1;->val$this$0:Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind$1;->this$1:Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind;

    iget-object v0, v0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind;->this$0:Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind$1;->this$1:Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind;->mCount:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind;->access$200(Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind;)I

    move-result v1

    # invokes: Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;->onUnReadChange(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;->access$300(Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;I)V

    .line 124
    return-void
.end method
