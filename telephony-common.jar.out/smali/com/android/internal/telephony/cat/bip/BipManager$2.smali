.class Lcom/android/internal/telephony/cat/bip/BipManager$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "BipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cat/bip/BipManager;->newRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/bip/BipManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/bip/BipManager;)V
    .locals 0

    .prologue
    .line 848
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    const/4 v4, 0x1

    .line 851
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 852
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z
    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$000(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 853
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$600(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 855
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$800(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I
    invoke-static {v2}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$700(Lcom/android/internal/telephony/cat/bip/BipManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v0

    .line 856
    .local v0, "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkCallbackListener.onAvailable, mChannelId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I
    invoke-static {v3}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$700(Lcom/android/internal/telephony/cat/bip/BipManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mIsOpenInProgress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z
    invoke-static {v3}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$900(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mIsNetworkAvailableReceived: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mIsNetworkAvailableReceived:Z
    invoke-static {v3}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1000(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    if-nez v0, :cond_1

    .line 860
    const-string v1, "[BIP]"

    const-string v2, "Channel is null."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z
    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$900(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v1

    if-ne v4, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mIsNetworkAvailableReceived:Z
    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1000(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 863
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # setter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mIsNetworkAvailableReceived:Z
    invoke-static {v1, v4}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1002(Lcom/android/internal/telephony/cat/bip/BipManager;Z)Z

    .line 864
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # setter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mNetwork:Landroid/net/Network;
    invoke-static {v1, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1102(Lcom/android/internal/telephony/cat/bip/BipManager;Landroid/net/Network;)Landroid/net/Network;

    .line 865
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # invokes: Lcom/android/internal/telephony/cat/bip/BipManager;->connect()V
    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1200(Lcom/android/internal/telephony/cat/bip/BipManager;)V

    .line 869
    :goto_0
    return-void

    .line 867
    :cond_2
    const-string v1, "[BIP]"

    const-string v2, "Bip channel has been established."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 873
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 874
    const/4 v1, 0x0

    .line 875
    .local v1, "ret":I
    const/4 v0, 0x0

    .line 876
    .local v0, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z
    invoke-static {v2}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$000(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 877
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$600(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 879
    :cond_0
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLost: network:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNetworkCallback:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-static {v4}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1300(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " this:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # invokes: Lcom/android/internal/telephony/cat/bip/BipManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V
    invoke-static {v2, p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1400(Lcom/android/internal/telephony/cat/bip/BipManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 882
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1300(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    if-ne v2, p0, :cond_1

    .line 883
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # invokes: Lcom/android/internal/telephony/cat/bip/BipManager;->resetLocked()V
    invoke-static {v2}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1500(Lcom/android/internal/telephony/cat/bip/BipManager;)V

    .line 884
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # invokes: Lcom/android/internal/telephony/cat/bip/BipManager;->disconnect()V
    invoke-static {v2}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$100(Lcom/android/internal/telephony/cat/bip/BipManager;)V

    .line 886
    :cond_1
    return-void
.end method

.method public onUnavailable()V
    .locals 3

    .prologue
    .line 890
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 891
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z
    invoke-static {v0}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$000(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$600(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 894
    :cond_0
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnavailable: mNetworkCallback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1300(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # invokes: Lcom/android/internal/telephony/cat/bip/BipManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V
    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1400(Lcom/android/internal/telephony/cat/bip/BipManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1300(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 898
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # invokes: Lcom/android/internal/telephony/cat/bip/BipManager;->resetLocked()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1500(Lcom/android/internal/telephony/cat/bip/BipManager;)V

    .line 899
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # invokes: Lcom/android/internal/telephony/cat/bip/BipManager;->disconnect()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$100(Lcom/android/internal/telephony/cat/bip/BipManager;)V

    .line 901
    :cond_1
    return-void
.end method
