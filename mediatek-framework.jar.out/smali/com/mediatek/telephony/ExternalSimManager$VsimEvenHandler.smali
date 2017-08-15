.class public Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;
.super Landroid/os/Handler;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VsimEvenHandler"
.end annotation


# instance fields
.field private mHasNotifyEnableEvnetToModem:Z

.field private mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

.field private mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

.field final synthetic this$0:Lcom/mediatek/telephony/ExternalSimManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/telephony/ExternalSimManager;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 873
    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 874
    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 875
    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 876
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mHasNotifyEnableEvnetToModem:Z

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;
    .param p1, "x1"    # Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;
    .param p2, "x2"    # Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .prologue
    .line 873
    invoke-direct {p0, p1, p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setDataStream(Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;)V

    return-void
.end method

.method private dispatchCallback(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1151
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v1

    .line 1153
    .local v1, "msgId":I
    const-string v2, "ExternalSimManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VsimEvenHandler handleMessage: msgId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    sparse-switch v1, :sswitch_data_0

    .line 1250
    const-string v2, "ExternalSimManager"

    const-string v3, "VsimEvenHandler handleMessage: default"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1167
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->handleGetPlatformCapability(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    goto :goto_0

    .line 1171
    :sswitch_2
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getInt()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->handleEventRequest(ILcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    goto :goto_0

    .line 1179
    :sswitch_3
    invoke-direct {p0, v6}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    .line 1183
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    const-string v3, "gsm.external.sim.inserted"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1187
    .local v0, "inserted":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1188
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    goto :goto_0

    .line 1193
    .end local v0    # "inserted":Ljava/lang/String;
    :sswitch_4
    invoke-direct {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->getMdWaitingFlag()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1200
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1201
    invoke-direct {p0, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    goto :goto_0

    .line 1206
    :sswitch_5
    invoke-direct {p0, v6}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    .line 1209
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    const-string v3, "gsm.external.sim.inserted"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1213
    .restart local v0    # "inserted":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1214
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    goto :goto_0

    .line 1219
    .end local v0    # "inserted":Ljava/lang/String;
    :sswitch_6
    invoke-direct {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->getMdWaitingFlag()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1226
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1227
    invoke-direct {p0, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    goto :goto_0

    .line 1233
    :sswitch_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    const-string v3, "gsm.external.sim.inserted"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1237
    .restart local v0    # "inserted":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1238
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    goto/16 :goto_0

    .line 1243
    .end local v0    # "inserted":Ljava/lang/String;
    :sswitch_8
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    goto/16 :goto_0

    .line 1247
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->handleServiceStateRequest(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    goto/16 :goto_0

    .line 1155
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_6
        0x5 -> :sswitch_4
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_0
        0x3eb -> :sswitch_0
        0x3ec -> :sswitch_5
        0x3ed -> :sswitch_3
        0x3ee -> :sswitch_7
    .end sparse-switch
.end method

.method private getMdWaitingFlag()Z
    .locals 3

    .prologue
    .line 895
    const-string v0, "ExternalSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMdWaitingFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/ExternalSimManager;->isMdWaitingResponse:Z
    invoke-static {v2}, Lcom/mediatek/telephony/ExternalSimManager;->access$300(Lcom/mediatek/telephony/ExternalSimManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/ExternalSimManager;->isMdWaitingResponse:Z
    invoke-static {v0}, Lcom/mediatek/telephony/ExternalSimManager;->access$300(Lcom/mediatek/telephony/ExternalSimManager;)Z

    move-result v0

    return v0
.end method

.method private handleEventRequest(ILcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 13
    .param p1, "type"    # I
    .param p2, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 900
    const-string v8, "ExternalSimManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VsimEvenHandler eventHandlerByType: type["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] start"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    invoke-virtual {p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v5

    .line 905
    .local v5, "slotId":I
    invoke-virtual {p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getInt()I

    move-result v4

    .line 907
    .local v4, "simType":I
    const/4 v3, 0x0

    .line 909
    .local v3, "result":I
    const-string v8, "ExternalSimManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VsimEvenHandler First slotId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", simType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    packed-switch p1, :pswitch_data_0

    .line 1012
    :goto_0
    new-instance v1, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    invoke-virtual {p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v8

    const/16 v9, 0x3eb

    invoke-virtual {p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v10

    invoke-direct {v1, v8, v9, v10}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 1015
    .local v1, "eventResponse":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    invoke-virtual {v1, v3}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1016
    iget-object v8, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v8, v1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1018
    const-string v8, "ExternalSimManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VsimEvenHandler eventHandlerByType: type["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] end"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    return-void

    .line 914
    .end local v1    # "eventResponse":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/SubscriptionController;->isReady()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 915
    const/4 v3, 0x0

    .line 921
    :goto_1
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v6

    .line 922
    .local v6, "subId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 924
    .local v0, "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    if-eq v4, v12, :cond_0

    .line 925
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V

    .line 927
    const-string v8, "ExternalSimManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VsimEvenHandler set default data to subId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v8, "gsm.external.sim.enabled"

    const-string v9, "1"

    invoke-static {v5, v8, v9}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 917
    .end local v0    # "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    .end local v6    # "subId":I
    :cond_1
    const/4 v3, -0x2

    goto :goto_1

    .line 936
    :pswitch_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v8, "gsm.external.sim.enabled"

    const-string v9, "0"

    invoke-static {v5, v8, v9}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 938
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v8, "gsm.external.sim.inserted"

    const-string v9, "0"

    invoke-static {v5, v8, v9}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 944
    iget-object v8, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v8, p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 948
    invoke-direct {p0, v11}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    goto/16 :goto_0

    .line 953
    :pswitch_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v8, "gsm.external.sim.inserted"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v8, v9}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 956
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v8, "persist.radio.external.sim"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v8, v9}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 960
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 961
    .restart local v0    # "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v2

    .line 964
    .local v2, "mCPhoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 965
    const/16 v8, 0xa

    if-ne v2, v8, :cond_2

    .line 966
    const/4 v2, 0x0

    .line 968
    :cond_2
    const/16 v8, 0xb

    if-ne v2, v8, :cond_3

    .line 969
    const/4 v2, 0x1

    .line 974
    :cond_3
    if-ne v5, v2, :cond_4

    .line 976
    const-string v8, "ExternalSimManager"

    const-string v9, "VsimEvenHandler no need to do capablity switch"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v8, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v8, p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    goto/16 :goto_0

    .line 980
    :cond_4
    const-string v8, "ExternalSimManager"

    const-string v9, "VsimEvenHandler need to do capablity switch"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/SubscriptionController;->isReady()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 983
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v6

    .line 985
    .restart local v6    # "subId":I
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubIdWithResult(I)Z

    move-result v7

    .line 987
    .local v7, "success":Z
    if-ne v7, v12, :cond_5

    .line 988
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 990
    :cond_5
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 993
    .end local v6    # "subId":I
    .end local v7    # "success":Z
    :cond_6
    const/4 v3, -0x2

    .line 996
    goto/16 :goto_0

    .line 1000
    .end local v0    # "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    .end local v2    # "mCPhoneId":I
    :pswitch_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v8, "gsm.external.sim.inserted"

    const-string v9, "0"

    invoke-static {v5, v8, v9}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-object v8, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v8, p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1007
    invoke-direct {p0, v11}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    goto/16 :goto_0

    .line 911
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private handleGetPlatformCapability(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 14
    .param p1, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1022
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getInt()I

    move-result v2

    .line 1023
    .local v2, "eventId":I
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getInt()I

    move-result v8

    .line 1025
    .local v8, "simType":I
    new-instance v6, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v9

    const/16 v10, 0x3ea

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v11

    invoke-direct {v6, v9, v10, v11}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 1030
    .local v6, "response":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/SubscriptionController;->isReady()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1031
    invoke-virtual {v6, v12}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1037
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v1

    .line 1038
    .local v1, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    sget-object v9, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v1, v9, :cond_1

    .line 1039
    invoke-virtual {v6, v13}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1049
    :goto_1
    const-string v9, "ro.mtk_external_sim_support"

    invoke-static {v9, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1055
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v7

    .line 1057
    .local v7, "simCount":I
    const-string v9, "ExternalSimManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleGetPlatformCapability simType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", simCount: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    if-ne v8, v13, :cond_4

    .line 1061
    shl-int v9, v13, v7

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1101
    :goto_2
    iget-object v9, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v9, v6}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1102
    return-void

    .line 1033
    .end local v1    # "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    .end local v7    # "simCount":I
    :cond_0
    const/4 v9, -0x2

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_0

    .line 1040
    .restart local v1    # "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    :cond_1
    sget-object v9, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v1, v9, :cond_2

    .line 1041
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_1

    .line 1042
    :cond_2
    sget-object v9, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v1, v9, :cond_3

    .line 1043
    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_1

    .line 1045
    :cond_3
    invoke-virtual {v6, v12}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_1

    .line 1063
    .restart local v7    # "simCount":I
    :cond_4
    sget-object v9, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v1, v9, :cond_b

    .line 1064
    const/4 v4, 0x0

    .line 1065
    .local v4, "isCdmaCard":I
    const/4 v5, 0x0

    .line 1067
    .local v5, "isHasCard":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v7, :cond_8

    .line 1068
    sget-object v9, Lcom/mediatek/telephony/ExternalSimManager;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v9, v9, v3

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1069
    .local v0, "cardType":Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1070
    shl-int v9, v13, v3

    or-int/2addr v5, v9

    .line 1073
    :cond_5
    const-string v9, "CSIM"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "RUIM"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "UIM"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1075
    :cond_6
    shl-int v9, v13, v3

    or-int/2addr v4, v9

    .line 1067
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1079
    .end local v0    # "cardType":Ljava/lang/String;
    :cond_8
    const-string v9, "ExternalSimManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleGetPlatformCapability isCdmaCard: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isHasCard: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    if-nez v5, :cond_9

    .line 1084
    invoke-virtual {v6, v12}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto/16 :goto_2

    .line 1085
    :cond_9
    if-nez v4, :cond_a

    .line 1087
    invoke-virtual {v6, v12}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto/16 :goto_2

    .line 1090
    :cond_a
    shl-int v9, v13, v7

    add-int/lit8 v9, v9, -0x1

    xor-int/2addr v9, v4

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto/16 :goto_2

    .line 1096
    .end local v3    # "i":I
    .end local v4    # "isCdmaCard":I
    .end local v5    # "isHasCard":I
    :cond_b
    invoke-virtual {v6, v12}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto/16 :goto_2
.end method

.method private handleServiceStateRequest(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    .line 1105
    const/4 v2, 0x0

    .line 1106
    .local v2, "result":I
    const/4 v3, -0x1

    .line 1107
    .local v3, "voiceRejectCause":I
    const/4 v0, -0x1

    .line 1109
    .local v0, "dataRejectCause":I
    new-instance v1, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v4

    const/16 v5, 0x3ef

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v6

    invoke-direct {v1, v4, v5, v6}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 1139
    .local v1, "response":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    invoke-virtual {v1, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1141
    invoke-virtual {v1, v3}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1143
    invoke-virtual {v1, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1145
    iget-object v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v4, v1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1146
    return-void
.end method

.method private setDataStream(Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;)V
    .locals 2
    .param p1, "vsimAdpatorIo"    # Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;
    .param p2, "vsimRilIo"    # Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .prologue
    .line 884
    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 885
    iput-object p2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 886
    const-string v0, "ExternalSimManager"

    const-string v1, "VsimEvenHandler setDataStream done."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    return-void
.end method

.method private setMdWaitingFlag(Z)V
    .locals 3
    .param p1, "isWaiting"    # Z

    .prologue
    .line 890
    const-string v0, "ExternalSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMdWaitingFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    # setter for: Lcom/mediatek/telephony/ExternalSimManager;->isMdWaitingResponse:Z
    invoke-static {v0, p1}, Lcom/mediatek/telephony/ExternalSimManager;->access$302(Lcom/mediatek/telephony/ExternalSimManager;Z)Z

    .line 892
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 880
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->dispatchCallback(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    .line 881
    return-void
.end method
