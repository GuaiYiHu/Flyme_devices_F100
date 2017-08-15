.class Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$QueryMissMessage;
.super Landroid/os/AsyncTask;
.source "MissCallObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryMissMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$QueryMissMessage;->this$0:Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$1;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$QueryMissMessage;-><init>(Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 27
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$QueryMissMessage;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 31
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$QueryMissMessage;->this$0:Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;

    # invokes: Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;->getMissCallCount()I
    invoke-static {v1}, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;->access$000(Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$QueryMissMessage;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 37
    new-instance v0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind;

    iget-object v1, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$QueryMissMessage;->this$0:Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind;-><init>(Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;I)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind;->start()V

    .line 38
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 22
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$QueryMissMessage;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
