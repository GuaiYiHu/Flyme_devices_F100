.class Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind;
.super Ljava/lang/Object;
.source "MissMmsObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartRemind"
.end annotation


# instance fields
.field private mCount:I

.field private mThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;I)V
    .locals 1
    .param p2, "count"    # I

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind;->this$0:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput p2, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind;->mCount:I

    .line 144
    new-instance v0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind$1;-><init>(Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind;Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind;->mThread:Ljava/lang/Thread;

    .line 149
    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind;

    .prologue
    .line 139
    iget v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind;->mCount:I

    return v0
.end method


# virtual methods
.method public start()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver$SmartRemind;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 152
    return-void
.end method
