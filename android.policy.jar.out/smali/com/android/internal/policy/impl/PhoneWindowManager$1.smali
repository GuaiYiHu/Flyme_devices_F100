.class Lcom/android/internal/policy/impl/PhoneWindowManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
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
    .line 311
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 314
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyState:I
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$002(Lcom/android/internal/policy/impl/PhoneWindowManager;I)I

    .line 316
    return-void
.end method
