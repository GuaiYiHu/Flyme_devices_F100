.class Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;
.super Landroid/content/BroadcastReceiver;
.source "DataSubSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "action":Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive: action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 104
    const-string v6, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 105
    const-string v6, "simDetectStatus"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 107
    .local v1, "detectedType":I
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DataSubSelector detectedType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCT6MSupport()Z

    move-result v6

    if-nez v6, :cond_0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 113
    :cond_0
    if-ne v1, v11, :cond_1

    .line 114
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsSubReady:Z
    invoke-static {v6, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$202(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 115
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapabilityIfNeeded(Landroid/content/Intent;)V
    invoke-static {v6, p2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    .line 180
    .end local v1    # "detectedType":I
    :cond_1
    :goto_0
    return-void

    .line 120
    .restart local v1    # "detectedType":I
    :cond_2
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z
    invoke-static {v6, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$402(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 121
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->onSubInfoReady(Landroid/content/Intent;)V
    invoke-static {v6, p2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$500(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_0

    .line 123
    .end local v1    # "detectedType":I
    :cond_3
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 124
    const-string v6, "ss"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "simStatus":Ljava/lang/String;
    const-string v6, "slot"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 126
    .local v5, "slotId":I
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "slotId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " simStatus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mIsNeedWaitImsi: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z
    invoke-static {v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$400(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mIsNeedWaitUnlock: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z
    invoke-static {v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$600(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCT6MSupport()Z

    move-result v6

    if-nez v6, :cond_4

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 130
    :cond_4
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string v7, "onReceive: SIM state change, setCapabilityIfNeeded"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 131
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsSubReady:Z
    invoke-static {v6, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$202(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 132
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapabilityIfNeeded(Landroid/content/Intent;)V
    invoke-static {v6, p2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    .line 134
    :cond_5
    const-string v6, "IMSI"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 135
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$400(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v6

    if-ne v6, v9, :cond_6

    .line 136
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string v7, "get imsi and need to check op01 again"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 137
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z
    invoke-static {v6, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$402(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 138
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp01CapSwitch()Z
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 139
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z
    invoke-static {v6, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$402(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    goto/16 :goto_0

    .line 141
    :cond_6
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$600(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v6

    if-ne v6, v9, :cond_1

    .line 142
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string v7, "get imsi because unlock"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 144
    const-string v6, "phoneEx"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v3

    .line 147
    .local v3, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :try_start_0
    invoke-interface {v3}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isCapabilitySwitching()Z

    move-result v6

    if-nez v6, :cond_1

    .line 150
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v7, 0x0

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$602(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 151
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp01CapSwitch()Z
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 153
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 158
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .end local v4    # "simStatus":Ljava/lang/String;
    .end local v5    # "slotId":I
    :cond_7
    const-string v6, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 160
    :cond_8
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$600(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v6

    if-ne v6, v9, :cond_1

    .line 161
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z
    invoke-static {v6, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$602(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 162
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp01CapSwitch()Z
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    goto/16 :goto_0

    .line 164
    :cond_9
    const-string v6, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 165
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string v7, "ACTION_RADIO_TECHNOLOGY_CHANGED"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 166
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForSvlte(Landroid/content/Intent;)V
    invoke-static {v6, p2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$800(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 169
    :cond_a
    const-string v6, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 170
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string v7, "ACTION_SET_RADIO_TECHNOLOGY_DONE"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCT6MSupport()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 172
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mRadioTechDone:Z
    invoke-static {v6, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$902(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 173
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapabilityIfNeeded(Landroid/content/Intent;)V
    invoke-static {v6, p2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 174
    :cond_b
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 175
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mRadioTechDone:Z
    invoke-static {v6, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$902(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 176
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForSvlte(Landroid/content/Intent;)V
    invoke-static {v6, p2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$800(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
