.class Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectModeState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 7643
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 7646
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7647
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 50
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 7657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$1100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 7659
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    sparse-switch v44, :sswitch_data_0

    .line 8657
    const/16 v44, 0x0

    .line 8659
    :goto_0
    return v44

    .line 7661
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$17602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7662
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 7663
    .local v6, "bssid":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v44

    if-eqz v44, :cond_1

    .line 7665
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$11800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    .line 7667
    :cond_1
    if-eqz v6, :cond_2

    .line 7669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$17700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v45

    monitor-enter v45

    .line 7670
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$6200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v47

    const/16 v48, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/wifi/WifiConfigStore;->handleBSSIDBlackList(ILjava/lang/String;Z)Z

    move-result v46

    move-object/from16 v0, v44

    move/from16 v1, v46

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$17602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7672
    monitor-exit v45
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7674
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v44

    const v45, 0x2402b

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 8659
    .end local v6    # "bssid":Ljava/lang/String;
    :cond_3
    :goto_1
    const/16 v44, 0x1

    goto :goto_0

    .line 7672
    .restart local v6    # "bssid":Ljava/lang/String;
    :catchall_0
    move-exception v44

    :try_start_1
    monitor-exit v45
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v44

    .line 7678
    .end local v6    # "bssid":Ljava/lang/String;
    :sswitch_1
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsWlanShowDialog:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$17800()Z

    move-result v44

    if-eqz v44, :cond_4

    .line 7679
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "AUTHENTICATION_FAILURE_EVENT arg2="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v44

    const v45, 0x24007

    const/16 v46, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v47, v0

    invoke-virtual/range {v44 .. v47}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(III)V

    goto :goto_1

    .line 7682
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v44

    const v45, 0x24007

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    goto :goto_1

    .line 7688
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Ljava/lang/String;

    .line 7689
    .local v33, "substr":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    const v45, 0x2400d

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_5

    const-string v14, "temp-disabled"

    .line 7691
    .local v14, "en":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "ConnectModeState SSID state="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " nid="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " ["

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "]"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$17700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v45

    monitor-enter v45

    .line 7694
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v46

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v47, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    const v48, 0x2400e

    move/from16 v0, v44

    move/from16 v1, v48

    if-ne v0, v1, :cond_6

    const/16 v44, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v44

    move-object/from16 v3, v33

    move-object/from16 v4, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    .line 7696
    monitor-exit v45

    goto/16 :goto_1

    :catchall_1
    move-exception v44

    monitor-exit v45
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v44

    .line 7689
    .end local v14    # "en":Ljava/lang/String;
    :cond_5
    const-string v14, "re-enabled"

    goto/16 :goto_2

    .line 7694
    .restart local v14    # "en":Ljava/lang/String;
    :cond_6
    const/16 v44, 0x0

    goto :goto_3

    .line 7699
    .end local v14    # "en":Ljava/lang/String;
    .end local v33    # "substr":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$12700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v32

    .line 7702
    .local v32, "state":Landroid/net/wifi/SupplicantState;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v44

    if-nez v44, :cond_8

    .line 7703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$9300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v44

    sget-object v45, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-eq v0, v1, :cond_7

    .line 7704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$10500(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7706
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "Detected an interface down, restart driver"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$12900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$17900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2000d

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 7717
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$18000(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v44

    if-nez v44, :cond_3

    sget-object v44, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v32

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$9300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v44

    sget-object v45, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-eq v0, v1, :cond_3

    .line 7719
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v44

    if-eqz v44, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7720
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$10500(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$14700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$18100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7725
    .end local v32    # "state":Landroid/net/wifi/SupplicantState;
    :sswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_a

    .line 7726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 7727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$3302(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 7729
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    .line 7730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$3302(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 7734
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 7735
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    move-result v27

    .line 7736
    .local v27, "res":I
    if-gez v27, :cond_c

    .line 7737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$3100()I

    move-result v45

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$2502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7761
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x20034

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v27

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7739
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 7740
    .local v10, "curConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v10, :cond_d

    if-eqz v7, :cond_d

    .line 7741
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v44, v0

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v45, v0

    move/from16 v0, v44

    move/from16 v1, v45

    if-ge v0, v1, :cond_d

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v44, v0

    const/16 v45, 0x2

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_d

    .line 7746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 7754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, -0x3

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    invoke-virtual/range {v44 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 7757
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v44

    if-eqz v44, :cond_b

    .line 7758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->checkIfEapNetworkChanged(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v0, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$18200(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_4

    .line 7764
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v10    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v27    # "res":I
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v22

    .line 7765
    .local v22, "ok":Z
    if-nez v22, :cond_e

    .line 7766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$3100()I

    move-result v45

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$2502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7768
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v44

    if-eqz v44, :cond_f

    .line 7769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigStore;->removeDisconnectNetwork(I)V

    .line 7770
    if-eqz v22, :cond_f

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_f

    .line 7771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectOperation:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mScanForWeakSignal:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7775
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v46, v0

    if-eqz v22, :cond_10

    const/16 v44, 0x1

    :goto_5
    move-object/from16 v0, v45

    move-object/from16 v1, p1

    move/from16 v2, v46

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_10
    const/16 v44, -0x1

    goto :goto_5

    .line 7778
    .end local v22    # "ok":Z
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v44

    if-eqz v44, :cond_12

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v44, v0

    if-nez v44, :cond_12

    .line 7779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Lcom/mediatek/common/wifi/IWifiFwkExt;->shouldAutoConnect()Z

    move-result v44

    if-nez v44, :cond_11

    .line 7780
    const-string v44, "WifiStateMachine"

    const-string v45, "Shouldn\'t auto connect, ignore the enable network operation!"

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    const/16 v46, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7784
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigStore;->getDisconnectNetworks()Ljava/util/List;

    move-result-object v12

    .line 7785
    .local v12, "disconnectNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-interface {v12, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_12

    .line 7786
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Network "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " is disconnected actively, ignore the enable network operation!"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    const/16 v46, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7792
    .end local v12    # "disconnectNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_12
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_17

    const/16 v23, 0x1

    .line 7796
    .local v23, "others":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    const/16 v46, 0x1

    const/16 v47, 0x0

    invoke-virtual/range {v44 .. v47}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 7798
    if-eqz v23, :cond_13

    .line 7801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 7809
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    const-string v46, "any"

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 7811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v45

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v46, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v44, v0

    const/16 v47, 0x1

    move/from16 v0, v44

    move/from16 v1, v47

    if-ne v0, v1, :cond_18

    const/16 v44, 0x1

    :goto_7
    move-object/from16 v0, v45

    move/from16 v1, v46

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    move-result v22

    .line 7812
    .restart local v22    # "ok":Z
    if-nez v22, :cond_14

    .line 7813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$3100()I

    move-result v45

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$2502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7815
    :cond_14
    if-eqz v22, :cond_16

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_16

    .line 7816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v44

    if-eqz v44, :cond_15

    .line 7817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigStore;->removeDisconnectNetwork(I)V

    .line 7818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectOperation:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mScanForWeakSignal:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7821
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastExplicitNetworkId:I
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$6602(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectNetwork:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$3902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v44

    const v45, 0x25001

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(II)V

    .line 7826
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v46, v0

    if-eqz v22, :cond_19

    const/16 v44, 0x1

    :goto_8
    move-object/from16 v0, v45

    move-object/from16 v1, p1

    move/from16 v2, v46

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7792
    .end local v22    # "ok":Z
    .end local v23    # "others":Z
    :cond_17
    const/16 v23, 0x0

    goto/16 :goto_6

    .line 7811
    .restart local v23    # "others":Z
    :cond_18
    const/16 v44, 0x0

    goto/16 :goto_7

    .line 7826
    .restart local v22    # "ok":Z
    :cond_19
    const/16 v44, -0x1

    goto :goto_8

    .line 7829
    .end local v22    # "ok":Z
    .end local v23    # "others":Z
    :sswitch_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    .line 7830
    .local v34, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$18300(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v44

    sub-long v44, v34, v44

    const-wide/32 v46, 0x927c0

    cmp-long v44, v44, v46

    if-lez v44, :cond_3

    .line 7831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 7832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-wide/from16 v1, v34

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$18302(Lcom/android/server/wifi/WifiStateMachine;J)J

    goto/16 :goto_1

    .line 7836
    .end local v34    # "time":J
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    const/16 v46, 0x5

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1b

    .line 7838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v44

    if-eqz v44, :cond_1a

    .line 7839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigStore;->addDisconnectNetwork(I)V

    .line 7840
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1a

    .line 7841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectOperation:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mScanForWeakSignal:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7845
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25013

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 7847
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$3100()I

    move-result v45

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$2502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25012

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7853
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v45

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/lang/String;

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 7854
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_3

    .line 7855
    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$6200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_3

    .line 7857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x20049

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 7862
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v45

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/lang/String;

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->addToBlacklist(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 7865
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->clearBlacklist()Z

    goto/16 :goto_1

    .line 7868
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    move-result v22

    .line 7870
    .restart local v22    # "ok":Z
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v44

    if-eqz v44, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "wifistatemachine did save config "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7871
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    const v46, 0x2003a

    if-eqz v22, :cond_1d

    const/16 v44, 0x1

    :goto_9
    move-object/from16 v0, v45

    move-object/from16 v1, p1

    move/from16 v2, v46

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 7874
    const-string v44, "backup"

    invoke-static/range {v44 .. v44}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v17

    .line 7876
    .local v17, "ibm":Landroid/app/backup/IBackupManager;
    if-eqz v17, :cond_3

    .line 7878
    :try_start_3
    const-string v44, "com.android.providers.settings"

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 7879
    :catch_0
    move-exception v44

    goto/16 :goto_1

    .line 7871
    .end local v17    # "ibm":Landroid/app/backup/IBackupManager;
    :cond_1d
    const/16 v44, -0x1

    goto :goto_9

    .line 7885
    .end local v22    # "ok":Z
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move-object/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 7889
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "Received SUP_REQUEST_IDENTITY"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$18400(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7891
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/String;

    .line 7893
    .local v31, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    if-eqz v44, :cond_1e

    if-eqz v31, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v44, v0

    if-eqz v44, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "\""

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "\""

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_1e

    .line 7896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v45

    move-object/from16 v0, v45

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "AUTH_FAILED no identity"

    const/16 v48, 0x0

    invoke-virtual/range {v44 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    .line 7900
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    const/16 v45, -0x1

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v44

    if-nez v44, :cond_1f

    .line 7903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_1

    .line 7905
    :cond_1f
    const-string v44, "WifiStateMachine"

    const-string v45, "Skip SUP_REQUEST_IDENTITY for customization!"

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 7909
    .end local v31    # "ssid":Ljava/lang/String;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "Received SUP_REQUEST_SIM_AUTH"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$18600(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7910
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    .line 7911
    .local v26, "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    if-eqz v26, :cond_21

    .line 7912
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v44, v0

    const/16 v45, 0x4

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_20

    .line 7913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handleGsmAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_1

    .line 7914
    :cond_20
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v44, v0

    const/16 v45, 0x5

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_3

    .line 7915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handle3GAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_1

    .line 7918
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "Invalid sim auth request"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7922
    .end local v26    # "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/WifiConfigStore;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move-object/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 7927
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    const/16 v45, -0x1

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_1

    .line 7932
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    goto/16 :goto_1

    .line 7935
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    goto/16 :goto_1

    .line 7939
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigStore;->needsUnlockedKeyStore()Z

    move-result v44

    if-eqz v44, :cond_3

    .line 7940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "Reconnecting to give a chance to un-connected TLS networks"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$18700(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 7942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v44

    if-eqz v44, :cond_22

    .line 7943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectOperation:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7945
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_1

    .line 7950
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2600()I

    move-result v45

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$2502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7951
    const/16 v44, 0x1

    goto/16 :goto_0

    .line 7953
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v44

    if-eqz v44, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Lcom/mediatek/common/wifi/IWifiFwkExt;->shouldAutoConnect()Z

    move-result v44

    if-nez v44, :cond_23

    .line 7954
    const-string v44, "WifiStateMachine"

    const-string v45, "Skip CMD_AUTO_CONNECT for customization!"

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7955
    const/16 v44, 0x1

    goto/16 :goto_0

    .line 7965
    :cond_23
    const/4 v11, 0x0

    .line 7966
    .local v11, "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$18800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$14700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-eq v0, v1, :cond_24

    .line 7970
    const/4 v11, 0x1

    .line 7971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 7975
    :cond_24
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 7976
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 7977
    .local v19, "netId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v29, v0

    .line 7978
    .local v29, "roam":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "CMD_AUTO_CONNECT sup state "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " my state "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$18900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " nid="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " roam="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7983
    if-nez v7, :cond_25

    .line 7984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "AUTO_CONNECT and no config, bail out..."

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7989
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v44

    move/from16 v1, v19

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 7992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "CMD_AUTO_CONNECT will save config -> "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " nid="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    const/16 v45, -0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v28

    .line 7995
    .local v28, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v19

    .line 7996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "CMD_AUTO_CONNECT did save config ->  nid="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    const/16 v45, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v19

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 8001
    const/16 v36, 0x0

    .line 8002
    .local v36, "tmpResult":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v44

    if-eqz v44, :cond_28

    .line 8003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v19

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    move-result v36

    .line 8007
    :goto_a
    if-eqz v36, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v44

    if-eqz v44, :cond_2a

    .line 8009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v45

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$18502(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 8011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 8012
    if-eqz v7, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v44

    if-nez v44, :cond_26

    .line 8026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    const/16 v45, -0x1

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 8029
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v29

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$19002(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v44

    if-nez v44, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$18000(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v44

    if-eqz v44, :cond_29

    .line 8031
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$19100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$19200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8005
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(I)Z

    move-result v36

    goto/16 :goto_a

    .line 8032
    :cond_29
    if-eqz v11, :cond_3

    .line 8033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$19300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$19400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8038
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Failed to connect config: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " netId: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25002

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8051
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v11    # "didDisconnect":Z
    .end local v19    # "netId":I
    .end local v28    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v29    # "roam":I
    .end local v36    # "tmpResult":Z
    :sswitch_18
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 8052
    .restart local v19    # "netId":I
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 8053
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 8054
    const/16 v39, 0x0

    .line 8057
    .local v39, "updatedExisting":Z
    if-eqz v7, :cond_2c

    .line 8058
    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-virtual {v7, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v8

    .line 8059
    .local v8, "configKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v30

    .line 8061
    .local v30, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v30, :cond_2b

    .line 8065
    move-object/from16 v7, v30

    .line 8066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "CONNECT_NETWORK updating existing config with id="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " configKey="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8068
    const/16 v44, 0x0

    move/from16 v0, v44

    iput-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 8069
    const/16 v44, 0x0

    move/from16 v0, v44

    iput v0, v7, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 8070
    const/16 v39, 0x1

    .line 8073
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v28

    .line 8074
    .restart local v28    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v19

    .line 8076
    .end local v8    # "configKey":Ljava/lang/String;
    .end local v28    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v30    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 8078
    if-nez v7, :cond_31

    .line 8079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "CONNECT_NETWORK id="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " my state "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$19500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8093
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "any"

    move-object/from16 v0, v44

    move/from16 v1, v19

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 8095
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    const/16 v45, 0x3f2

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_2d

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    const/16 v45, 0x3e8

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_2e

    .line 8103
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "CONNECT_NETWORK"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wifi/WifiStateMachine;->clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 8106
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$19002(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v44

    const/16 v45, 0x1

    const/16 v46, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v19

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 8111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 8113
    const/4 v11, 0x0

    .line 8114
    .restart local v11    # "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v44

    const/16 v45, -0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v44

    move/from16 v0, v44

    move/from16 v1, v19

    if-eq v0, v1, :cond_2f

    .line 8119
    const/4 v11, 0x1

    .line 8120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 8124
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    const/16 v45, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v19

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 8126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(I)Z

    move-result v44

    if-eqz v44, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v44

    if-eqz v44, :cond_35

    .line 8128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v45

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$18502(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 8132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v44

    const v45, 0x25001

    move-object/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(II)V

    .line 8133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25003

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 8136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectNetwork:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$3902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v19

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastExplicitNetworkId:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6602(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v44

    if-eqz v44, :cond_30

    .line 8139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectOperation:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mScanForWeakSignal:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->removeDisconnectNetwork(I)V

    .line 8145
    :cond_30
    if-eqz v11, :cond_33

    .line 8147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$19300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$19700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8083
    .end local v11    # "didDisconnect":Z
    :cond_31
    iget-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    move/from16 v44, v0

    if-eqz v44, :cond_32

    const-string v41, " skipped"

    .line 8084
    .local v41, "wasSkipped":Ljava/lang/String;
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "CONNECT_NETWORK id="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " config="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " cnid="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " supstate="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " my state "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$19600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " uid = "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 8083
    .end local v41    # "wasSkipped":Ljava/lang/String;
    :cond_32
    const-string v41, ""

    goto/16 :goto_c

    .line 8148
    .restart local v11    # "didDisconnect":Z
    :cond_33
    if-eqz v39, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$19800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$19900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, v19

    if-ne v0, v1, :cond_34

    .line 8152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v0, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$20000(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_1

    .line 8158
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$14700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$20100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8162
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Failed to connect config: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " netId: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25002

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8169
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v11    # "didDisconnect":Z
    .end local v19    # "netId":I
    .end local v39    # "updatedExisting":Z
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 8172
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$20202(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 8173
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 8174
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v7, :cond_36

    .line 8175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "ERROR: SAVE_NETWORK with null configuration"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " my state "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$20300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$3100()I

    move-result v45

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$2502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25008

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8183
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v45

    invoke-direct {v0, v7}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$20202(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 8184
    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v21, v0

    .line 8185
    .local v21, "nid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "SAVE_NETWORK id="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " config="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " nid="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " supstate="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " my state "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$20400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    const/16 v45, -0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v28

    .line 8192
    .restart local v28    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v44

    const/16 v45, -0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_3b

    .line 8193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v44

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_38

    .line 8194
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wifi/NetworkUpdateResult;->hasIpChanged()Z

    move-result v44

    if-eqz v44, :cond_37

    .line 8198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "Reconfiguring IP on connection"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$20500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$20600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8203
    :cond_37
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    move-result v44

    if-eqz v44, :cond_38

    .line 8204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "Reconfiguring proxy on connection"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2008c

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateLinkProperties(I)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 8208
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25009

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 8209
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$200()Z

    move-result v44

    if-eqz v44, :cond_39

    .line 8210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Success save network nid="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8214
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$17700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v45

    monitor-enter v45

    .line 8220
    :try_start_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    const v46, 0x25007

    move/from16 v0, v44

    move/from16 v1, v46

    if-ne v0, v1, :cond_3a

    const/16 v40, 0x1

    .line 8221
    .local v40, "user":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v44

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v46

    const/16 v47, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v46

    move/from16 v2, v40

    move/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 8223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    .line 8224
    monitor-exit v45
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 8225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v44

    if-eqz v44, :cond_3

    .line 8226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->checkIfEapNetworkChanged(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v0, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$18200(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_1

    .line 8220
    .end local v40    # "user":Z
    :cond_3a
    const/16 v40, 0x0

    goto :goto_d

    .line 8224
    :catchall_2
    move-exception v44

    :try_start_5
    monitor-exit v45
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v44

    .line 8229
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "Failed to save network"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$3100()I

    move-result v45

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$2502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25008

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8237
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v21    # "nid":I
    .end local v28    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v37

    .line 8239
    .local v37, "toRemove":Landroid/net/wifi/WifiConfiguration;
    if-nez v37, :cond_3e

    .line 8240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$20702(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 8244
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigStore;->forgetNetwork(I)Z

    move-result v44

    if-eqz v44, :cond_3f

    .line 8245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v44

    if-eqz v44, :cond_3c

    .line 8246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigStore;->removeDisconnectNetwork(I)V

    .line 8247
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_3c

    .line 8248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectOperation:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mScanForWeakSignal:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8252
    :cond_3c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastExplicitNetworkId:I
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_3d

    .line 8253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, -0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastExplicitNetworkId:I
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$6602(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectNetwork:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$3902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v44

    const v45, 0x25004

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(II)V

    .line 8257
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25006

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 8242
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v45

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$20702(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    goto/16 :goto_e

    .line 8259
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "Failed to forget network"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25005

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8265
    .end local v37    # "toRemove":Landroid/net/wifi/WifiConfiguration;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v44

    if-eqz v44, :cond_40

    .line 8266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectOperation:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mScanForWeakSignal:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->disableLastNetwork()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$20800(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8270
    :cond_40
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/net/wifi/WpsInfo;

    .line 8272
    .local v42, "wpsInfo":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, v42

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v44, v0

    packed-switch v44, :pswitch_data_0

    .line 8294
    new-instance v43, Landroid/net/wifi/WpsResult;

    sget-object v44, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v43 .. v44}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 8295
    .local v43, "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "Invalid setup for WPS"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8298
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    const/16 v45, -0x1

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 8300
    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v44, v0

    sget-object v45, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_44

    .line 8301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2500b

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move-object/from16 v3, v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 8302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$20900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$21000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8274
    .end local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v43

    .line 8275
    .restart local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_f

    .line 8278
    .end local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_1
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v44

    if-eqz v44, :cond_43

    .line 8279
    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v44

    if-nez v44, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->startApWpsCheckPinCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    if-nez v44, :cond_42

    .line 8280
    :cond_41
    const-string v44, "WifiStateMachine"

    const-string v45, "Invalid pin code."

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2500c

    const/16 v46, 0xa

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 8282
    const/16 v44, 0x1

    goto/16 :goto_0

    .line 8284
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v45, v0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mErApPin:Ljava/lang/String;
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7402(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 8288
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v43

    .line 8289
    .restart local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto/16 :goto_f

    .line 8291
    .end local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v43

    .line 8292
    .restart local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto/16 :goto_f

    .line 8304
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Failed to start WPS with config "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2500c

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8309
    .end local v42    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_1d
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v44

    if-eqz v44, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "Network connection established"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8310
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v44

    if-eqz v44, :cond_46

    .line 8311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectOperation:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8313
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectNetwork:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$3902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$6202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/lang/String;

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6102(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 8317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$6100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 8318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$6200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 8321
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkPasspointR1Support:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$9900()Z

    move-result v44

    if-eqz v44, :cond_48

    .line 8322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "ConnectModeState, mMtkPasspointR1Support is true"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->isHsSigmaTesting()Z

    move-result v44

    if-eqz v44, :cond_48

    .line 8328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "ConnectModeState, isHsSigmaTesting() == 1"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8330
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkDhcpv6cWifi:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2700()Z

    move-result v44

    if-eqz v44, :cond_47

    .line 8331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "ConnectModeState, Supplicant state is "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " before enable IPV6 (this is for sigma test usage)"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8335
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$700(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v45

    invoke-interface/range {v44 .. v45}, Landroid/os/INetworkManagementService;->enableIpv6(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2

    .line 8344
    :cond_47
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    sget-object v45, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$13900(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 8345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$6200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v45

    sget-object v46, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 8346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$6100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$21100(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$19900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$21200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8336
    :catch_1
    move-exception v25

    .line 8337
    .local v25, "re":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "ConnectModeState, Failed to enable IPv6: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_10

    .line 8338
    .end local v25    # "re":Landroid/os/RemoteException;
    :catch_2
    move-exception v13

    .line 8339
    .local v13, "e":Ljava/lang/IllegalStateException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "ConnectModeState, Failed to enable IPv6: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 8355
    .end local v13    # "e":Ljava/lang/IllegalStateException;
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$6100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$21100(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$20500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$21300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8368
    :sswitch_1e
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v44

    if-eqz v44, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "ConnectModeState: Network connection lost "

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8369
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$10500(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$14700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$21400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8373
    :sswitch_1f
    const-string v44, "WifiStateMachine"

    const-string v45, "WAPI no certification!"

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v44

    new-instance v45, Landroid/content/Intent;

    const-string v46, "android.net.wifi.NO_CERTIFICATION"

    invoke-direct/range {v45 .. v46}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v46, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v44 .. v46}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 8377
    :sswitch_20
    const-string v44, "WifiStateMachine"

    const-string v45, "EAP-FAST new pac updated!"

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v44

    new-instance v45, Landroid/content/Intent;

    const-string v46, "android.net.wifi.NEW_PAC_UPDATED"

    invoke-direct/range {v45 .. v46}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v46, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v44 .. v46}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 8381
    :sswitch_21
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkCtpppoe:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$4000()Z

    move-result v44

    if-eqz v44, :cond_4a

    .line 8382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->stopPPPoE()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$21500(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2501b

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 8385
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2501c

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8390
    :sswitch_22
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v44

    if-nez v44, :cond_4b

    .line 8391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2500c

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8394
    :cond_4b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/net/wifi/WpsInfo;

    .line 8395
    .restart local v42    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v44

    const-string v45, "nfc_pw"

    const/16 v46, 0x0

    invoke-static/range {v44 .. v46}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 8396
    .local v20, "nfcPw":I
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "START_WPS_REG, nfcPw:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8397
    move-object/from16 v0, v42

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v44, v0

    const/16 v45, 0x2

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_52

    .line 8398
    if-nez v20, :cond_4c

    .line 8399
    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v44

    if-nez v44, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->startApWpsCheckPinCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    if-nez v44, :cond_4d

    .line 8400
    const-string v44, "WifiStateMachine"

    const-string v45, "Invalid pin code."

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2500c

    const/16 v46, 0xa

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 8402
    const/16 v44, 0x1

    goto/16 :goto_0

    .line 8405
    :cond_4c
    const-string v44, "WifiStateMachine"

    const-string v45, "Using pin from NFC."

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8406
    const-string v44, "nfc-pw"

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 8408
    :cond_4d
    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->ssid:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v44

    if-nez v44, :cond_4e

    .line 8409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->ssid:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->getBytes()[B

    move-result-object v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->bytesToHexString([B)Ljava/lang/String;
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$21600(Lcom/android/server/wifi/WifiStateMachine;[B)Ljava/lang/String;

    move-result-object v16

    .line 8410
    .local v16, "hexStr":Ljava/lang/String;
    if-eqz v16, :cond_50

    .line 8411
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->ssid:Ljava/lang/String;

    .line 8416
    .end local v16    # "hexStr":Ljava/lang/String;
    :cond_4e
    :goto_11
    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v44

    if-nez v44, :cond_4f

    .line 8417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->getBytes()[B

    move-result-object v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->bytesToHexString([B)Ljava/lang/String;
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$21600(Lcom/android/server/wifi/WifiStateMachine;[B)Ljava/lang/String;

    move-result-object v16

    .line 8418
    .restart local v16    # "hexStr":Ljava/lang/String;
    if-eqz v16, :cond_51

    .line 8419
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    .line 8424
    .end local v16    # "hexStr":Ljava/lang/String;
    :cond_4f
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsReg(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v43

    .line 8425
    .restart local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v45, v0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mErApPin:Ljava/lang/String;
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7402(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 8430
    :goto_13
    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v44, v0

    sget-object v45, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_53

    .line 8431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2500b

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move-object/from16 v3, v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 8432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$20900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$21700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8413
    .end local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    .restart local v16    # "hexStr":Ljava/lang/String;
    :cond_50
    const/16 v44, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->ssid:Ljava/lang/String;

    goto/16 :goto_11

    .line 8421
    :cond_51
    const/16 v44, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    goto :goto_12

    .line 8427
    .end local v16    # "hexStr":Ljava/lang/String;
    :cond_52
    new-instance v43, Landroid/net/wifi/WpsResult;

    sget-object v44, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v43 .. v44}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 8428
    .restart local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    const-string v44, "WifiStateMachine"

    const-string v45, "Invalid setup for WPS REG"

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 8434
    :cond_53
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Failed to start WPS REG with config "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2500c

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8439
    .end local v20    # "nfcPw":I
    .end local v42    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_23
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v44

    if-nez v44, :cond_54

    .line 8440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2500c

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8443
    :cond_54
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/net/wifi/WpsInfo;

    .line 8444
    .restart local v42    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "START_WPS_ER, mEnrolleeUuid:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeUuid:Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ", mEnrolleeBssid:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeBssid:Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$7200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8445
    move-object/from16 v0, v42

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v44, v0

    packed-switch v44, :pswitch_data_1

    .line 8467
    :pswitch_3
    new-instance v43, Landroid/net/wifi/WpsResult;

    sget-object v44, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v43 .. v44}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 8468
    .restart local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    const-string v44, "WifiStateMachine"

    const-string v45, "Invalid setup for WPS ER!"

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8471
    :goto_14
    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v44, v0

    sget-object v45, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_58

    .line 8472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2500b

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move-object/from16 v3, v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 8473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$20900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$21900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8478
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeUuid:Ljava/lang/String;
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7102(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 8479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeBssid:Ljava/lang/String;
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7202(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 8447
    .end local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeUuid:Ljava/lang/String;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v44

    if-nez v44, :cond_55

    .line 8448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeUuid:Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigStore;->startWpsErPbc(Ljava/lang/String;)Landroid/net/wifi/WpsResult;

    move-result-object v43

    .restart local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_14

    .line 8450
    .end local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitingForEnrollee:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsErMethod:I
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$15900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v44

    const/16 v45, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    const-wide/32 v48, 0x1d4c0

    add-long v46, v46, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mClearWaitFlagIntent:Landroid/app/PendingIntent;
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$21800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v48

    invoke-virtual/range {v44 .. v48}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 8454
    const/16 v44, 0x1

    goto/16 :goto_0

    .line 8458
    :pswitch_5
    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v44

    if-nez v44, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->startApWpsCheckPinCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    if-nez v44, :cond_57

    .line 8459
    :cond_56
    const-string v44, "WifiStateMachine"

    const-string v45, "Invalid pin code."

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2500c

    const/16 v46, 0xa

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 8461
    const/16 v44, 0x1

    goto/16 :goto_0

    .line 8463
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigStore;->startWpsErPinAny(Ljava/lang/String;)Landroid/net/wifi/WpsResult;

    move-result-object v43

    .line 8465
    .restart local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto/16 :goto_14

    .line 8475
    :cond_58
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Failed to start WPS ER with config "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2500c

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_15

    .line 8482
    .end local v42    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_24
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v44

    if-nez v44, :cond_59

    .line 8483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2500c

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8486
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v45

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    const/16 v46, 0x1

    move/from16 v0, v44

    move/from16 v1, v46

    if-ne v0, v1, :cond_5a

    const/16 v44, 0x1

    :goto_16
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->wpsNfcToken(Z)Ljava/lang/String;

    move-result-object v24

    .line 8487
    .local v24, "passwordToken":Ljava/lang/String;
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Item22: GET_WPS_PIN_AND_CONNECT, passwordToken:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8488
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v44

    if-nez v44, :cond_5c

    const-string v44, "UNKNOWN COMMAND"

    move-object/from16 v0, v24

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_5c

    .line 8489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v24

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendPinToNfcBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$22000(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigStore;->startWpsNfc()Landroid/net/wifi/WpsResult;

    move-result-object v43

    .line 8491
    .restart local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v44, v0

    sget-object v45, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_5b

    .line 8492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2500b

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move-object/from16 v3, v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 8493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$20900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$22100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8486
    .end local v24    # "passwordToken":Ljava/lang/String;
    .end local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    :cond_5a
    const/16 v44, 0x0

    goto/16 :goto_16

    .line 8495
    .restart local v24    # "passwordToken":Ljava/lang/String;
    .restart local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    :cond_5b
    const-string v44, "WifiStateMachine"

    const-string v45, "Failed to start WPS NFC!"

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2500c

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8499
    .end local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    :cond_5c
    const-string v44, "WifiStateMachine"

    const-string v45, "Failed to get password token!"

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2500c

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8504
    .end local v24    # "passwordToken":Ljava/lang/String;
    :sswitch_25
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v44

    if-nez v44, :cond_5d

    .line 8505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2502d

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8508
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v45

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    const/16 v46, 0x1

    move/from16 v0, v44

    move/from16 v1, v46

    if-ne v0, v1, :cond_5e

    const/16 v44, 0x1

    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mErApUuid:Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v45

    move/from16 v1, v44

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->wpsErNfcConfigToken(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 8509
    .local v9, "credential":Ljava/lang/String;
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Item26: GET_WPS_CRED_AND_CONNECT, credential:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8510
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v44

    if-nez v44, :cond_5f

    const-string v44, "UNKNOWN COMMAND"

    move-object/from16 v0, v44

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_5f

    .line 8511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendCredentialToNfcBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$22200(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2502e

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 8508
    .end local v9    # "credential":Ljava/lang/String;
    :cond_5e
    const/16 v44, 0x0

    goto :goto_17

    .line 8514
    .restart local v9    # "credential":Ljava/lang/String;
    :cond_5f
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Failed to get WPS credential, mErApUuid:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mErApUuid:Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2502d

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8519
    .end local v9    # "credential":Ljava/lang/String;
    :sswitch_26
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v44

    if-nez v44, :cond_60

    .line 8520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25033

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8523
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x1

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->getNfcHandoverToken(Z)Ljava/lang/String;

    move-result-object v24

    .line 8524
    .restart local v24    # "passwordToken":Ljava/lang/String;
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Item28: get requester token, passwordToken: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8525
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v44

    if-nez v44, :cond_61

    const-string v44, "UNKNOWN COMMAND"

    move-object/from16 v0, v24

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_61

    .line 8526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v24

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendRequesterActionToNfc(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$22300(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v44

    const-string v45, "wps_nfc_pubkey"

    const/16 v46, 0x0

    invoke-static/range {v44 .. v46}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 8528
    .local v18, "keyType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->wpsNfcCfgKeyType(I)Z

    .line 8529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25034

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 8531
    .end local v18    # "keyType":I
    :cond_61
    const-string v44, "WifiStateMachine"

    const-string v45, "Failed to get requester token!"

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25033

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8536
    .end local v24    # "passwordToken":Ljava/lang/String;
    :sswitch_27
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v44

    if-nez v44, :cond_62

    .line 8537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25030

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8540
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->getNfcHandoverToken(Z)Ljava/lang/String;

    move-result-object v24

    .line 8541
    .restart local v24    # "passwordToken":Ljava/lang/String;
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Item29: get selector token, passwordToken: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8542
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v44

    if-nez v44, :cond_63

    const-string v44, "UNKNOWN COMMAND"

    move-object/from16 v0, v24

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_63

    .line 8543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitingForHrToken:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$4102(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    const v45, 0x200ba

    invoke-virtual/range {v44 .. v45}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 8545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v24

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendSelectorActionToNfc(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$22400(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v44

    const-string v45, "wps_nfc_pubkey"

    const/16 v46, 0x0

    invoke-static/range {v44 .. v46}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 8547
    .restart local v18    # "keyType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->wpsNfcCfgKeyType(I)Z

    .line 8548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25031

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 8550
    .end local v18    # "keyType":I
    :cond_63
    const-string v44, "WifiStateMachine"

    const-string v45, "Failed to get selector token!"

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25030

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8555
    .end local v24    # "passwordToken":Ljava/lang/String;
    :sswitch_28
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v44

    if-nez v44, :cond_64

    .line 8556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25039

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8559
    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendReadCredRequestToNfcBroadcast()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$22500(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2503a

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 8563
    :sswitch_29
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v44

    if-nez v44, :cond_65

    .line 8564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25036

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8567
    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendReadPinRequestToNfcBroadcast()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$22600(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25037

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 8571
    :sswitch_2a
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v44

    if-eqz v44, :cond_3

    .line 8574
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    .line 8575
    .local v15, "event":Ljava/lang/String;
    const-string v44, " "

    move-object/from16 v0, v44

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v38

    .line 8576
    .local v38, "tokens":[Ljava/lang/String;
    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v44, v0

    const/16 v45, 0x3

    move/from16 v0, v44

    move/from16 v1, v45

    if-lt v0, v1, :cond_68

    .line 8577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    aget-object v45, v38, v45

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeUuid:Ljava/lang/String;
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7102(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 8578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x2

    aget-object v45, v38, v45

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeBssid:Ljava/lang/String;
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7202(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 8579
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "WPS_ER_ENROLLEE_ADD_EVENT, mEnrolleeUuid:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeUuid:Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ", mEnrolleeBssid:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeBssid:Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$7200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ", mWpsErMethod:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsErMethod:I
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$7500(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ", mWaitingForEnrollee:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitingForEnrollee:Z
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$7000(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitingForEnrollee:Z
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$7000(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v44

    if-eqz v44, :cond_3

    .line 8583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitingForEnrollee:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$15900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mClearWaitFlagIntent:Landroid/app/PendingIntent;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$21800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 8585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsErMethod:I
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$7500(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v44

    if-nez v44, :cond_66

    .line 8586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeUuid:Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigStore;->startWpsErPbc(Ljava/lang/String;)Landroid/net/wifi/WpsResult;

    move-result-object v43

    .line 8590
    .restart local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    :goto_18
    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v44, v0

    sget-object v45, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_67

    .line 8591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$20900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$22700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8595
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeUuid:Ljava/lang/String;
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7102(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 8596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeBssid:Ljava/lang/String;
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7202(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 8588
    .end local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    :cond_66
    new-instance v43, Landroid/net/wifi/WpsResult;

    sget-object v44, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v43 .. v44}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .restart local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_18

    .line 8593
    :cond_67
    const-string v44, "WifiStateMachine"

    const-string v45, "Failed to start WPS ER!"

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 8599
    .end local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    :cond_68
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "WPS_ER_ENROLLEE_ADD_EVENT format error, event:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 8603
    .end local v15    # "event":Ljava/lang/String;
    .end local v38    # "tokens":[Ljava/lang/String;
    :sswitch_2b
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v44

    if-eqz v44, :cond_3

    .line 8606
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    .line 8607
    .restart local v15    # "event":Ljava/lang/String;
    const-string v44, " "

    move-object/from16 v0, v44

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v38

    .line 8608
    .restart local v38    # "tokens":[Ljava/lang/String;
    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v44, v0

    const/16 v45, 0x3

    move/from16 v0, v44

    move/from16 v1, v45

    if-ge v0, v1, :cond_69

    .line 8609
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "WPS_ER_AP_ADD_EVENT format error, event:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 8612
    :cond_69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v44

    const-string v45, "nfc_pw"

    const/16 v46, 0x0

    invoke-static/range {v44 .. v46}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 8613
    .restart local v20    # "nfcPw":I
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "WPS_ER_AP_ADD_EVENT, erApUuid:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const/16 v46, 0x1

    aget-object v46, v38, v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ", erApBssid:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const/16 v46, 0x2

    aget-object v46, v38, v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ", mErApPin:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mErApPin:Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ", mLastBssid:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$6100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ", nfcPw:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8615
    const/16 v44, 0x1

    aget-object v44, v38, v44

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v44

    if-nez v44, :cond_3

    const/16 v44, 0x2

    aget-object v44, v38, v44

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v44

    if-nez v44, :cond_3

    const/16 v44, 0x2

    aget-object v44, v38, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$6100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_3

    .line 8616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    aget-object v45, v38, v45

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mErApUuid:Ljava/lang/String;
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7302(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 8617
    if-nez v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mErApPin:Ljava/lang/String;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v44

    if-nez v44, :cond_3

    .line 8618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mErApUuid:Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mErApPin:Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->wpsErLearn(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 8623
    .end local v15    # "event":Ljava/lang/String;
    .end local v20    # "nfcPw":I
    .end local v38    # "tokens":[Ljava/lang/String;
    :sswitch_2c
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v44

    if-eqz v44, :cond_3

    .line 8626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v45

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/lang/String;

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->wpsNfcTagRead(Ljava/lang/String;)Z

    .line 8627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mErApPin:Ljava/lang/String;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v44

    if-nez v44, :cond_6a

    .line 8628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    goto/16 :goto_1

    .line 8630
    :cond_6a
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "M_CMD_START_WPS_NFC_TAG_READ, mErApPin:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mErApPin:Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 8634
    :sswitch_2d
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v44

    if-nez v44, :cond_6b

    .line 8635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2500c

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8638
    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v45

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/lang/String;

    const/16 v46, 0x0

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->nfcRxHandoverToken(Ljava/lang/String;Z)Z

    .line 8639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigStore;->startWpsNfc()Landroid/net/wifi/WpsResult;

    move-result-object v43

    .line 8640
    .restart local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v44, v0

    sget-object v45, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_6c

    .line 8641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2500b

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move-object/from16 v3, v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 8642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$20900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$22800(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8644
    :cond_6c
    const-string v44, "WifiStateMachine"

    const-string v45, "Failed to start WPS NFC!"

    invoke-static/range {v44 .. v45}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2500c

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8649
    .end local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_2e
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v44

    if-eqz v44, :cond_3

    .line 8652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v45

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/lang/String;

    const/16 v46, 0x1

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->nfcRxHandoverToken(Ljava/lang/String;Z)Z

    .line 8653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitingForHrToken:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$4102(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 7659
    :sswitch_data_0
    .sparse-switch
        0x20034 -> :sswitch_5
        0x20035 -> :sswitch_6
        0x20036 -> :sswitch_7
        0x20037 -> :sswitch_8
        0x20038 -> :sswitch_b
        0x20039 -> :sswitch_c
        0x2003a -> :sswitch_d
        0x2003b -> :sswitch_e
        0x2003e -> :sswitch_11
        0x20049 -> :sswitch_12
        0x2004a -> :sswitch_13
        0x2004b -> :sswitch_14
        0x20062 -> :sswitch_a
        0x2008e -> :sswitch_15
        0x2008f -> :sswitch_17
        0x20091 -> :sswitch_16
        0x20092 -> :sswitch_1a
        0x200b7 -> :sswitch_2c
        0x200b8 -> :sswitch_2d
        0x200b9 -> :sswitch_2e
        0x2300c -> :sswitch_4
        0x24003 -> :sswitch_1d
        0x24004 -> :sswitch_1e
        0x24006 -> :sswitch_3
        0x24007 -> :sswitch_1
        0x2400d -> :sswitch_2
        0x2400e -> :sswitch_2
        0x2400f -> :sswitch_f
        0x24010 -> :sswitch_10
        0x2402b -> :sswitch_0
        0x24050 -> :sswitch_1f
        0x24051 -> :sswitch_20
        0x24053 -> :sswitch_2a
        0x24054 -> :sswitch_2b
        0x25001 -> :sswitch_18
        0x25004 -> :sswitch_1b
        0x25007 -> :sswitch_19
        0x2500a -> :sswitch_1c
        0x25011 -> :sswitch_9
        0x2501a -> :sswitch_21
        0x25029 -> :sswitch_22
        0x2502a -> :sswitch_23
        0x2502b -> :sswitch_24
        0x2502c -> :sswitch_25
        0x2502f -> :sswitch_27
        0x25032 -> :sswitch_26
        0x25035 -> :sswitch_29
        0x25038 -> :sswitch_28
    .end sparse-switch

    .line 8272
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 8445
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
