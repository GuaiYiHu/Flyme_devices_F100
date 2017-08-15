.class Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind;
.super Ljava/lang/Object;
.source "MissCallObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartRemind"
.end annotation


# instance fields
.field private mCount:I

.field private mThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;I)V
    .locals 1
    .param p2, "count"    # I

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind;->this$0:Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput p2, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind;->mCount:I

    .line 121
    new-instance v0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind$1;-><init>(Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind;Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind;->mThread:Ljava/lang/Thread;

    .line 126
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind;

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind;->mCount:I

    return v0
.end method


# virtual methods
.method public start()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver$SmartRemind;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 129
    return-void
.end method
