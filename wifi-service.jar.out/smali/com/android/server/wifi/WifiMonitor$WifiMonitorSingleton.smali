.class Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;
.super Ljava/lang/Object;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiMonitorSingleton"
.end annotation


# static fields
.field private static final sInstance:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;


# instance fields
.field private mConnected:Z

.field private final mIfaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private mQuitMonitorFlag:Z

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 650
    new-instance v0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->sInstance:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    .line 653
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    .line 654
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mQuitMonitorFlag:Z

    .line 658
    return-void
.end method

.method static synthetic access$000()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;
    .locals 1

    .prologue
    .line 649
    sget-object v0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->sInstance:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 649
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->dispatchEvent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mQuitMonitorFlag:Z

    return v0
.end method

.method private declared-synchronized dispatchEvent(Ljava/lang/String;)Z
    .locals 11
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 789
    monitor-enter p0

    :try_start_0
    const-string v8, "IFNAME="

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 790
    const/16 v8, 0x20

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 791
    .local v7, "space":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 792
    const/4 v8, 0x7

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 793
    .local v2, "iface":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "p2p-"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 797
    const-string v2, "p2p0"

    .line 799
    :cond_0
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 812
    .end local v7    # "space":I
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiMonitor;->VDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$600()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "WifiMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dispatching event to interface: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_1
    const/4 v5, 0x0

    .line 816
    .local v5, "m":Lcom/android/server/wifi/WifiMonitor;
    const-string v8, "unkown0"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 818
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    const-string v9, "ap0"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "m":Lcom/android/server/wifi/WifiMonitor;
    check-cast v5, Lcom/android/server/wifi/WifiMonitor;

    .line 819
    .restart local v5    # "m":Lcom/android/server/wifi/WifiMonitor;
    if-eqz v5, :cond_6

    # getter for: Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiMonitor;->access$100(Lcom/android/server/wifi/WifiMonitor;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 829
    :goto_1
    if-eqz v5, :cond_9

    .line 830
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiMonitor;->access$100(Lcom/android/server/wifi/WifiMonitor;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 831
    # invokes: Lcom/android/server/wifi/WifiMonitor;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v5, p1, v2}, Lcom/android/server/wifi/WifiMonitor;->access$700(Lcom/android/server/wifi/WifiMonitor;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 832
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    .line 835
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/WifiMonitor;->access$400(Lcom/android/server/wifi/WifiMonitor;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ap0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 836
    const/4 v8, 0x0

    # setter for: Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiMonitor;->access$102(Lcom/android/server/wifi/WifiMonitor;Z)Z

    .line 837
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiNative;->closeSupplicantConnection()V

    .line 838
    const-string v8, "WifiMonitor"

    const-string v9, "ap0 get TEMINATING 1"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    :cond_2
    const/4 v0, 0x1

    .line 880
    .end local v2    # "iface":Ljava/lang/String;
    .end local v5    # "m":Lcom/android/server/wifi/WifiMonitor;
    :cond_3
    :goto_2
    monitor-exit p0

    return v0

    .line 804
    .restart local v7    # "space":I
    :cond_4
    :try_start_1
    const-string v8, "WifiMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dropping malformed event (unparsable iface): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 789
    .end local v7    # "space":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 809
    :cond_5
    :try_start_2
    const-string v2, "unkown0"

    .restart local v2    # "iface":Ljava/lang/String;
    goto/16 :goto_0

    .line 823
    .restart local v5    # "m":Lcom/android/server/wifi/WifiMonitor;
    :cond_6
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    const-string v9, "p2p0"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "m":Lcom/android/server/wifi/WifiMonitor;
    check-cast v5, Lcom/android/server/wifi/WifiMonitor;

    .restart local v5    # "m":Lcom/android/server/wifi/WifiMonitor;
    goto :goto_1

    .line 826
    :cond_7
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "m":Lcom/android/server/wifi/WifiMonitor;
    check-cast v5, Lcom/android/server/wifi/WifiMonitor;

    .restart local v5    # "m":Lcom/android/server/wifi/WifiMonitor;
    goto :goto_1

    .line 845
    :cond_8
    # getter for: Lcom/android/server/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$300()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "WifiMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dropping event because ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") is stopped"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 849
    :cond_9
    # getter for: Lcom/android/server/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$300()Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "WifiMonitor"

    const-string v9, "Sending to all monitors because there\'s no matching iface"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_a
    const/4 v0, 0x0

    .line 851
    .local v0, "done":Z
    const/4 v3, 0x0

    .line 852
    .local v3, "isMonitoring":Z
    const/4 v4, 0x0

    .line 853
    .local v4, "isTerminating":Z
    const-string v8, "CTRL-EVENT-"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "TERMINATING"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 855
    const/4 v4, 0x1

    .line 857
    :cond_b
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/WifiMonitor;

    .line 858
    .local v6, "monitor":Lcom/android/server/wifi/WifiMonitor;
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiMonitor;->access$100(Lcom/android/server/wifi/WifiMonitor;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 859
    const/4 v3, 0x1

    .line 860
    # invokes: Lcom/android/server/wifi/WifiMonitor;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v6, p1, v2}, Lcom/android/server/wifi/WifiMonitor;->access$700(Lcom/android/server/wifi/WifiMonitor;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 861
    const/4 v0, 0x1

    goto :goto_3

    .line 866
    .end local v6    # "monitor":Lcom/android/server/wifi/WifiMonitor;
    :cond_d
    if-nez v3, :cond_e

    if-eqz v4, :cond_e

    .line 867
    const/4 v0, 0x1

    .line 870
    :cond_e
    if-eqz v0, :cond_3

    .line 871
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    .line 873
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/WifiMonitor;->access$400(Lcom/android/server/wifi/WifiMonitor;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ap0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 874
    const/4 v8, 0x0

    # setter for: Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiMonitor;->access$102(Lcom/android/server/wifi/WifiMonitor;Z)Z

    .line 875
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiNative;->closeSupplicantConnection()V

    .line 876
    const-string v8, "WifiMonitor"

    const-string v9, "ap0 get TEMINATING 2"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method


# virtual methods
.method public declared-synchronized isMonitoring(Ljava/lang/String;)Z
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 726
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiMonitor;

    .line 727
    .local v0, "m":Lcom/android/server/wifi/WifiMonitor;
    if-nez v0, :cond_0

    .line 728
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMonitoring iface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already gone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    const/4 v1, 0x0

    .line 733
    :goto_0
    monitor-exit p0

    return v1

    .line 732
    :cond_0
    :try_start_1
    # getter for: Lcom/android/server/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$300()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMonitoring("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiMonitor;->access$100(Lcom/android/server/wifi/WifiMonitor;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_1
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiMonitor;->access$100(Lcom/android/server/wifi/WifiMonitor;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 726
    .end local v0    # "m":Lcom/android/server/wifi/WifiMonitor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized killHotspot()V
    .locals 2

    .prologue
    .line 783
    monitor-enter p0

    :try_start_0
    const-string v0, "WifiMonitor"

    const-string v1, "killHotspot!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    monitor-exit p0

    return-void

    .line 783
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized killSupplicant(Z)V
    .locals 7
    .param p1, "p2pSupported"    # Z

    .prologue
    .line 761
    monitor-enter p0

    :try_start_0
    const-string v4, "init.svc.wpa_supplicant"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 762
    .local v3, "suppState":Ljava/lang/String;
    if-nez v3, :cond_0

    const-string v3, "unknown"

    .line 763
    :cond_0
    const-string v4, "init.svc.p2p_supplicant"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 764
    .local v2, "p2pSuppState":Ljava/lang/String;
    if-nez v2, :cond_1

    const-string v2, "unknown"

    .line 766
    :cond_1
    const-string v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "killSupplicant p2p"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " init.svc.wpa_supplicant="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " init.svc.p2p_supplicant="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-static {p1}, Lcom/android/server/wifi/WifiNative;->killSupplicant(Z)Z

    .line 770
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    .line 771
    iget-object v4, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiMonitor;

    .line 772
    .local v1, "m":Lcom/android/server/wifi/WifiMonitor;
    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiMonitor;->access$102(Lcom/android/server/wifi/WifiMonitor;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 761
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "m":Lcom/android/server/wifi/WifiMonitor;
    .end local v2    # "p2pSuppState":Ljava/lang/String;
    .end local v3    # "suppState":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 775
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "p2pSuppState":Ljava/lang/String;
    .restart local v3    # "suppState":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->quitMonitoring()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 776
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized quitMonitoring()V
    .locals 2

    .prologue
    .line 778
    monitor-enter p0

    :try_start_0
    const-string v0, "WifiMonitor"

    const-string v1, "quit Monitoring!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mQuitMonitorFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    monitor-exit p0

    return-void

    .line 778
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerInterfaceMonitor(Ljava/lang/String;Lcom/android/server/wifi/WifiMonitor;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "m"    # Lcom/android/server/wifi/WifiMonitor;

    .prologue
    .line 739
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    const-string v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rmIfaceMap put "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    if-nez v0, :cond_0

    .line 742
    const-string v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWifiNative == null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {p2}, Lcom/android/server/wifi/WifiMonitor;->access$500(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    :cond_0
    monitor-exit p0

    return-void

    .line 739
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startMonitoring(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 661
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiMonitor;

    .line 662
    .local v2, "m":Lcom/android/server/wifi/WifiMonitor;
    if-nez v2, :cond_0

    .line 663
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startMonitor called with unknown iface="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 704
    :goto_0
    monitor-exit p0

    return-void

    .line 667
    :cond_0
    :try_start_1
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startMonitoring("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") with mConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    if-eqz v3, :cond_1

    .line 670
    const/4 v3, 0x1

    # setter for: Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiMonitor;->access$102(Lcom/android/server/wifi/WifiMonitor;Z)Z

    .line 671
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiMonitor;->access$200(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x24001

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 661
    .end local v2    # "m":Lcom/android/server/wifi/WifiMonitor;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 673
    .restart local v2    # "m":Lcom/android/server/wifi/WifiMonitor;
    :cond_1
    :try_start_2
    # getter for: Lcom/android/server/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$300()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiMonitor"

    const-string v4, "connecting to supplicant"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_2
    const/4 v0, 0x0

    .local v0, "connectTries":I
    move v1, v0

    .line 676
    .end local v0    # "connectTries":I
    .local v1, "connectTries":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->connectToSupplicant()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 677
    const/4 v3, 0x1

    # setter for: Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiMonitor;->access$102(Lcom/android/server/wifi/WifiMonitor;Z)Z

    .line 678
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiMonitor;->access$200(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x24001

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 679
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mQuitMonitorFlag:Z

    .line 680
    new-instance v3, Lcom/android/server/wifi/WifiMonitor$MonitorThread;

    iget-object v4, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-direct {v3, v4, p0}, Lcom/android/server/wifi/WifiMonitor$MonitorThread;-><init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;)V

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->start()V

    .line 681
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 684
    :cond_3
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    const/4 v3, 0x5

    if-ge v1, v3, :cond_4

    .line 686
    const-wide/16 v4, 0x3e8

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v0

    .line 688
    .end local v0    # "connectTries":I
    .restart local v1    # "connectTries":I
    goto :goto_1

    .line 687
    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    :catch_0
    move-exception v3

    move v1, v0

    .line 688
    .end local v0    # "connectTries":I
    .restart local v1    # "connectTries":I
    goto :goto_1

    .line 690
    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    :cond_4
    :try_start_4
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rmIfaceMap remove "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/WifiMonitor;->access$400(Lcom/android/server/wifi/WifiMonitor;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ap0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 696
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiMonitor;->access$200(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x24002

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 699
    :cond_5
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startMonitoring("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized stopMonitoring(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 707
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiMonitor;

    .line 708
    .local v0, "m":Lcom/android/server/wifi/WifiMonitor;
    if-nez v0, :cond_0

    .line 709
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopMonitoring iface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already gone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    :goto_0
    monitor-exit p0

    return-void

    .line 714
    :cond_0
    :try_start_1
    const-string v1, "ap0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 715
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->killHotspot()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 707
    .end local v0    # "m":Lcom/android/server/wifi/WifiMonitor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 719
    .restart local v0    # "m":Lcom/android/server/wifi/WifiMonitor;
    :cond_1
    :try_start_2
    # getter for: Lcom/android/server/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$300()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopMonitoring("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/WifiMonitor;->access$200(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_2
    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->access$102(Lcom/android/server/wifi/WifiMonitor;Z)Z

    .line 721
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/WifiMonitor;->access$200(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x24002

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized stopSupplicant()V
    .locals 1

    .prologue
    .line 757
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->stopSupplicant()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    monitor-exit p0

    return-void

    .line 757
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterInterfaceMonitor(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 751
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiMonitor;

    .line 752
    .local v0, "m":Lcom/android/server/wifi/WifiMonitor;
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rmIfaceMap remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    # getter for: Lcom/android/server/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterInterface("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/WifiMonitor;->access$200(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    :cond_0
    monitor-exit p0

    return-void

    .line 751
    .end local v0    # "m":Lcom/android/server/wifi/WifiMonitor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
