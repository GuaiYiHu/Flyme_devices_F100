.class Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind$1;
.super Ljava/lang/Thread;
.source "MissMmsObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind;-><init>(Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind;

.field final synthetic val$this$0:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind;Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind$1;->this$1:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind;

    iput-object p2, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind$1;->val$this$0:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind$1;->this$1:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind;

    iget-object v0, v0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind;->this$0:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind$1;->this$1:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind;->mCount:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind;->access$300(Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind;)I

    move-result v1

    # invokes: Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->onUnReadChange(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->access$400(Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;I)V

    .line 147
    return-void
.end method
