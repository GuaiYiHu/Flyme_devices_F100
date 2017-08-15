.class Lcom/mediatek/rns/RnsServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "RnsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/rns/RnsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/rns/RnsServiceImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "action":Ljava/lang/String;
    const-string v20, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 182
    const-string v20, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkInfo;

    .line 184
    .local v9, "networkInfo":Landroid/net/NetworkInfo;
    monitor-enter p0

    .line 185
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v21, v0

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v20

    if-nez v20, :cond_0

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    sget-object v22, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2

    :cond_0
    const/16 v20, 0x1

    :goto_0
    move-object/from16 v0, v21

    move/from16 v1, v20

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z
    invoke-static {v0, v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$002(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 187
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    const-string v20, "RnsServiceImpl"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onReceive: NETWORK_STATE_CHANGED_ACTION connected = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z
    invoke-static/range {v22 .. v22}, Lcom/mediatek/rns/RnsServiceImpl;->access$000(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$000(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    const/16 v21, -0x7f

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I
    invoke-static/range {v20 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$102(Lcom/mediatek/rns/RnsServiceImpl;I)I

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static/range {v21 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v21

    const/16 v22, 0x64

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 319
    .end local v9    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    :goto_1
    return-void

    .line 185
    .restart local v9    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_2
    const/16 v20, 0x0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v20

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v20

    .line 194
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static/range {v21 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v21

    const/16 v22, 0x2710

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 197
    .end local v9    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 198
    const-string v20, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 199
    .local v15, "stateExtra":Ljava/lang/String;
    const-string v20, "LOADED"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 200
    const-string v20, "slot"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 201
    .local v14, "slotId":I
    const/16 v16, 0x0

    .line 202
    .local v16, "subId":I
    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v17

    .line 203
    .local v17, "subIds":[I
    if-eqz v17, :cond_5

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 204
    const/16 v20, 0x0

    aget v16, v17, v20

    .line 206
    :cond_5
    const-string v20, "RnsServiceImpl"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onReceive: SIM_STATE_CHANGED = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static/range {v16 .. v16}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v12

    .line 208
    .local v12, "phoneId":I
    const-string v20, "RnsServiceImpl"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Main Capability: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v22, v0

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->getMainCapabilitySlotId()I
    invoke-static/range {v22 .. v22}, Lcom/mediatek/rns/RnsServiceImpl;->access$300(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->getMainCapabilitySlotId()I
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$300(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v20

    move/from16 v0, v20

    if-ne v0, v12, :cond_1

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mPhoneId:I
    invoke-static {v0, v12}, Lcom/mediatek/rns/RnsServiceImpl;->access$402(Lcom/mediatek/rns/RnsServiceImpl;I)I

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v21

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I
    invoke-static/range {v20 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$502(Lcom/mediatek/rns/RnsServiceImpl;I)I

    .line 213
    const-string v20, "RnsServiceImpl"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "UpdateDefaultSubId: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I
    invoke-static/range {v22 .. v22}, Lcom/mediatek/rns/RnsServiceImpl;->access$500(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v7, Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I
    invoke-static/range {v22 .. v22}, Lcom/mediatek/rns/RnsServiceImpl;->access$500(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v7, v0, v1, v2}, Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;-><init>(Lcom/mediatek/rns/RnsServiceImpl;II)V

    .line 216
    .local v7, "mPhoneStateListener":Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$600(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/TelephonyManager;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v7, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 218
    new-instance v6, Lcom/mediatek/rns/RnsServiceImpl$MPhoneSignalListner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I
    invoke-static/range {v22 .. v22}, Lcom/mediatek/rns/RnsServiceImpl;->access$500(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v6, v0, v1, v2}, Lcom/mediatek/rns/RnsServiceImpl$MPhoneSignalListner;-><init>(Lcom/mediatek/rns/RnsServiceImpl;II)V

    .line 220
    .local v6, "mPhoneSignalListner":Lcom/mediatek/rns/RnsServiceImpl$MPhoneSignalListner;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$600(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/TelephonyManager;

    move-result-object v20

    const/16 v21, 0x100

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 222
    new-instance v5, Lcom/mediatek/rns/RnsServiceImpl$MPhoneCallListner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I
    invoke-static/range {v22 .. v22}, Lcom/mediatek/rns/RnsServiceImpl;->access$500(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v5, v0, v1, v2}, Lcom/mediatek/rns/RnsServiceImpl$MPhoneCallListner;-><init>(Lcom/mediatek/rns/RnsServiceImpl;II)V

    .line 224
    .local v5, "mPhoneCallListner":Lcom/mediatek/rns/RnsServiceImpl$MPhoneCallListner;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$600(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/TelephonyManager;

    move-result-object v20

    const/16 v21, 0x20

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_1

    .line 228
    .end local v5    # "mPhoneCallListner":Lcom/mediatek/rns/RnsServiceImpl$MPhoneCallListner;
    .end local v6    # "mPhoneSignalListner":Lcom/mediatek/rns/RnsServiceImpl$MPhoneSignalListner;
    .end local v7    # "mPhoneStateListener":Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;
    .end local v12    # "phoneId":I
    .end local v14    # "slotId":I
    .end local v15    # "stateExtra":Ljava/lang/String;
    .end local v16    # "subId":I
    .end local v17    # "subIds":[I
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 231
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$600(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/TelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v11

    .line 232
    .local v11, "phoneCount":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v11, v0, :cond_1

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->getMainCapabilitySlotId()I
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$300(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v8

    .line 235
    .local v8, "mSubId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v21

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mPhoneId:I
    invoke-static/range {v20 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$402(Lcom/mediatek/rns/RnsServiceImpl;I)I

    .line 236
    new-instance v7, Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v7, v0, v1, v8}, Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;-><init>(Lcom/mediatek/rns/RnsServiceImpl;II)V

    .line 238
    .restart local v7    # "mPhoneStateListener":Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$600(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/TelephonyManager;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v7, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 240
    new-instance v6, Lcom/mediatek/rns/RnsServiceImpl$MPhoneSignalListner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v6, v0, v1, v8}, Lcom/mediatek/rns/RnsServiceImpl$MPhoneSignalListner;-><init>(Lcom/mediatek/rns/RnsServiceImpl;II)V

    .line 242
    .restart local v6    # "mPhoneSignalListner":Lcom/mediatek/rns/RnsServiceImpl$MPhoneSignalListner;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$600(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/TelephonyManager;

    move-result-object v20

    const/16 v21, 0x100

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 244
    new-instance v5, Lcom/mediatek/rns/RnsServiceImpl$MPhoneCallListner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v5, v0, v1, v8}, Lcom/mediatek/rns/RnsServiceImpl$MPhoneCallListner;-><init>(Lcom/mediatek/rns/RnsServiceImpl;II)V

    .line 246
    .restart local v5    # "mPhoneCallListner":Lcom/mediatek/rns/RnsServiceImpl$MPhoneCallListner;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$600(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/TelephonyManager;

    move-result-object v20

    const/16 v21, 0x20

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_1

    .line 249
    .end local v5    # "mPhoneCallListner":Lcom/mediatek/rns/RnsServiceImpl$MPhoneCallListner;
    .end local v6    # "mPhoneSignalListner":Lcom/mediatek/rns/RnsServiceImpl$MPhoneSignalListner;
    .end local v7    # "mPhoneStateListener":Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;
    .end local v8    # "mSubId":I
    .end local v11    # "phoneCount":I
    :cond_8
    const-string v20, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 250
    monitor-enter p0

    .line 251
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v21, v0

    const-string v20, "wifi_state"

    const/16 v22, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    const/16 v20, 0x1

    :goto_2
    move-object/from16 v0, v21

    move/from16 v1, v20

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z
    invoke-static {v0, v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$702(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 254
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 255
    const-string v20, "RnsServiceImpl"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onReceive: WIFI_STATE_CHANGED_ACTION enable = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z
    invoke-static/range {v22 .. v22}, Lcom/mediatek/rns/RnsServiceImpl;->access$700(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static/range {v21 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v21

    const/16 v22, 0x2710

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 251
    :cond_9
    const/16 v20, 0x0

    goto :goto_2

    .line 254
    :catchall_1
    move-exception v20

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v20

    .line 257
    :cond_a
    const-string v20, "android.net.wifi.RSSI_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 258
    const-string v20, "newRssi"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 259
    .local v13, "rssi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static/range {v21 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v13, v2}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 260
    .end local v13    # "rssi":I
    :cond_b
    const-string v20, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 261
    const-string v20, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkInfo;

    .line 263
    .restart local v9    # "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v9, :cond_1

    .line 264
    const-string v20, "RnsServiceImpl"

    const-string v21, "onReceive: CONNECTIVITY_ACTION_IMMEDIATE"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    .line 266
    .local v10, "nwType":I
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v19

    .line 267
    .local v19, "typename":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v18

    .line 268
    .local v18, "subtypename":Ljava/lang/String;
    const-string v20, "RnsServiceImpl"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "nwType:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " typename = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " subtypename = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v20, "MOBILE_IMS"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v21

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z
    invoke-static/range {v20 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$802(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$800(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->handleDefaultPdnRequest()V
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$900(Lcom/mediatek/rns/RnsServiceImpl;)V

    .line 289
    :cond_c
    :goto_3
    const-string v20, "RnsServiceImpl"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isLteImsConnected = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z
    invoke-static/range {v22 .. v22}, Lcom/mediatek/rns/RnsServiceImpl;->access$800(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " isEpdgImsConnected = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z
    invoke-static/range {v22 .. v22}, Lcom/mediatek/rns/RnsServiceImpl;->access$1000(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 275
    :cond_d
    const-string v20, "Wi-Fi"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    const-string v20, "IMS"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v21

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z
    invoke-static/range {v20 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$1002(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsEpdgConnectionChanged:Z
    invoke-static/range {v20 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$1102(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->needToSendAlertWarning()Z
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$1200(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 279
    const-string v20, "RnsServiceImpl"

    const-string v21, "send Rove Out Alert warning for connection update"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->sendRoveOutAlert()V
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$1300(Lcom/mediatek/rns/RnsServiceImpl;)V

    .line 282
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$1000(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v20

    if-nez v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$1400(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z
    invoke-static/range {v20 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$1402(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 284
    const-string v20, "RnsServiceImpl"

    const-string v21, "Epdg is disconnected & disable wifi"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$1600(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/net/wifi/WifiManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mWifiDisableFlag:I
    invoke-static/range {v21 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$1500(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/net/wifi/WifiManager;->setWifiDisabledByEpdg(I)Z

    .line 287
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsEpdgConnectionChanged:Z
    invoke-static/range {v20 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$1102(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    goto/16 :goto_3

    .line 292
    .end local v9    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v10    # "nwType":I
    .end local v18    # "subtypename":Ljava/lang/String;
    .end local v19    # "typename":Ljava/lang/String;
    :cond_10
    const-string v20, "android.net.conn.CONNECTIVITY_ACTION_HANDOVER_END"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 296
    const-string v20, "RnsServiceImpl"

    const-string v21, "Reset RNS state for handover is end"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$1700(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mState:I
    invoke-static/range {v20 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$1802(Lcom/mediatek/rns/RnsServiceImpl;I)I

    goto/16 :goto_1

    .line 300
    :cond_11
    const-string v20, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 301
    monitor-enter p0

    .line 302
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$1900(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "volte_vt_enabled"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z
    invoke-static/range {v20 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$2002(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 308
    :goto_4
    const-string v20, "RnsServiceImpl"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Boot Completed mIsImsOverLteEnabled = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z
    invoke-static/range {v22 .. v22}, Lcom/mediatek/rns/RnsServiceImpl;->access$2000(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 312
    :try_start_5
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static/range {v21 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v21

    const/16 v22, 0x3e9

    const/16 v23, 0x0

    new-instance v24, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v26, "RnsServiceImpl"

    const/16 v27, 0x1

    invoke-direct/range {v24 .. v27}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Ljava/lang/String;Z)V

    invoke-virtual/range {v20 .. v24}, Lcom/android/internal/telephony/dataconnection/DctController;->registerForDcSwitchStateChange(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 315
    :catch_0
    move-exception v4

    .line 316
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v20, "RnsServiceImpl"

    const-string v21, "DctController is not ready"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 306
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_12
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z
    invoke-static/range {v20 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$2002(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    goto :goto_4

    .line 310
    :catchall_2
    move-exception v20

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v20
.end method
