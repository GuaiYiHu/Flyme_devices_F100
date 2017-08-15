.class Lcom/mediatek/internal/telephony/ImsSwitchController$2;
.super Landroid/content/BroadcastReceiver;
.source "ImsSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ImsSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 379
    if-nez p2, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "action":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIntentReceiver Receive action "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$100(Ljava/lang/String;)V

    .line 383
    const-string v6, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 384
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->confirmPreCheckDetachIfNeed()V
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$800(Lcom/mediatek/internal/telephony/ImsSwitchController;)V

    .line 385
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # setter for: Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z
    invoke-static {v6, v9}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$902(Lcom/mediatek/internal/telephony/ImsSwitchController;Z)Z

    goto :goto_0

    .line 386
    :cond_2
    const-string v6, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 387
    const-string v6, "state"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 388
    .local v4, "state":Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    const-string v6, "phone"

    const/4 v8, -0x1

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v6, "phoneType"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-class v6, Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-static {v6, v4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneConstants$State;

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->onReceivePhoneStateChange(IILcom/android/internal/telephony/PhoneConstants$State;)V
    invoke-static {v7, v8, v9, v6}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$1000(Lcom/mediatek/internal/telephony/ImsSwitchController;IILcom/android/internal/telephony/PhoneConstants$State;)V

    goto :goto_0

    .line 392
    .end local v4    # "state":Ljava/lang/String;
    :cond_3
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 393
    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 395
    .local v5, "wifiState":I
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->onReceiveWifiStateChange(I)V
    invoke-static {v6, v5}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$1100(Lcom/mediatek/internal/telephony/ImsSwitchController;I)V

    goto :goto_0

    .line 396
    .end local v5    # "wifiState":I
    :cond_4
    const-string v6, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 398
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoLTEEnable()Z
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$200(Lcom/mediatek/internal/telephony/ImsSwitchController;)Z

    move-result v2

    .line 399
    .local v2, "isVoLTEEnable":Z
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoWiFiEnable()Z
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$300(Lcom/mediatek/internal/telephony/ImsSwitchController;)Z

    move-result v3

    .line 401
    .local v3, "isVoWiFiEnable":Z
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v6

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DctController;->getDcSwitchState(I)Ljava/lang/String;

    move-result-object v4

    .line 403
    .restart local v4    # "state":Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # getter for: Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$000(Lcom/mediatek/internal/telephony/ImsSwitchController;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "volte_vt_enabled"

    invoke-static {}, Lcom/android/ims/ImsConfig$FeatureValueConstants;->getVolteAvailable()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 409
    .local v1, "imsSetting":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handle ACTION_SET_RADIO_CAPABILITY_DONE: data state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isVoLTEEnable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isVoWiFiEnable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$100(Ljava/lang/String;)V

    .line 412
    if-nez v2, :cond_5

    if-eqz v3, :cond_0

    :cond_5
    const-string v6, "attaching"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "attached"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 415
    :cond_6
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    const/4 v7, 0x1

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v8

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V
    invoke-static {v6, v7, v8}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$400(Lcom/mediatek/internal/telephony/ImsSwitchController;ZI)V

    goto/16 :goto_0

    .line 418
    .end local v1    # "imsSetting":I
    .end local v2    # "isVoLTEEnable":Z
    .end local v3    # "isVoWiFiEnable":Z
    .end local v4    # "state":Ljava/lang/String;
    :cond_7
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 419
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    const/4 v8, 0x6

    invoke-virtual {v7, v8, p2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/internal/telephony/ImsSwitchController;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
