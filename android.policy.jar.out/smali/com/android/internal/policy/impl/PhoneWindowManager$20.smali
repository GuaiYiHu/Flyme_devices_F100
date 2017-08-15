.class Lcom/android/internal/policy/impl/PhoneWindowManager$20;
.super Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpCallback$Stub;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->gnProcessWakeUp(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 5581
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public releaseLock()V
    .locals 1

    .prologue
    .line 5583
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->gnReleaseLock()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3500(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 5584
    return-void
.end method
