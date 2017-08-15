.class Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$QueryMissMessage;
.super Landroid/os/AsyncTask;
.source "MissMmsObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;
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
.field private final mMmsContentURI:Landroid/net/Uri;

.field private final mSmsContentURI:Landroid/net/Uri;

.field private final mWapPushContentURI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;)V
    .locals 1

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$QueryMissMessage;->this$0:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$QueryMissMessage;->mSmsContentURI:Landroid/net/Uri;

    .line 25
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$QueryMissMessage;->mMmsContentURI:Landroid/net/Uri;

    .line 26
    const-string v0, "content://wappush"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$QueryMissMessage;->mWapPushContentURI:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$1;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$QueryMissMessage;-><init>(Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 4
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 32
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$QueryMissMessage;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 40
    :goto_0
    return-object v1

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$QueryMissMessage;->this$0:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;

    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$QueryMissMessage;->mWapPushContentURI:Landroid/net/Uri;

    const-string v3, "(read=0 OR seen=0)"

    # invokes: Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->getCount(Landroid/net/Uri;Ljava/lang/String;)I
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->access$000(Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    iget-object v1, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$QueryMissMessage;->this$0:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;

    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$QueryMissMessage;->mMmsContentURI:Landroid/net/Uri;

    const-string v3, "read=0"

    # invokes: Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->getCount(Landroid/net/Uri;Ljava/lang/String;)I
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->access$000(Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    iget-object v1, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$QueryMissMessage;->this$0:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;

    iget-object v2, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$QueryMissMessage;->mSmsContentURI:Landroid/net/Uri;

    const-string v3, "read=0"

    # invokes: Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->getCount(Landroid/net/Uri;Ljava/lang/String;)I
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;->access$000(Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$QueryMissMessage;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 47
    new-instance v0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind;

    iget-object v1, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$QueryMissMessage;->this$0:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind;-><init>(Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;I)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind;->start()V

    .line 48
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$QueryMissMessage;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
