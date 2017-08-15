.class public Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "CdmaSMSDispatcher.java"


# static fields
.field private static final EVENT_CDMA_CARD_INITIAL_ESN_OR_MEID:I = 0x7d7

.field private static final EVENT_CDMA_SMS_DISPATCHER_BASE:I = 0x7d0

.field private static final EVENT_ICC_CHANGED:I = 0x7d1

.field private static final EVENT_QUERY_CDMA_MODEM_SMS_INIT_STATE:I = 0x7d5

.field private static final EVENT_QUERY_CDMA_MODEM_SMS_INIT_STATE_DONE:I = 0x7d6

.field private static final EVENT_QUERY_CDMA_NETWORK_REGISTER_STATE:I = 0x7d3

.field private static final EVENT_QUERY_CDMA_NETWORK_REGISTER_STATE_DONE:I = 0x7d4

.field private static final EVENT_RUIM_READY:I = 0x7d2

.field private static final QUERY_SMS_REGISTER_FEASIBILITY_DELAY_MILLISECONDS:I = 0x2710

.field private static final QUERY_SMS_REGISTER_FEASIBILITY_MAX_RETRY_TIMES:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CdmaSMSDispatcher"

.field private static final VDBG:Z = true


# instance fields
.field private mCdmaModemSmsInitDone:Z

.field private mCdmaNetworkRegistered:Z

.field private mQueryCDMASmsRegisterFeasibilityTimes:I

.field private mSmsRegisterFeasibilityQuerying:Z

.field private mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;
    .param p3, "imsSMSDispatcher"    # Lcom/android/internal/telephony/ImsSMSDispatcher;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    .line 93
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 94
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 113
    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 114
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    .line 116
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaNetworkRegistered:Z

    .line 117
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaModemSmsInitDone:Z

    .line 125
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "CdmaSMSDispatcher created"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v1, 0x7d1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 132
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "viacode, mUiccController != null, register for icc change successly for CDMA"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x7d7

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCDMACardInitalEsnMeid(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 144
    return-void

    .line 134
    :cond_0
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "viacode, is not CDMA phone, dont do CT sms register work"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_1
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "viacode, mUiccController = null, cant register for icc change"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyCdmaSmsAutoRegisterBeFeasible()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 148
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaNetworkRegistered:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaModemSmsInitDone:Z

    if-nez v3, :cond_1

    .line 149
    :cond_0
    const-string v3, "CdmaSMSDispatcher"

    const-string v4, "viacode, notifyCdmaSmsAutoRegisterBeFeasible failed for not both true"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v3, "CdmaSMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "viacode, mCdmaNetworkRegistered = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaNetworkRegistered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , mCdmaModemSmsInitDone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaModemSmsInitDone:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    return-void

    .line 154
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.CDMA_AUTO_SMS_REGISTER_FEASIBLE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 160
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v3, "CDMASMSDispatcher"

    invoke-virtual {v1, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 161
    .local v2, "wakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 162
    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 163
    const-string v3, "rTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 164
    const-string v3, "subscription"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSubId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 166
    const-string v3, "CdmaSMSDispatcher"

    const-string v4, "viacode, app can do auto sms register work now"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    goto :goto_0
.end method

.method private onUpdateIccAvailability()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 172
    const-string v2, "CdmaSMSDispatcher"

    const-string v3, "viacode, CdmaSMSDispatcher received EVENT_ICC_CHANGED"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v2, :cond_1

    .line 174
    const-string v2, "CdmaSMSDispatcher"

    const-string v3, "viacode, but mUiccController == null, cant do nothing"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->getExternalModemSlot()I

    move-result v1

    .line 179
    .local v1, "slotId":I
    const-string v2, "CdmaSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CdmaSMSDispatcher received EVENT_ICC_CHANGED, slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 183
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v2, v0, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_2

    .line 185
    const-string v2, "CdmaSMSDispatcher"

    const-string v3, "viacode, Removing stale icc objects, mUiccApplcation have changed!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 187
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 189
    :cond_2
    if-eqz v0, :cond_0

    .line 190
    const-string v2, "CdmaSMSDispatcher"

    const-string v3, "viacode, New card found!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 192
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v3, 0x7d2

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 193
    const-string v2, "CdmaSMSDispatcher"

    const-string v3, "viacode, register for EVENT_RUIM_READY successly"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z

    .prologue
    .line 443
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .locals 9
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p4, "status"    # I
    .param p5, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .prologue
    .local p3, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 645
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "CDMASMSDispatcher: copy text message to icc card"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSuccess:Z

    .line 656
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    .line 660
    .local v2, "msgCount":I
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "[copyText storage available"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    if-eq p4, v5, :cond_0

    const/4 v4, 0x3

    if-ne p4, v4, :cond_1

    .line 667
    :cond_0
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "[copyText to encode deliver pdu"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :goto_0
    const-string v4, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[copyText msgCount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    if-le v2, v5, :cond_4

    .line 677
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "[copyText multi-part message"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_8

    .line 686
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSuccess:Z

    if-nez v4, :cond_6

    .line 687
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "[copyText Exception happened when copy message"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 719
    .end local v1    # "i":I
    :goto_3
    return v4

    .line 668
    :cond_1
    const/4 v4, 0x5

    if-eq p4, v4, :cond_2

    const/4 v4, 0x7

    if-ne p4, v4, :cond_3

    .line 669
    :cond_2
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "[copyText to encode submit pdu"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 671
    :cond_3
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "[copyText invalid status, default is deliver pdu"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 672
    goto :goto_3

    .line 678
    :cond_4
    if-ne v2, v5, :cond_5

    .line 679
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "[copyText single-part message"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 681
    :cond_5
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "[copyText invalid message count"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 682
    goto :goto_3

    .line 691
    .restart local v1    # "i":I
    :cond_6
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p2, v4, p5, p6}, Lcom/android/internal/telephony/cdma/SmsMessage;->createEfPdu(Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    .line 693
    .local v3, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v3, :cond_7

    .line 694
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "[copyText write submit pdu into UIM"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, v3, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x6a

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v4, p4, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V

    .line 701
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 703
    :try_start_0
    const-string v4, "CdmaSMSDispatcher"

    const-string v7, "[copyText wait until the message be wrote in UIM"

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "[copyText thread is waked up"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    move v4, v5

    .line 698
    goto :goto_3

    .line 705
    :catch_0
    move-exception v0

    .line 706
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "CdmaSMSDispatcher"

    const-string v7, "[copyText interrupted while trying to copy text message into UIM"

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    monitor-exit v6

    move v4, v5

    goto :goto_3

    .line 709
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 713
    .end local v3    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_8
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSuccess:Z

    if-ne v4, v5, :cond_9

    .line 714
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "[copyText all messages have been copied into UIM"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 718
    :cond_9
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "[copyText copy failed"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 719
    goto/16 :goto_3
.end method

.method protected createMessageFromSubmitPdu([B[B)Landroid/telephony/SmsMessage;
    .locals 3
    .param p1, "smsc"    # [B
    .param p2, "tpdu"    # [B

    .prologue
    .line 1092
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->getSmsInterfaces()Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    move-result-object v0

    .line 1093
    .local v0, "mSmsInterfaces":Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;
    if-nez v0, :cond_0

    .line 1094
    const-string v1, "CdmaSMSDispatcher"

    const-string v2, "createMessageFromSubmitPdu, mSmsInterfaces = null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    const/4 v1, 0x0

    .line 1097
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p2}, Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;->convertSubmitpduToPdu([B)[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v1

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 327
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 329
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "CdmaSMSDispatcher dispose"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/16 v0, 0x7d3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->removeMessages(I)V

    .line 331
    const/16 v0, 0x7d5

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->removeMessages(I)V

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 340
    :cond_1
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    const-string v0, "3gpp2"

    return-object v0
.end method

.method protected getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 19
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p10, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p11, "messageUri"    # Landroid/net/Uri;
    .param p12, "fullMessageText"    # Ljava/lang/String;

    .prologue
    .line 453
    new-instance v18, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 454
    .local v18, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 455
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 456
    const/4 v5, 0x1

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 458
    const/4 v5, 0x2

    move-object/from16 v0, v18

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 464
    :goto_0
    const/4 v5, 0x1

    move-object/from16 v0, v18

    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 465
    const-string v5, "CdmaSMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "viacode: to use the encoding type ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    if-eqz p7, :cond_2

    if-eqz p8, :cond_2

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v17

    .line 472
    .local v17, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-nez v17, :cond_3

    .line 473
    const-string v5, "CdmaSMSDispatcher"

    const-string v7, "CDMASMSDispatcher.getNewSubmitPduTracker(), L, getSubmitPdu() returned null, A"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v5, 0x0

    .line 478
    :goto_2
    return-object v5

    .line 459
    .end local v17    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v5, 0x2

    move/from16 v0, p5

    if-ne v0, v5, :cond_1

    .line 460
    const/4 v5, 0x0

    move-object/from16 v0, v18

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 462
    :cond_1
    const/4 v5, 0x4

    move-object/from16 v0, v18

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 470
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 476
    .restart local v17    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 478
    .local v6, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x0

    const/16 v16, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p4

    move-object/from16 v15, p12

    invoke-virtual/range {v5 .. v16}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v5

    goto :goto_2
.end method

.method protected getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;II)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 18
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p10, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p11, "messageUri"    # Landroid/net/Uri;
    .param p12, "fullMessageText"    # Ljava/lang/String;
    .param p13, "validityPeriod"    # I
    .param p14, "priority"    # I

    .prologue
    .line 491
    if-eqz p7, :cond_0

    if-eqz p8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p13

    move/from16 v12, p14

    invoke-static/range {v5 .. v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;III)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v17

    .line 494
    .local v17, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v17, :cond_1

    .line 495
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 497
    .local v6, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x0

    const/16 v16, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p4

    move-object/from16 v15, p12

    invoke-virtual/range {v5 .. v16}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v5

    .line 502
    .end local v6    # "map":Ljava/util/HashMap;
    :goto_1
    return-object v5

    .line 491
    .end local v17    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 501
    .restart local v17    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_1
    const-string v5, "CdmaSMSDispatcher"

    const-string v7, "CDMASMSDispatcher.getNewSubmitPduTracker(), L, getSubmitPdu() returned null, B"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v5, 0x0

    goto :goto_1
.end method

.method handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 7
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 366
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 367
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 368
    .local v4, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v6, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    if-ne v5, v6, :cond_1

    .line 370
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 372
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateSentMessageStatus(Landroid/content/Context;I)V

    .line 374
    iget-object v3, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 375
    .local v3, "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 376
    .local v1, "fillIn":Landroid/content/Intent;
    const-string v5, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 377
    const-string v5, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .end local v1    # "fillIn":Landroid/content/Intent;
    .end local v3    # "intent":Landroid/app/PendingIntent;
    .end local v4    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    .line 366
    .restart local v4    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    .restart local v1    # "fillIn":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 205
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 320
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 207
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->onUpdateIccAvailability()V

    goto :goto_0

    .line 210
    :pswitch_1
    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    if-nez v9, :cond_1

    .line 211
    const-string v9, "CdmaSMSDispatcher"

    const-string v10, "viacode, received EVENT_RUIM_READY in CDMASmsDispather"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    .line 213
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 214
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 215
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v10, 0x7d4

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCDMANetWorkRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    .line 217
    :cond_1
    const-string v9, "CdmaSMSDispatcher"

    const-string v10, "viacode, received EVENT_RUIM_READY, but query processing, dont need query multi."

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    :pswitch_2
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 222
    const-string v9, "CdmaSMSDispatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "viacode, do network register state query again, retry times = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    const/16 v10, 0x64

    if-le v9, v10, :cond_2

    .line 224
    const-string v9, "CdmaSMSDispatcher"

    const-string v10, "over retry limits(100), query cdma sms register feasibility failed"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    goto :goto_0

    .line 229
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v10, 0x7d4

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCDMANetWorkRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    .line 234
    :pswitch_3
    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    if-eqz v9, :cond_5

    .line 235
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 236
    .local v1, "aresult":Landroid/os/AsyncResult;
    if-eqz v1, :cond_4

    .line 237
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    move-object v7, v9

    check-cast v7, [I

    .line 238
    .local v7, "res":[I
    if-eqz v7, :cond_3

    array-length v9, v7

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    const/4 v9, 0x0

    aget v9, v7, v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 241
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 242
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaNetworkRegistered:Z

    .line 243
    const/16 v9, 0x7d5

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 246
    :cond_3
    const/16 v9, 0x7d3

    const-wide/16 v10, 0x2710

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 250
    .end local v7    # "res":[I
    :cond_4
    const/16 v9, 0x7d3

    const-wide/16 v10, 0x2710

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 253
    .end local v1    # "aresult":Landroid/os/AsyncResult;
    :cond_5
    const-string v9, "CdmaSMSDispatcher"

    const-string v10, "viacode, received EVENT_QUERY_CDMA_NETWORK_REGISTER_STATE_DONE but is not querying"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v9, "CdmaSMSDispatcher"

    const-string v10, "viacode, must make sure is retrying in the same instance, drop this done EVENT if is not retry querying."

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 260
    :pswitch_4
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 261
    const-string v9, "CdmaSMSDispatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "viacode, do sms init state query again, retry times = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    const/16 v10, 0x64

    if-le v9, v10, :cond_6

    .line 263
    const-string v9, "CdmaSMSDispatcher"

    const-string v10, "over retry limits(100), query cdma modem sms init state failed"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    goto/16 :goto_0

    .line 268
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v10, 0x7d6

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCDMASmsAndPBStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 273
    :pswitch_5
    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    if-eqz v9, :cond_9

    .line 274
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 275
    .local v2, "asyncresult":Landroid/os/AsyncResult;
    if-eqz v2, :cond_8

    .line 276
    iget-object v9, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    move-object v6, v9

    check-cast v6, [I

    .line 277
    .local v6, "queryres":[I
    if-eqz v6, :cond_7

    array-length v9, v6

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    const/4 v9, 0x0

    aget v9, v6, v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 280
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 281
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaModemSmsInitDone:Z

    .line 282
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->notifyCdmaSmsAutoRegisterBeFeasible()V

    goto/16 :goto_0

    .line 285
    :cond_7
    const/16 v9, 0x7d5

    const-wide/16 v10, 0x2710

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 289
    .end local v6    # "queryres":[I
    :cond_8
    const/16 v9, 0x7d5

    const-wide/16 v10, 0x2710

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 292
    .end local v2    # "asyncresult":Landroid/os/AsyncResult;
    :cond_9
    const-string v9, "CdmaSMSDispatcher"

    const-string v10, "viacode, received EVENT_QUERY_CDMA_MODEM_SMS_INIT_STATE_DONE but is not querying"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v9, "CdmaSMSDispatcher"

    const-string v10, "viacode, must make sure is retrying in the same instance, drop this done EVENT if is not retry querying."

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 299
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 300
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_0

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v9, :cond_0

    .line 302
    :try_start_0
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 303
    .local v3, "data":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.telephony.sms.CDMA_CARD_ESN_OR_MEID"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v5, "intent":Landroid/content/Intent;
    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 305
    .local v8, "temp":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x1

    if-lt v9, v10, :cond_a

    .line 306
    const-string v9, "esn_or_meid"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    :cond_a
    array-length v9, v8

    const/4 v10, 0x2

    if-lt v9, v10, :cond_b

    .line 309
    const-string v9, "esn_or_meid2"

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    :cond_b
    const-string v9, "CdmaSMSDispatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Broadcast ESN/MEID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 313
    .end local v3    # "data":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "temp":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 314
    .local v4, "e":Ljava/lang/ClassCastException;
    goto/16 :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected handleStatusReport(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 353
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v0, :cond_0

    .line 354
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "calling handleCdmaStatusReport()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    check-cast p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 359
    :goto_0
    return-void

    .line 357
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const-string v0, "CdmaSMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStatusReport() called for object type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 436
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method must be called only on ImsSMSDispatcher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 21
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "originalPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 604
    const-string v3, "CdmaSMSDispatcher"

    const-string v4, "viacode: CdmaSMSDispatcher, implemented by VIA for interfaces needed. sendData"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    if-eqz p7, :cond_0

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v3 .. v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v8

    .line 607
    .local v8, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-nez v8, :cond_1

    .line 608
    const-string v3, "CdmaSMSDispatcher"

    const-string v4, "via sendData error: invalid paramters, pdu == null."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :goto_1
    return-void

    .line 605
    .end local v8    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .restart local v8    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_1
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p5

    .line 611
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v10

    .line 612
    .local v10, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v9, p0

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v9 .. v17}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v20

    .line 616
    .local v20, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v18

    .line 617
    .local v18, "carrierPackage":Ljava/lang/String;
    if-eqz v18, :cond_2

    .line 618
    const-string v3, "CdmaSMSDispatcher"

    const-string v4, "Found carrier package. w/op"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    new-instance v19, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 620
    .local v19, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    goto :goto_1

    .line 622
    .end local v19    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    :cond_2
    const-string v3, "CdmaSMSDispatcher"

    const-string v4, "No carrier package. w/op"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 22
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 390
    if-eqz p6, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v9

    .local v9, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    .line 392
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v11

    .line 393
    .local v11, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v10, p0

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-virtual/range {v10 .. v18}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v21

    .line 397
    .local v21, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v19

    .line 398
    .local v19, "carrierPackage":Ljava/lang/String;
    if-eqz v19, :cond_1

    .line 399
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "Found carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v20, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 401
    .local v20, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    .line 406
    .end local v20    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    :goto_1
    return-void

    .line 390
    .end local v9    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v11    # "map":Ljava/util/HashMap;
    .end local v19    # "carrierPackage":Ljava/lang/String;
    .end local v21    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 403
    .restart local v9    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v11    # "map":Ljava/util/HashMap;
    .restart local v19    # "carrierPackage":Ljava/lang/String;
    .restart local v21    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "No carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1
.end method

.method protected sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 633
    .local p4, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsRawData;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "Error! The functionality sendMultipartData is not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    return-void
.end method

.method protected sendMultipartTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 31
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p4, "encodingType"    # I
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 798
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v16

    .line 801
    .local v16, "fullMessageText":Ljava/lang/String;
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "viacode: CdmaSMSDispatcher, implemented by VIA for interfaces needed. sendMultipartTextWithEncodingType"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v27, v0

    .line 803
    .local v27, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 804
    .local v26, "msgCount":I
    move/from16 v21, p4

    .line 805
    .local v21, "encoding":I
    const-string v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viacode: want to use encoding = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    if-ltz v21, :cond_0

    const/16 v4, 0xa

    move/from16 v0, v21

    if-le v0, v4, :cond_1

    .line 809
    :cond_0
    const-string v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viacode: unavalid encoding = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "viacode: to use the unkown default."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const/16 v21, 0x0

    .line 814
    :cond_1
    move/from16 v0, v26

    new-array v0, v0, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v22, v0

    .line 815
    .local v22, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v21, :cond_4

    .line 816
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "viacode: unkown encoding, to find one best."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    .line 818
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v20

    .line 819
    .local v20, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v0, v21

    if-eq v0, v4, :cond_3

    if-eqz v21, :cond_2

    const/4 v4, 0x1

    move/from16 v0, v21

    if-ne v0, v4, :cond_3

    .line 822
    :cond_2
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v21, v0

    .line 824
    :cond_3
    aput-object v20, v22, v23

    .line 817
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 827
    .end local v20    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v23    # "i":I
    :cond_4
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "viacode: APP want use specified encoding type."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    .line 829
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move/from16 v0, v21

    invoke-static {v4, v5, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v20

    .line 830
    .restart local v20    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 831
    aput-object v20, v22, v23

    .line 828
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 835
    .end local v20    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_5
    move/from16 v0, v26

    new-array v0, v0, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v30, v0

    .line 838
    .local v30, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    new-instance v13, Ljava/util/concurrent/atomic/AtomicInteger;

    move/from16 v0, v26

    invoke-direct {v13, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 839
    .local v13, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v14, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 841
    .local v14, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const-string v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viacode: now to send one by one, msgCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const/16 v23, 0x0

    :goto_2
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_9

    .line 843
    new-instance v19, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 844
    .local v19, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v27

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 845
    add-int/lit8 v4, v23, 0x1

    move-object/from16 v0, v19

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 846
    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 853
    const/4 v4, 0x1

    move-object/from16 v0, v19

    iput-boolean v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 854
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 855
    .local v8, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v19

    iput-object v0, v8, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 857
    const/4 v10, 0x0

    .line 858
    .local v10, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v23

    if-le v4, v0, :cond_6

    .line 859
    move-object/from16 v0, p5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v10, Landroid/app/PendingIntent;

    .line 862
    .restart local v10    # "sentIntent":Landroid/app/PendingIntent;
    :cond_6
    const/4 v11, 0x0

    .line 863
    .local v11, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p6, :cond_7

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v23

    if-le v4, v0, :cond_7

    .line 864
    move-object/from16 v0, p6

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v11, Landroid/app/PendingIntent;

    .line 867
    .restart local v11    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_7
    const-string v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viacode: to send the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " part"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aget-object v4, v22, v23

    iget v9, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    add-int/lit8 v4, v26, -0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_8

    const/4 v12, 0x1

    :goto_3
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v15, p7

    invoke-virtual/range {v4 .. v16}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v4

    aput-object v4, v30, v23

    .line 842
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 868
    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    .line 875
    .end local v8    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v10    # "sentIntent":Landroid/app/PendingIntent;
    .end local v11    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v19    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_9
    if-eqz p3, :cond_a

    if-eqz v30, :cond_a

    move-object/from16 v0, v30

    array-length v4, v0

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    aget-object v4, v30, v4

    if-nez v4, :cond_c

    .line 877
    :cond_a
    const-string v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMultipartTextWithEncodingType: Cannot send multipart text. parts="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " trackers="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_b
    :goto_4
    return-void

    .line 881
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v18

    .line 882
    .local v18, "carrierPackage":Ljava/lang/String;
    if-eqz v18, :cond_d

    .line 883
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "sendMultipartTextWithEncodingType: Found carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    new-instance v28, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 885
    .local v28, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v4, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;)V

    goto :goto_4

    .line 887
    .end local v28    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    :cond_d
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "sendMultipartTextWithEncodingType: No carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    move-object/from16 v17, v30

    .local v17, "arr$":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    .local v25, "len$":I
    const/16 v24, 0x0

    .local v24, "i$":I
    :goto_5
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_b

    aget-object v29, v17, v24

    .line 889
    .local v29, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-eqz v29, :cond_e

    .line 890
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 888
    :goto_6
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 892
    :cond_e
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "sendMultipartTextWithEncodingType: Null tracker."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public sendMultipartTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 33
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p4, "extraParams"    # Landroid/os/Bundle;
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 975
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v16

    .line 978
    .local v16, "fullMessageText":Ljava/lang/String;
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "viacode: CdmaSMSDispatcher, implemented by VIA for interfaces needed. sendMultipartTextWithExtraParams"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    if-nez p4, :cond_4

    .line 984
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "viacode: extraParams == null, will encoding with no extra feature."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    const/16 v17, -0x1

    .line 986
    .local v17, "validityPeriod":I
    const/16 v18, -0x1

    .line 987
    .local v18, "priority":I
    const/16 v23, 0x0

    .line 994
    .local v23, "encoding":I
    :goto_0
    const-string v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viacode: validityPeriod is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const-string v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viacode: priority is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-string v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viacode: want to use encoding = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v29, v0

    .line 999
    .local v29, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 1002
    .local v28, "msgCount":I
    if-ltz v23, :cond_0

    const/16 v4, 0xa

    move/from16 v0, v23

    if-le v0, v4, :cond_1

    .line 1003
    :cond_0
    const-string v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viacode: unavalid encoding = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "viacode: to use the unkown default."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const/16 v23, 0x0

    .line 1008
    :cond_1
    move/from16 v0, v28

    new-array v0, v0, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v24, v0

    .line 1009
    .local v24, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v23, :cond_5

    .line 1010
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "viacode: unkown encoding, to find one best."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    .line 1012
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v22

    .line 1013
    .local v22, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v0, v23

    if-eq v0, v4, :cond_3

    if-eqz v23, :cond_2

    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_3

    .line 1016
    :cond_2
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v23, v0

    .line 1018
    :cond_3
    aput-object v22, v24, v25

    .line 1011
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 989
    .end local v17    # "validityPeriod":I
    .end local v18    # "priority":I
    .end local v22    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v23    # "encoding":I
    .end local v24    # "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v25    # "i":I
    .end local v28    # "msgCount":I
    .end local v29    # "refNumber":I
    :cond_4
    const-string v4, "validity_period"

    const/4 v5, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 990
    .restart local v17    # "validityPeriod":I
    const-string v4, "priority"

    const/4 v5, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 991
    .restart local v18    # "priority":I
    const-string v4, "encoding_type"

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    .restart local v23    # "encoding":I
    goto/16 :goto_0

    .line 1021
    .restart local v24    # "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v28    # "msgCount":I
    .restart local v29    # "refNumber":I
    :cond_5
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "viacode: APP want use specified encoding type."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_2
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    .line 1023
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move/from16 v0, v23

    invoke-static {v4, v5, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v22

    .line 1024
    .restart local v22    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1025
    aput-object v22, v24, v25

    .line 1022
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 1029
    .end local v22    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_6
    move/from16 v0, v28

    new-array v0, v0, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v32, v0

    .line 1032
    .local v32, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    new-instance v13, Ljava/util/concurrent/atomic/AtomicInteger;

    move/from16 v0, v28

    invoke-direct {v13, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1033
    .local v13, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v14, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1035
    .local v14, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const-string v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viacode: now to send one by one, msgCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const/16 v25, 0x0

    :goto_3
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_a

    .line 1037
    new-instance v21, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v21 .. v21}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 1038
    .local v21, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v29

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 1039
    add-int/lit8 v4, v25, 0x1

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 1040
    move/from16 v0, v28

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 1047
    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput-boolean v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 1048
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1049
    .local v8, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v21

    iput-object v0, v8, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1051
    const/4 v10, 0x0

    .line 1052
    .local v10, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_7

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v25

    if-le v4, v0, :cond_7

    .line 1053
    move-object/from16 v0, p5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v10, Landroid/app/PendingIntent;

    .line 1056
    .restart local v10    # "sentIntent":Landroid/app/PendingIntent;
    :cond_7
    const/4 v11, 0x0

    .line 1057
    .local v11, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p6, :cond_8

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v25

    if-le v4, v0, :cond_8

    .line 1058
    move-object/from16 v0, p6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v11, Landroid/app/PendingIntent;

    .line 1061
    .restart local v11    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_8
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aget-object v4, v24, v25

    iget v9, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    add-int/lit8 v4, v28, -0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_9

    const/4 v12, 0x1

    :goto_4
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v15, p7

    invoke-virtual/range {v4 .. v18}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;II)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v4

    aput-object v4, v32, v25

    .line 1036
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 1061
    :cond_9
    const/4 v12, 0x0

    goto :goto_4

    .line 1068
    .end local v8    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v10    # "sentIntent":Landroid/app/PendingIntent;
    .end local v11    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v21    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_a
    if-eqz p3, :cond_b

    if-eqz v32, :cond_b

    move-object/from16 v0, v32

    array-length v4, v0

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    aget-object v4, v32, v4

    if-nez v4, :cond_d

    .line 1070
    :cond_b
    const-string v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMultipartTextWithExtraParams: Cannot send multipart text. parts="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " trackers="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_c
    :goto_5
    return-void

    .line 1074
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v20

    .line 1075
    .local v20, "carrierPackage":Ljava/lang/String;
    if-eqz v20, :cond_e

    .line 1076
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "sendMultipartTextWithExtraParams: Found carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    new-instance v30, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1078
    .local v30, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v4, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;)V

    goto :goto_5

    .line 1080
    .end local v30    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    :cond_e
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "sendMultipartTextWithExtraParams: No carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    move-object/from16 v19, v32

    .local v19, "arr$":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v27, v0

    .local v27, "len$":I
    const/16 v26, 0x0

    .local v26, "i$":I
    :goto_6
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    aget-object v31, v19, v26

    .line 1082
    .local v31, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-eqz v31, :cond_f

    .line 1083
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1081
    :goto_7
    add-int/lit8 v26, v26, 0x1

    goto :goto_6

    .line 1085
    :cond_f
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "sendMultipartTextWithExtraParams: Null tracker."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 522
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 525
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "pdu"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v2, v3

    check-cast v2, [B

    .line 528
    .local v2, "pdu":[B
    const/4 v0, 0x0

    .line 529
    .local v0, "isReadySend":Z
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    monitor-enter v4

    .line 530
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_1

    .line 531
    :cond_0
    const-string v3, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add tracker into the list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 535
    const/4 v0, 0x1

    .line 537
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    if-nez v0, :cond_3

    .line 540
    const-string v3, "CdmaSMSDispatcher"

    const-string v4, "There is another tracker in-queue and is sending"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :goto_0
    return-void

    .line 537
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 545
    :cond_3
    const-string v3, "CdmaSMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendSms:  isIms()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mRetryCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mImsRetry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mMessageRef="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0
.end method

.method protected sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 10
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 558
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    .line 560
    .local v4, "ss":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v4, :cond_1

    .line 564
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    monitor-enter v6

    .line 565
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 566
    const-string v5, "CdmaSMSDispatcher"

    const-string v7, "updatePhoneObject, remove tracker."

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    goto :goto_0

    .line 570
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_0
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    :goto_1
    return-void

    .line 575
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 576
    .local v3, "reply":Landroid/os/Message;
    iget-object v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    const-string v7, "pdu"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v2, v5

    check-cast v2, [B

    .line 578
    .local v2, "pdu":[B
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    .line 579
    .local v0, "currentDataNetwork":I
    const/16 v5, 0xe

    if-eq v0, v5, :cond_2

    const/16 v5, 0xd

    if-ne v0, v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v5

    const/4 v7, 0x7

    if-ne v5, v7, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v5, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v7, :cond_5

    .line 590
    .local v1, "imsSmsDisabled":Z
    :goto_2
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    if-eqz v1, :cond_6

    .line 591
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    goto :goto_1

    .end local v1    # "imsSmsDisabled":Z
    :cond_5
    move v1, v6

    .line 579
    goto :goto_2

    .line 593
    .restart local v1    # "imsSmsDisabled":Z
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-interface {v5, v2, v6, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendImsCdmaSms([BIILandroid/os/Message;)V

    .line 596
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    goto :goto_1
.end method

.method sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 2
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 347
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "sending EVENT_HANDLE_STATUS_REPORT message"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 349
    return-void
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v2, 0x0

    .line 509
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "Block SMS in Emergency Callback mode"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 517
    :goto_0
    return-void

    .line 516
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 640
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "Error! The functionality sendText with port is not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 17
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;

    .prologue
    .line 412
    if-eqz p5, :cond_0

    const/4 v4, 0x1

    :goto_0
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v4, v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v14

    .line 414
    .local v14, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v14, :cond_2

    .line 415
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v5

    .line 416
    .local v5, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object/from16 v4, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v12}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v16

    .line 419
    .local v16, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v13

    .line 420
    .local v13, "carrierPackage":Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 421
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "Found carrier package."

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v15, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 423
    .local v15, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    invoke-virtual {v15, v13, v4}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    .line 431
    .end local v5    # "map":Ljava/util/HashMap;
    .end local v13    # "carrierPackage":Ljava/lang/String;
    .end local v15    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    .end local v16    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_1
    return-void

    .line 412
    .end local v14    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 425
    .restart local v5    # "map":Ljava/util/HashMap;
    .restart local v13    # "carrierPackage":Ljava/lang/String;
    .restart local v14    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v16    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "No carrier package."

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 429
    .end local v5    # "map":Ljava/util/HashMap;
    .end local v13    # "carrierPackage":Ljava/lang/String;
    .end local v16    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "CdmaSMSDispatcher.sendText(): getSubmitPdu() returned null"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 22
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "encodingType"    # I
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "callingPkg"    # Ljava/lang/String;

    .prologue
    .line 727
    const-string v5, "CdmaSMSDispatcher"

    const-string v7, "viacode: CdmaSMSDispatcher, implemented by VIA for interfaces needed. sendTextWithEncodingType"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    move/from16 v16, p4

    .line 730
    .local v16, "encoding":I
    const-string v5, "CdmaSMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "viacode: want to use encoding = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    if-ltz v16, :cond_0

    const/16 v5, 0xa

    move/from16 v0, v16

    if-le v0, v5, :cond_1

    .line 734
    :cond_0
    const-string v5, "CdmaSMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "viacode: unavalid encoding = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const-string v5, "CdmaSMSDispatcher"

    const-string v7, "viacode: to use the unkown default."

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/16 v16, 0x0

    .line 739
    :cond_1
    if-nez v16, :cond_3

    .line 740
    const-string v5, "CdmaSMSDispatcher"

    const-string v7, "viacode: unkown encoding, to find one best."

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v15

    .line 742
    .local v15, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v5, v15, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v0, v16

    if-eq v0, v5, :cond_3

    if-eqz v16, :cond_2

    const/4 v5, 0x1

    move/from16 v0, v16

    if-ne v0, v5, :cond_3

    .line 745
    :cond_2
    iget v0, v15, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v16, v0

    .line 749
    .end local v15    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_3
    new-instance v21, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 750
    .local v21, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 751
    const/4 v5, 0x1

    move/from16 v0, v16

    if-ne v0, v5, :cond_5

    .line 752
    const/4 v5, 0x2

    move-object/from16 v0, v21

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 758
    :goto_0
    const/4 v5, 0x1

    move-object/from16 v0, v21

    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 764
    if-eqz p6, :cond_7

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v19

    .line 767
    .local v19, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v19, :cond_9

    .line 768
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 769
    .local v6, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v13, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p7

    move-object/from16 v12, p3

    invoke-virtual/range {v5 .. v13}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v20

    .line 772
    .local v20, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v14

    .line 773
    .local v14, "carrierPackage":Ljava/lang/String;
    if-eqz v14, :cond_8

    .line 774
    const-string v5, "CdmaSMSDispatcher"

    const-string v7, "sendTextWithEncodingType: Found carrier package."

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    new-instance v18, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 776
    .local v18, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    new-instance v5, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v5}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    .line 791
    .end local v6    # "map":Ljava/util/HashMap;
    .end local v14    # "carrierPackage":Ljava/lang/String;
    .end local v18    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    .end local v20    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4
    :goto_2
    return-void

    .line 753
    .end local v19    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_5
    const/4 v5, 0x2

    move/from16 v0, v16

    if-ne v0, v5, :cond_6

    .line 754
    const/4 v5, 0x0

    move-object/from16 v0, v21

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 756
    :cond_6
    const/4 v5, 0x4

    move-object/from16 v0, v21

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 764
    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .line 778
    .restart local v6    # "map":Ljava/util/HashMap;
    .restart local v14    # "carrierPackage":Ljava/lang/String;
    .restart local v19    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v20    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_8
    const-string v5, "CdmaSMSDispatcher"

    const-string v7, "sendTextWithEncodingType: No carrier package."

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_2

    .line 782
    .end local v6    # "map":Ljava/util/HashMap;
    .end local v14    # "carrierPackage":Ljava/lang/String;
    .end local v20    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_9
    const-string v5, "CdmaSMSDispatcher"

    const-string v7, "viacode : sendTextWithEncodingType: submitPdu is null"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    if-eqz p5, :cond_4

    .line 785
    const/4 v5, 0x3

    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 786
    :catch_0
    move-exception v17

    .line 787
    .local v17, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v5, "CdmaSMSDispatcher"

    const-string v7, "viacode: failed to send back RESULT_ERROR_NULL_PDU"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public sendTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 28
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "extraParams"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "callingPkg"    # Ljava/lang/String;

    .prologue
    .line 903
    const-string v5, "CdmaSMSDispatcher"

    const-string v6, "viacode: CdmaSMSDispatcher, implemented by VIA for interfaces needed. sendTextWithExtraParams"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    if-nez p4, :cond_5

    .line 910
    const-string v5, "CdmaSMSDispatcher"

    const-string v6, "viacode: extraParams == null, will encoding with no extra feature."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const/4 v11, -0x1

    .line 912
    .local v11, "validityPeriod":I
    const/4 v12, -0x1

    .line 913
    .local v12, "priority":I
    const/4 v10, 0x0

    .line 920
    .local v10, "encoding":I
    :goto_0
    const-string v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "viacode: validityPeriod is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const-string v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "viacode: priority is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const-string v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "viacode: want to use encoding = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    if-ltz v10, :cond_0

    const/16 v5, 0xa

    if-le v10, v5, :cond_1

    .line 926
    :cond_0
    const-string v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "viacode: unavalid encoding = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const-string v5, "CdmaSMSDispatcher"

    const-string v6, "viacode: to use the unkown default."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const/4 v10, 0x0

    .line 931
    :cond_1
    if-nez v10, :cond_3

    .line 932
    const-string v5, "CdmaSMSDispatcher"

    const-string v6, "viacode: unkown encoding, to find one best."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v23

    .line 934
    .local v23, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v10, v5, :cond_3

    if-eqz v10, :cond_2

    const/4 v5, 0x1

    if-ne v10, v5, :cond_3

    .line 937
    :cond_2
    move-object/from16 v0, v23

    iget v10, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 941
    .end local v23    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_3
    if-eqz p6, :cond_6

    const/4 v8, 0x1

    :goto_1
    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    invoke-static/range {v5 .. v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;III)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v26

    .line 944
    .local v26, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v26, :cond_8

    .line 945
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v14

    .line 946
    .local v14, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v21, 0x1

    move-object/from16 v13, p0

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v18, p7

    move-object/from16 v20, p3

    invoke-virtual/range {v13 .. v21}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v27

    .line 949
    .local v27, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v22

    .line 950
    .local v22, "carrierPackage":Ljava/lang/String;
    if-eqz v22, :cond_7

    .line 951
    const-string v5, "CdmaSMSDispatcher"

    const-string v6, "sendTextWithExtraParams: Found carrier package."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    new-instance v25, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 953
    .local v25, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    new-instance v5, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v5, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    .line 968
    .end local v14    # "map":Ljava/util/HashMap;
    .end local v22    # "carrierPackage":Ljava/lang/String;
    .end local v25    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    .end local v27    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4
    :goto_2
    return-void

    .line 915
    .end local v10    # "encoding":I
    .end local v11    # "validityPeriod":I
    .end local v12    # "priority":I
    .end local v26    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_5
    const-string v5, "validity_period"

    const/4 v6, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 916
    .restart local v11    # "validityPeriod":I
    const-string v5, "priority"

    const/4 v6, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 917
    .restart local v12    # "priority":I
    const-string v5, "encoding_type"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .restart local v10    # "encoding":I
    goto/16 :goto_0

    .line 941
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 955
    .restart local v14    # "map":Ljava/util/HashMap;
    .restart local v22    # "carrierPackage":Ljava/lang/String;
    .restart local v26    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v27    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_7
    const-string v5, "CdmaSMSDispatcher"

    const-string v6, "sendTextWithExtraParams: No carrier package."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_2

    .line 959
    .end local v14    # "map":Ljava/util/HashMap;
    .end local v22    # "carrierPackage":Ljava/lang/String;
    .end local v27    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_8
    const-string v5, "CdmaSMSDispatcher"

    const-string v6, "viacode : sendTextWithExtraParams: submitPdu is null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    if-eqz p5, :cond_4

    .line 962
    const/4 v5, 0x3

    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 963
    :catch_0
    move-exception v24

    .line 964
    .local v24, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v5, "CdmaSMSDispatcher"

    const-string v6, "viacode: failed to send back RESULT_ERROR_NULL_PDU"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
