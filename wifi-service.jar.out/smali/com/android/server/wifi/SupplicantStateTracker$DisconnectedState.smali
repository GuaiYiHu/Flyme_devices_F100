.class Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SupplicantStateTracker;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 338
    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1300(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Message;

    move-result-object v0

    .line 343
    .local v0, "message":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/StateChangeResult;

    .line 345
    .local v1, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->access$100(Lcom/android/server/wifi/SupplicantStateTracker;)I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    .line 346
    const-string v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to authenticate, disabling network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mIsWlanShowDialog:Z
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->access$300()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresType:I
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->access$400(Lcom/android/server/wifi/SupplicantStateTracker;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 350
    const-string v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAuthenticationFailuresType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresType:I
    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStateTracker;->access$400(Lcom/android/server/wifi/SupplicantStateTracker;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1200(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    iget v3, v1, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresType:I
    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStateTracker;->access$400(Lcom/android/server/wifi/SupplicantStateTracker;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->setAuthFailureType(II)V

    .line 354
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget v3, v1, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    const/4 v4, 0x3

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(II)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1400(Lcom/android/server/wifi/SupplicantStateTracker;II)V

    .line 356
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v2, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$102(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 358
    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mIsWlanShowDialog:Z
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 359
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresType:I
    invoke-static {v2, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$402(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 375
    :cond_2
    :goto_0
    return-void

    .line 363
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1100(Lcom/android/server/wifi/SupplicantStateTracker;)I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 364
    const-string v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Association getting rejected, disabling network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mIsWlanShowDialog:Z
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->access$300()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 368
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresType:I
    invoke-static {v2, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$402(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 371
    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget v3, v1, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    const/4 v4, 0x4

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(II)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1400(Lcom/android/server/wifi/SupplicantStateTracker;II)V

    .line 373
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I
    invoke-static {v2, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1102(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    goto :goto_0
.end method
