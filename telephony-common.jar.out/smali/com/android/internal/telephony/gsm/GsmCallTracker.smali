.class public final Lcom/android/internal/telephony/gsm/GsmCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "GsmCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmCallTracker$1;,
        Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;,
        Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;
    }
.end annotation


# static fields
.field private static final DBG_POLL:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "GsmCallTracker"

.field static final MAX_CONNECTIONS:I = 0x7

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x5

.field private static final REPEAT_POLLING:Z = false

.field private static final STR_PROPERTY_HD_VOICE:Ljava/lang/String; = "persist.radio.hd.voice"


# instance fields
.field hasPendingReplaceRequest:Z

.field mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

.field mDesiredMute:Z

.field mDroppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mEconfSrvccConnectionIds:[I

.field mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field mHangupAfterHoldRequest:Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;

.field mHangupPendingMO:Z

.field mHasPendingSwapRequest:Z

.field mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

.field private mImsConfParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingCnap:Ljava/lang/String;

.field mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

.field mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field private mSpeechCodecType:I

.field mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

.field public mState:Lcom/android/internal/telephony/PhoneConstants$State;

.field mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field mVoiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

.field mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

.field mWaitingForHoldRequest:Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v3, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 233
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 90
    new-array v0, v3, [Lcom/android/internal/telephony/gsm/GsmConnection;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 91
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 92
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 94
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 103
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 104
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 111
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    .line 115
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 118
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    .line 126
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    .line 130
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHasPendingSwapRequest:Z

    .line 131
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mWaitingForHoldRequest:Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;

    .line 133
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupAfterHoldRequest:Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;

    .line 138
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingCnap:Ljava/lang/String;

    .line 142
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mSpeechCodecType:I

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    .line 149
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEconfSrvccConnectionIds:[I

    .line 234
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 235
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x9

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x17

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x18

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnIncomingCallIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x19

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCnapNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1a

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSpeechCodecInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 251
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1e

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForEconfSrvcc(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 256
    return-void
.end method

.method private callStateToString(Lcom/android/internal/telephony/Call$State;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 1841
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1853
    const-string v0, "ACTIVE"

    :goto_0
    return-object v0

    .line 1843
    :pswitch_0
    const-string v0, "HOLDING"

    goto :goto_0

    .line 1845
    :pswitch_1
    const-string v0, "DIALING"

    goto :goto_0

    .line 1847
    :pswitch_2
    const-string v0, "ALERTING"

    goto :goto_0

    .line 1849
    :pswitch_3
    const-string v0, "INCOMING"

    goto :goto_0

    .line 1851
    :pswitch_4
    const-string v0, "WAITING"

    goto :goto_0

    .line 1841
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private dumpState()V
    .locals 6

    .prologue
    .line 1240
    const-string v3, "GsmCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone State:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    const-string v3, "GsmCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ringing call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1245
    .local v1, "l":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1246
    const-string v3, "GsmCallTracker"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1249
    :cond_0
    const-string v3, "GsmCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Foreground call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1252
    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_1

    .line 1253
    const-string v3, "GsmCallTracker"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1256
    :cond_1
    const-string v3, "GsmCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Background call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1259
    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v0, v2, :cond_2

    .line 1260
    const-string v3, "GsmCallTracker"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1264
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->LogState()V

    .line 1266
    return-void
.end method

.method private fakeHoldForegroundBeforeDial()V
    .locals 5

    .prologue
    .line 324
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 326
    .local v1, "connCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "s":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 327
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 329
    .local v0, "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->fakeHoldBeforeDial()V

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 331
    .end local v0    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    return-void
.end method

.method private getDriverCallStateFromCallState(Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/DriverCall$State;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 1824
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1836
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    :goto_0
    return-object v0

    .line 1826
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_0

    .line 1828
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_0

    .line 1830
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_0

    .line 1832
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_0

    .line 1834
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_0

    .line 1824
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 1479
    packed-switch p1, :pswitch_data_0

    .line 1489
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    :goto_0
    return-object v0

    .line 1481
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1483
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1485
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1487
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1479
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    .prologue
    .line 1233
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsWhenSafe()V

    .line 1234
    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    .line 704
    return-void
.end method

.method private operationComplete()V
    .locals 2

    .prologue
    .line 739
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operationComplete: pendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needsPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 744
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedsPoll:Z

    if-eqz v0, :cond_1

    .line 745
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 746
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    if-gez v0, :cond_0

    .line 749
    const-string v0, "GsmCallTracker"

    const-string v1, "GsmCallTracker.pendingOperations < 0"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    goto :goto_0
.end method

.method private declared-synchronized restoreConferenceParticipantAddress()Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1867
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEconfSrvccConnectionIds:[I

    if-nez v7, :cond_1

    .line 1868
    const-string v7, "SRVCC: restoreConferenceParticipantAddress():ignore because mEconfSrvccConnectionIds is empty"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1907
    :cond_0
    monitor-exit p0

    return v1

    .line 1873
    :cond_1
    const/4 v1, 0x0

    .line 1876
    .local v1, "finishRestore":Z
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEconfSrvccConnectionIds:[I

    const/4 v8, 0x0

    aget v4, v7, v8

    .line 1877
    .local v4, "numOfParticipants":I
    const/4 v3, 0x1

    .local v3, "index":I
    :goto_0
    if-gt v3, v4, :cond_0

    .line 1879
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEconfSrvccConnectionIds:[I

    aget v5, v7, v3

    .line 1880
    .local v5, "participantCallId":I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    add-int/lit8 v8, v5, -0x1

    aget-object v6, v7, v8

    .line 1882
    .local v6, "participantConnection":Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v6, :cond_2

    .line 1883
    const-string v7, "SRVCC: found conference connections!"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1885
    const/4 v2, 0x0

    .line 1886
    .local v2, "hostConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    iget-object v7, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    instance-of v7, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v7, :cond_3

    .line 1887
    iget-object v2, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    .end local v2    # "hostConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1893
    .restart local v2    # "hostConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-nez v2, :cond_4

    .line 1894
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SRVCC: no host, ignore connection: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1877
    .end local v2    # "hostConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1889
    .restart local v2    # "hostConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SRVCC: host is abnormal, ignore connection: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1867
    .end local v1    # "finishRestore":Z
    .end local v2    # "hostConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v3    # "index":I
    .end local v4    # "numOfParticipants":I
    .end local v5    # "participantCallId":I
    .end local v6    # "participantConnection":Lcom/android/internal/telephony/gsm/GsmConnection;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1898
    .restart local v1    # "finishRestore":Z
    .restart local v2    # "hostConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .restart local v3    # "index":I
    .restart local v4    # "numOfParticipants":I
    .restart local v5    # "participantCallId":I
    .restart local v6    # "participantConnection":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_4
    add-int/lit8 v7, v3, -0x1

    :try_start_2
    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConferenceParticipantAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 1899
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->updateConferenceParticipantAddress(Ljava/lang/String;)V

    .line 1900
    const/4 v1, 0x1

    .line 1902
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SRVCC: restore Connection="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with address:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private resumeBackgroundAfterDialFailed()V
    .locals 5

    .prologue
    .line 337
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 339
    .local v1, "connCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "s":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 340
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 342
    .local v0, "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->resumeHoldAfterDialFailed()V

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    .end local v0    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    return-void
.end method

.method private updatePhoneState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 756
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 757
    .local v1, "oldState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 758
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 776
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_6

    .line 777
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v4, v4, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 783
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePhoneState: old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 784
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v1, :cond_1

    .line 785
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPhoneStateChanged()V

    .line 787
    :cond_1
    return-void

    .line 759
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v2

    if-nez v2, :cond_4

    .line 761
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 763
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 769
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_5

    .line 771
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->callEndCleanupHandOverCallIfAny()V

    .line 773
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 779
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_0

    .line 780
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v4, v4, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1
.end method


# virtual methods
.method acceptCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 585
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 586
    const-string v0, "phone"

    const-string v1, "acceptCall: incoming..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 589
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    .line 596
    :goto_0
    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    .line 591
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 592
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    goto :goto_0

    .line 594
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method acceptCall(I)V
    .locals 6
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 543
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 544
    const-string v2, "phone"

    const-string v3, "acceptCall: incoming..."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 548
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 549
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 550
    if-nez p1, :cond_0

    .line 551
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->acceptVtCallWithVoiceOnly(ILandroid/os/Message;)V

    .line 552
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->setVideoState(I)V

    .line 576
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    goto :goto_0

    .line 558
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_3

    .line 559
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 561
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 562
    .restart local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 563
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 564
    .local v1, "fgCn":Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 565
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    .line 566
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v3, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->replaceVtCall(ILandroid/os/Message;)V

    .line 567
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->onHangupLocal()V

    goto :goto_0

    .line 572
    .end local v1    # "fgCn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    goto :goto_0

    .line 574
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "phone not ringing"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method canConference()Z
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canDial()Z
    .locals 5

    .prologue
    .line 657
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 658
    .local v2, "serviceState":I
    const-string v3, "ro.telephony.disable-call"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "disableCall":Ljava/lang/String;
    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 668
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 661
    .end local v1    # "ret":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method canTransfer()Z
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canVtDial()Z
    .locals 5

    .prologue
    .line 675
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v0

    .line 676
    .local v0, "networkType":I
    const-string v2, "GsmCallTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0xf

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 685
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 678
    .end local v1    # "ret":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method clearDisconnected()V
    .locals 1

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 642
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 643
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 644
    return-void
.end method

.method conference()V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->conference(Landroid/os/Message;)V

    .line 631
    return-void
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 523
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 533
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 6
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 435
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 437
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    move-result v2

    if-nez v2, :cond_0

    .line 438
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot dial in current state"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 441
    :cond_0
    move-object v0, p1

    .line 442
    .local v0, "origNumber":Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 447
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 454
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mWaitingForHoldRequest:Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->set()V

    .line 457
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 463
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->fakeHoldForegroundBeforeDial()V

    .line 466
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2

    .line 468
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot dial in current state"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 471
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v2, v3, v4, p0, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 473
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    .line 475
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_5

    .line 479
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    const/4 v3, 0x7

    iput v3, v2, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    .line 482
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mWaitingForHoldRequest:Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->reset()V

    .line 487
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsWhenSafe()V

    .line 510
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNumberConverted:Z

    if-eqz v2, :cond_4

    .line 511
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setConverted(Ljava/lang/String;)V

    .line 512
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNumberConverted:Z

    .line 515
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 516
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 518
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 490
    :cond_5
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 493
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 495
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getServiceCategoryFromEcc(Ljava/lang/String;)I

    move-result v1

    .line 496
    .local v1, "serviceCategory":I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setEccServiceCategory(I)V

    .line 497
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x16

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, p2, p3, v4}, Lcom/android/internal/telephony/CommandsInterface;->emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_0

    .line 501
    .end local v1    # "serviceCategory":I
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mWaitingForHoldRequest:Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->isWaiting()Z

    move-result v2

    if-nez v2, :cond_7

    .line 502
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x16

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, p2, p3, v4}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_0

    .line 504
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mWaitingForHoldRequest:Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->set(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 528
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 259
    const-string v0, "GsmCallTracker"

    const-string v1, "GsmCallTracker dispose"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unsetOnIncomingCallIndication(Landroid/os/Handler;)V

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetCnapNotify(Landroid/os/Handler;)V

    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSpeechCodecInfo(Landroid/os/Handler;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 275
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1719
    const-string v1, "GsmCallTracker extends:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1720
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mConnections: length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1722
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1723
    const-string v1, "  mConnections[%d]=%s\n"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v3, v3, v0

    aput-object v3, v2, v5

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1722
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1725
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mVoiceCallEndedRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mVoiceCallStartedRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDroppedDuringPoll: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1728
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1729
    const-string v1, "  mDroppedDuringPoll[%d]=%s\n"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1728
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1731
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRingingCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mForegroundCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mBackgroundCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPendingMO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mHangupPendingMO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPhone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDesiredMute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1739
    return-void
.end method

.method explicitCallTransfer()V
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->explicitCallTransfer(Landroid/os/Message;)V

    .line 636
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 279
    const-string v0, "GsmCallTracker"

    const-string v1, "GsmCallTracker finalized"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void
.end method

.method getConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Lcom/android/internal/telephony/gsm/GsmConnection;
    .locals 4
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1467
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1468
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1469
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1470
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1475
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :goto_1
    return-object v0

    .line 1468
    .restart local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1475
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;
    .locals 4
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    .line 1912
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEconfSrvccConnectionIds:[I

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 1913
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEconfSrvccConnectionIds:[I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 1914
    .local v1, "numOfParticipants":I
    const/4 v0, 0x1

    .local v0, "index":I
    :goto_0
    if-gt v0, v1, :cond_0

    .line 1915
    iget v2, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEconfSrvccConnectionIds:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_2

    .line 1916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SRVCC: getHoConnection for call-id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in a conference is found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1918
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    if-nez v2, :cond_1

    .line 1919
    const-string v2, "SRVCC: but mImsConfHostConnection is null, try to find by callState"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1929
    .end local v0    # "index":I
    .end local v1    # "numOfParticipants":I
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CallTracker;->getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    :goto_1
    return-object v2

    .line 1922
    .restart local v0    # "index":I
    .restart local v1    # "numOfParticipants":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SRVCC: ret= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1923
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    goto :goto_1

    .line 1914
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getMute()Z
    .locals 1

    .prologue
    .line 1332
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    return v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1499
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-boolean v9, v9, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    if-nez v9, :cond_1

    .line 1500
    const-string v9, "GsmCallTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received message "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] while being destroyed. Ignoring."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    :cond_0
    :goto_0
    return-void

    .line 1505
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->LogerMessage(I)V

    .line 1508
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1510
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1512
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    if-ne p1, v9, :cond_0

    .line 1513
    const-string v9, "handle EVENT_POLL_CALLS_RESULT: set needsPoll=F"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1515
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedsPoll:Z

    .line 1516
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 1517
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1522
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1523
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    .line 1525
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    if-eqz v9, :cond_0

    .line 1526
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    goto :goto_0

    .line 1533
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1534
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_4

    .line 1535
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mWaitingForHoldRequest:Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->isWaiting()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1537
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    const/4 v10, 0x3

    iput v10, v9, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    .line 1538
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(I)Z

    .line 1539
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1540
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    .line 1541
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 1543
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->resumeBackgroundAfterDialFailed()V

    .line 1544
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mWaitingForHoldRequest:Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->reset()V

    .line 1547
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 1554
    :cond_3
    :goto_1
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHasPendingSwapRequest:Z

    .line 1555
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto :goto_0

    .line 1549
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mWaitingForHoldRequest:Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->isWaiting()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1550
    const-string v9, "GsmCallTracker"

    const-string v10, "Switch success, and then dial"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mWaitingForHoldRequest:Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;

    # invokes: Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->handleOperation()Z
    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->access$000(Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;)Z

    goto :goto_1

    .line 1561
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1562
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_5

    .line 1564
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->PendingHangupRequestUpdate()V

    .line 1566
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 1568
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1573
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1575
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    .line 1577
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_8

    .line 1580
    const/16 v1, 0x10

    .line 1581
    .local v1, "causeCode":I
    const-string v9, "GsmCallTracker"

    const-string v10, "Exception during getLastCallFailCause, assuming normal disconnect"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    :goto_2
    const/16 v9, 0x22

    if-eq v1, v9, :cond_6

    const/16 v9, 0x29

    if-eq v1, v9, :cond_6

    const/16 v9, 0x2a

    if-eq v1, v9, :cond_6

    const/16 v9, 0x2c

    if-eq v1, v9, :cond_6

    const/16 v9, 0x31

    if-eq v1, v9, :cond_6

    const/16 v9, 0x3a

    if-eq v1, v9, :cond_6

    const v9, 0xffff

    if-ne v1, v9, :cond_7

    .line 1594
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v7

    check-cast v7, Landroid/telephony/gsm/GsmCellLocation;

    .line 1595
    .local v7, "loc":Landroid/telephony/gsm/GsmCellLocation;
    const v10, 0xc3ba

    const/4 v9, 0x3

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    const/4 v12, 0x1

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v9

    :goto_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v11, v12

    const/4 v9, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1602
    .end local v7    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_7
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1603
    .local v8, "s":I
    :goto_4
    if-ge v6, v8, :cond_a

    .line 1605
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1607
    .local v4, "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->onRemoteDisconnect(I)V

    .line 1603
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1584
    .end local v1    # "causeCode":I
    .end local v4    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v6    # "i":I
    .end local v8    # "s":I
    :cond_8
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    check-cast v9, [I

    const/4 v10, 0x0

    aget v1, v9, v10

    .restart local v1    # "causeCode":I
    goto :goto_2

    .line 1595
    .restart local v7    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_9
    const/4 v9, -0x1

    goto :goto_3

    .line 1610
    .end local v7    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v6    # "i":I
    .restart local v8    # "s":I
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 1612
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1613
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1618
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "causeCode":I
    .end local v6    # "i":I
    .end local v8    # "s":I
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsWhenSafe()V

    goto/16 :goto_0

    .line 1622
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleRadioAvailable()V

    .line 1624
    const-string v9, "persist.radio.hd.voice"

    const-string v10, "1"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1626
    .local v5, "hdVoiceEnabled":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "persist.radio.hd.voice = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1627
    const/4 v9, 0x1

    if-ne v5, v9, :cond_b

    .line 1628
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->setSpeechCodecInfo(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1629
    :cond_b
    if-nez v5, :cond_0

    .line 1630
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->setSpeechCodecInfo(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1636
    .end local v5    # "hdVoiceEnabled":I
    :pswitch_8
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleRadioNotAvailable()V

    goto/16 :goto_0

    .line 1641
    :pswitch_9
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->PendingHangupRequestDec()V

    .line 1642
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1646
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1647
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_c

    .line 1648
    const-string v9, "dial call failed!!"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1649
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->PendingHangupRequestUpdate()V

    .line 1651
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1655
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_b
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleRadioNotAvailable()V

    goto/16 :goto_0

    .line 1659
    :pswitch_c
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v10, v9}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->CallIndicationProcess(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1663
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1665
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/String;

    move-object v3, v9

    check-cast v3, [Ljava/lang/String;

    .line 1667
    .local v3, "cnapResult":[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle EVENT_CNAP_INDICATION : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1669
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ringingCall.isIdle() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1671
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v9

    if-nez v9, :cond_d

    .line 1672
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1674
    .local v2, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/gsm/GsmConnection;->setCnapName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1676
    .end local v2    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_d
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingCnap:Ljava/lang/String;

    goto/16 :goto_0

    .line 1684
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "cnapResult":[Ljava/lang/String;
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1685
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    check-cast v9, [I

    const/4 v10, 0x0

    aget v9, v9, v10

    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mSpeechCodecType:I

    .line 1686
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle EVENT_SPEECH_CODEC_INFO : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mSpeechCodecType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1687
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget v10, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mSpeechCodecType:I

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySpeechCodecInfo(I)V

    goto/16 :goto_0

    .line 1693
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_f
    const-string v9, "Receives EVENT_ECONF_SRVCC_INDICATION"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1694
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1695
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    check-cast v9, [I

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEconfSrvccConnectionIds:[I

    .line 1702
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedWaitImsEConfSrvcc:Z

    .line 1703
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsWhenSafe()V

    goto/16 :goto_0

    .line 1508
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
    .end packed-switch
.end method

.method protected declared-synchronized handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 32
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 794
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v28, v0

    if-nez v28, :cond_2

    .line 795
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/util/List;

    .line 812
    .local v26, "polledCalls":Ljava/util/List;
    :goto_0
    const/16 v23, 0x0

    .line 813
    .local v23, "newRinging":Lcom/android/internal/telephony/Connection;
    const/16 v24, 0x0

    .line 814
    .local v24, "newUnknown":Lcom/android/internal/telephony/Connection;
    const/16 v17, 0x0

    .line 816
    .local v17, "hasNonHangupStateChanged":Z
    const/16 v16, 0x0

    .line 817
    .local v16, "hasAnyCallDisconnected":Z
    const/16 v22, 0x0

    .line 818
    .local v22, "needsPollDelay":Z
    const/16 v27, 0x0

    .line 820
    .local v27, "unknownConnectionAppeared":Z
    const/16 v20, 0x0

    .local v20, "i":I
    const/4 v9, 0x0

    .local v9, "curDC":I
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v11

    .line 821
    .local v11, "dcSize":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_18

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v8, v28, v20

    .line 823
    .local v8, "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    const/4 v10, 0x0

    .line 826
    .local v10, "dc":Lcom/android/internal/telephony/DriverCall;
    if-ge v9, v11, :cond_0

    .line 827
    move-object/from16 v0, v26

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "dc":Lcom/android/internal/telephony/DriverCall;
    check-cast v10, Lcom/android/internal/telephony/DriverCall;

    .line 829
    .restart local v10    # "dc":Lcom/android/internal/telephony/DriverCall;
    iget v0, v10, Lcom/android/internal/telephony/DriverCall;->index:I

    move/from16 v28, v0

    add-int/lit8 v29, v20, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 830
    add-int/lit8 v9, v9, 0x1

    .line 836
    :cond_0
    :goto_2
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "poll: conn[i="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "]="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", dc="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 839
    if-nez v8, :cond_f

    if-eqz v10, :cond_f

    .line 841
    const-string v28, "case 1 : new Call appear"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 845
    const/16 v28, 0x1

    move/from16 v0, v28

    iput v0, v10, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    if-eqz v28, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 852
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "poll: pendingMO="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 856
    const-string v28, "ro.mtk_vt3g324m_support"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v29, "1"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mVTProvider:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1

    iget-boolean v0, v10, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mVTProvider:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    move-object/from16 v28, v0

    add-int/lit8 v29, v20, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setId(I)V

    .line 864
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    aput-object v29, v28, v20

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    move/from16 v0, v20

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 867
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 870
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    move/from16 v28, v0

    if-eqz v28, :cond_9

    .line 871
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 873
    :try_start_1
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "poll: hangupPendingMO, hangup conn "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v28, v28, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1226
    .end local v8    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v9    # "curDC":I
    .end local v10    # "dc":Lcom/android/internal/telephony/DriverCall;
    .end local v11    # "dcSize":I
    .end local v16    # "hasAnyCallDisconnected":Z
    .end local v17    # "hasNonHangupStateChanged":Z
    .end local v20    # "i":I
    .end local v22    # "needsPollDelay":Z
    .end local v23    # "newRinging":Lcom/android/internal/telephony/Connection;
    .end local v24    # "newUnknown":Lcom/android/internal/telephony/Connection;
    .end local v26    # "polledCalls":Ljava/util/List;
    .end local v27    # "unknownConnectionAppeared":Z
    :goto_3
    monitor-exit p0

    return-void

    .line 796
    :cond_2
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 799
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .restart local v26    # "polledCalls":Ljava/util/List;
    goto/16 :goto_0

    .line 800
    .end local v26    # "polledCalls":Ljava/util/List;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedWaitImsEConfSrvcc:Z

    move/from16 v28, v0

    if-eqz v28, :cond_4

    .line 802
    const-string v28, "SRVCC: +ECONFSRVCC is still not arrival, skip this poll call."

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 794
    :catchall_0
    move-exception v28

    monitor-exit p0

    throw v28

    .line 808
    :cond_4
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsAfterDelay()V

    goto :goto_3

    .line 832
    .restart local v8    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .restart local v9    # "curDC":I
    .restart local v10    # "dc":Lcom/android/internal/telephony/DriverCall;
    .restart local v11    # "dcSize":I
    .restart local v16    # "hasAnyCallDisconnected":Z
    .restart local v17    # "hasNonHangupStateChanged":Z
    .restart local v20    # "i":I
    .restart local v22    # "needsPollDelay":Z
    .restart local v23    # "newRinging":Lcom/android/internal/telephony/Connection;
    .restart local v24    # "newUnknown":Lcom/android/internal/telephony/Connection;
    .restart local v26    # "polledCalls":Ljava/util/List;
    .restart local v27    # "unknownConnectionAppeared":Z
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 876
    :catch_0
    move-exception v13

    .line 877
    .local v13, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v28, "GsmCallTracker"

    const-string v29, "unexpected error on hangup"

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 888
    .end local v13    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    if-eqz v28, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v28

    if-nez v28, :cond_7

    .line 889
    const-string v28, "MO/MT conflict! MO should be hangup by MD"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 893
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    new-instance v29, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, p0

    move/from16 v3, v20

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v29, v28, v20

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingCnap:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_8

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v28, v28, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingCnap:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/gsm/GsmConnection;->setCnapName(Ljava/lang/String;)V

    .line 898
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingCnap:Ljava/lang/String;

    .line 903
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    aget-object v29, v29, v20

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->DmCheckIfCallCanComing(Lcom/android/internal/telephony/gsm/GsmConnection;)Z

    move-result v7

    .line 908
    .local v7, "checkFlag":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    aget-object v29, v29, v20

    move-object/from16 v0, v28

    move/from16 v1, v20

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->setForwardingAddressToConnection(ILcom/android/internal/telephony/Connection;)V

    .line 911
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;

    move-result-object v18

    .line 912
    .local v18, "hoConnection":Lcom/android/internal/telephony/Connection;
    if-eqz v7, :cond_c

    if-eqz v18, :cond_c

    .line 922
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->isMultipartyBeforeHandover()Z

    move-result v28

    if-eqz v28, :cond_b

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v28

    if-nez v28, :cond_b

    .line 923
    const-string v28, "GsmCallTracker"

    const-string v29, "SRVCC: goes to conference case."

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v28, v28, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    aget-object v29, v29, v20

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v28

    if-eqz v28, :cond_9

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHandoverConnections:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 965
    .end local v7    # "checkFlag":Z
    .end local v18    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_9
    :goto_4
    const/16 v17, 0x1

    .line 821
    :cond_a
    :goto_5
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 931
    .restart local v7    # "checkFlag":Z
    .restart local v18    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_b
    const-string v28, "GsmCallTracker"

    const-string v29, "SRVCC: goes to normal call case."

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v28, v28, v20

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHandoverConnections:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    aget-object v29, v29, v20

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V

    goto :goto_4

    .line 937
    :cond_c
    if-eqz v7, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v28, v28, v20

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_d

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v23, v28, v20

    goto :goto_4

    .line 939
    :cond_d
    if-eqz v7, :cond_9

    .line 945
    const-string v28, "GsmCallTracker"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Phantom call appeared "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v0, v10, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v28, v0

    sget-object v29, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_e

    iget-object v0, v10, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v28, v0

    sget-object v29, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_e

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v28, v28, v20

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GsmConnection;->onConnectedInOrOut()V

    .line 953
    iget-object v0, v10, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v28, v0

    sget-object v29, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_e

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v28, v28, v20

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GsmConnection;->onStartedHolding()V

    .line 959
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v24, v28, v20

    .line 961
    const/16 v27, 0x1

    goto/16 :goto_4

    .line 966
    .end local v7    # "checkFlag":Z
    .end local v18    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_f
    if-eqz v8, :cond_13

    if-nez v10, :cond_13

    .line 969
    const-string v28, "case 2 : old Call disappear"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 972
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v28

    if-nez v28, :cond_11

    :cond_10
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v28

    if-eqz v28, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v28

    sget-object v29, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_12

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v28, v0

    sget-object v29, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 980
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v29, v28, v20

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->CallIndicationEnd()V

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->clearForwardingAddressVariables(I)V

    goto/16 :goto_5

    .line 995
    :cond_13
    if-eqz v8, :cond_15

    if-eqz v10, :cond_15

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v28

    if-nez v28, :cond_15

    .line 998
    const-string v28, "case 3 : old Call replaced"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    const/16 v28, 0x1

    move/from16 v0, v28

    iput v0, v10, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    new-instance v29, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, p0

    move/from16 v3, v20

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v29, v28, v20

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v28, v28, v20

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_14

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v23, v28, v20

    .line 1016
    :cond_14
    const/16 v17, 0x1

    goto/16 :goto_5

    .line 1017
    :cond_15
    if-eqz v8, :cond_a

    if-eqz v10, :cond_a

    .line 1020
    const-string v28, "case 4 : old Call update"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->getNumberPresentation()I

    move-result v28

    move/from16 v0, v28

    iput v0, v10, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 1029
    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v6

    .line 1030
    .local v6, "changed":Z
    if-nez v17, :cond_16

    if-eqz v6, :cond_17

    :cond_16
    const/16 v17, 0x1

    :goto_6
    goto/16 :goto_5

    :cond_17
    const/16 v17, 0x0

    goto :goto_6

    .line 1056
    .end local v6    # "changed":Z
    .end local v8    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v10    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    if-eqz v28, :cond_19

    .line 1057
    const-string v28, "GsmCallTracker"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Pending MO dropped before poll fg state:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1061
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1062
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    .line 1065
    :cond_19
    if-eqz v23, :cond_1a

    .line 1066
    const-string v28, "notifyNewRingingConnection"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 1071
    const-string v28, "ro.mtk_vt3g324m_support"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v29, "1"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1a

    .line 1072
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v28

    if-eqz v28, :cond_1a

    .line 1073
    const/16 v28, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->setVideoState(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1075
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v29, v0

    new-instance v30, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    move-object/from16 v0, v23

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v28

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;-><init>(I)V

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCall;->mVTProvider:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    .line 1077
    const-string v28, "GsmCallTracker"

    const-string v29, "handlePollCalls new GsmVTProvider"

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mVTProvider:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->getInterface()Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    move-result-object v14

    .line 1080
    .local v14, "gsmVideoCallProvider":Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;
    if-eqz v14, :cond_1a

    .line 1081
    new-instance v15, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    invoke-direct {v15, v14}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;-><init>(Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;)V

    .line 1083
    .local v15, "gsmVideoCallProviderWrapper":Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;
    const-string v28, "GsmCallTracker"

    const-string v29, "handlePollCalls new GsmVideoCallProviderWrapper"

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/Connection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    :try_end_4
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1101
    .end local v14    # "gsmVideoCallProvider":Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;
    .end local v15    # "gsmVideoCallProviderWrapper":Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;
    :cond_1a
    :goto_7
    :try_start_5
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "dropped during poll size = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    add-int/lit8 v20, v28, -0x1

    :goto_8
    if-ltz v20, :cond_20

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1106
    .restart local v8    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 1107
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->onHangupLocal()V

    .line 1111
    :cond_1b
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v28

    if-eqz v28, :cond_1e

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->getConnectTime()J

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-nez v28, :cond_1e

    .line 1114
    iget v0, v8, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1d

    .line 1115
    const/16 v5, 0x10

    .line 1121
    .local v5, "cause":I
    :goto_9
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "missed/rejected call, conn.cause="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget v0, v8, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1122
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "setting cause to "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1125
    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(I)Z

    move-result v28

    or-int v16, v16, v28

    .line 1102
    .end local v5    # "cause":I
    :cond_1c
    :goto_a
    add-int/lit8 v20, v20, -0x1

    goto/16 :goto_8

    .line 1087
    .end local v8    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :catch_1
    move-exception v12

    .line 1088
    .local v12, "e":Ljava/lang/ClassCastException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "cast to GsmConnection fail for newRinging "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1089
    .end local v12    # "e":Ljava/lang/ClassCastException;
    :catch_2
    move-exception v12

    .line 1090
    .local v12, "e":Landroid/os/RemoteException;
    const-string v28, "GsmCallTracker"

    const-string v29, "handlePollCalls new GsmVideoCallProviderWrapper failed"

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1117
    .end local v12    # "e":Landroid/os/RemoteException;
    .restart local v8    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1d
    const/4 v5, 0x1

    .restart local v5    # "cause":I
    goto :goto_9

    .line 1126
    .end local v5    # "cause":I
    :cond_1e
    iget v0, v8, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_1f

    iget v0, v8, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    move/from16 v28, v0

    const/16 v29, 0x7

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1c

    .line 1129
    :cond_1f
    const-string v28, "local hangup or invalid number"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1131
    iget v0, v8, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(I)Z

    move-result v28

    or-int v16, v16, v28

    goto :goto_a

    .line 1136
    .end local v8    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    move-object/from16 v28, v0

    if-eqz v28, :cond_21

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1138
    .local v19, "hostConn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_22

    .line 1143
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->restoreConferenceParticipantAddress()Z

    .line 1145
    const-string v28, "srvcc: notify new participant connections"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->notifyConferenceConnectionsConfigured(Ljava/util/ArrayList;)V

    .line 1168
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clear()V

    .line 1169
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    .line 1170
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEconfSrvccConnectionIds:[I

    .line 1175
    .end local v19    # "hostConn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHandoverConnections:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_25

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/Connection;

    .line 1176
    .restart local v18    # "hoConnection":Lcom/android/internal/telephony/Connection;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "handlePollCalls - disconnect hoConn= "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1177
    move-object/from16 v0, v18

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-object/from16 v28, v0

    const/16 v29, -0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(I)Z

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHandoverConnections:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1148
    .end local v18    # "hoConnection":Lcom/android/internal/telephony/Connection;
    .end local v21    # "i$":Ljava/util/Iterator;
    .restart local v19    # "hostConn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1152
    .local v25, "participant":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v28

    if-eqz v28, :cond_23

    .line 1154
    const-string v28, "srvcc: conference participant case."

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1163
    :goto_d
    const-string v28, "srvcc: only one connection, consider it as a normal call SRVCC"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_b

    .line 1158
    :cond_23
    const/16 v28, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConferenceParticipantAddress(I)Ljava/lang/String;

    move-result-object v4

    .line 1159
    .local v4, "address":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "srvcc: restore participant connection with address: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1160
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->updateConferenceParticipantAddress(Ljava/lang/String;)V

    goto :goto_d

    .line 1166
    .end local v4    # "address":Ljava/lang/String;
    .end local v25    # "participant":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_24
    const-string v28, "GsmCallTracker"

    const-string v29, "SRVCC: abnormal case, no participant connections."

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1182
    .end local v19    # "hostConn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .restart local v21    # "i$":Ljava/util/Iterator;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    move/from16 v28, v0

    if-nez v28, :cond_26

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v28, v0

    const/16 v29, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 1190
    :cond_26
    if-eqz v22, :cond_27

    .line 1191
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsAfterDelay()V

    .line 1199
    :cond_27
    if-nez v23, :cond_28

    if-nez v17, :cond_28

    if-eqz v16, :cond_29

    .line 1200
    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 1203
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 1205
    if-eqz v27, :cond_2a

    .line 1206
    const-string v28, "notifyUnknownConnection"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    .line 1210
    :cond_2a
    if-nez v17, :cond_2b

    if-nez v23, :cond_2b

    if-eqz v16, :cond_2c

    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHasPendingSwapRequest:Z

    move/from16 v28, v0

    if-nez v28, :cond_2c

    .line 1214
    const-string v28, "notifyPreciseCallStateChanged"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1219
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->getCurrentTotalConnections()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v28

    sget-object v29, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_2d

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v28, v0

    sget-object v29, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 1225
    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dumpState()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 1086
    .end local v21    # "i$":Ljava/util/Iterator;
    :catch_3
    move-exception v28

    goto/16 :goto_7
.end method

.method hangup(Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1340
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1341
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "no connections in call"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1345
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1346
    const-string v2, "GsmCallTracker"

    const-string v3, "hangup(GsmCall) hasPendingHangupRequest = true"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->ForceReleaseAllConnection(Lcom/android/internal/telephony/gsm/GsmCall;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1414
    :goto_0
    return-void

    .line 1353
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v2, :cond_2

    .line 1355
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->PendingHangupRequestInc()V

    .line 1356
    const-string v2, "(ringing) hangup waiting or background"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1357
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 1412
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 1413
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    goto :goto_0

    .line 1359
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v2, :cond_5

    .line 1361
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->PendingHangupRequestInc()V

    .line 1363
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->isDialingOrAlerting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1365
    const-string v2, "(foregnd) hangup dialing or alerting..."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    goto :goto_1

    .line 1381
    :cond_3
    const-string v2, "(foregnd) hangup active"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1384
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1385
    .local v1, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1386
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1387
    const-string v2, "(foregnd) hangup active Emergency call by connection index"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1388
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    goto :goto_1

    .line 1391
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_1

    .line 1394
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v2, :cond_7

    .line 1395
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1397
    const-string v2, "hangup all conns in background call"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1399
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V

    goto :goto_1

    .line 1402
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->PendingHangupRequestInc()V

    .line 1403
    const-string v2, "(backgnd) hangup waiting/background"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    goto/16 :goto_1

    .line 1408
    :cond_7
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GsmCall "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "does not belong to GsmCallTracker "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method hangup(Lcom/android/internal/telephony/gsm/GsmCall;I)V
    .locals 6
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;
    .param p2, "discRingingCallCause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1754
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1755
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "no connections in call"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1758
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1759
    const-string v2, "GsmCallTracker"

    const-string v3, "hangup(GsmCall) hasPendingHangupRequest = true"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->ForceReleaseNotRingingConnection(Lcom/android/internal/telephony/gsm/GsmCall;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1787
    :goto_0
    return-void

    .line 1765
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v2, :cond_3

    .line 1766
    const-string v2, "(ringing) hangup waiting or background"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1768
    const-string v2, "Hang up waiting or background call by connection index."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1769
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1770
    .local v0, "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 1777
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 1781
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v2, :cond_2

    .line 1782
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object v1, v2

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1783
    .local v1, "ringingConn":Lcom/android/internal/telephony/gsm/GsmConnection;
    iput p2, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    .line 1785
    .end local v1    # "ringingConn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    goto :goto_0

    .line 1773
    .end local v0    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GsmCall "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "does not belong to GsmCallTracker "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1272
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-eq v1, p0, :cond_0

    .line 1273
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to GsmCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1277
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-ne p1, v1, :cond_1

    .line 1281
    const-string v1, "hangup: set hangupPendingMO to true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1282
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    .line 1284
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->PendingHangupRequestReset()V

    .line 1302
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->onHangupLocal()V

    .line 1303
    return-void

    .line 1289
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v2

    const/16 v3, 0x15

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1291
    :catch_0
    move-exception v0

    .line 1295
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->PendingHangupRequestReset()V

    .line 1297
    const-string v1, "GsmCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmCallTracker WARN: hangup() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method hangupAll()V
    .locals 2

    .prologue
    .line 1792
    const-string v0, "hangupAll"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1793
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupAll(Landroid/os/Message;)V

    .line 1795
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1796
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 1798
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1799
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 1801
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1802
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 1804
    :cond_2
    return-void
.end method

.method hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 7
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;

    .prologue
    .line 1454
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1455
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1456
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1457
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1455
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1459
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v1    # "count":I
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 1460
    .local v2, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v4, "GsmCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hangupConnectionByIndex caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    .end local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_0
    return-void
.end method

.method hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)V
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1434
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1435
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1436
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1437
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    if-ne v3, p2, :cond_1

    .line 1438
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 1446
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    return-void

    .line 1435
    .restart local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1443
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hangupBgConnectionByIndex(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1445
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hangupRingingConnectionByIndex(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1449
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "no gsm index found"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method hangupForegroundResumeBackground()V
    .locals 2

    .prologue
    .line 1426
    const-string v0, "hangupForegroundResumeBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1428
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    .line 1430
    return-void
.end method

.method hangupWaitingOrBackground()V
    .locals 2

    .prologue
    .line 1418
    const-string v0, "hangupWaitingOrBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1420
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1422
    return-void
.end method

.method public isRejectedByMoms()Z
    .locals 1

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->MobileManagermentGetIsBlocking()Z

    move-result v0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1714
    const-string v0, "GsmCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmCallTracker][Phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    return-void
.end method

.method protected obtainCompleteMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 715
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected obtainCompleteMessage(I)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I

    .prologue
    .line 727
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    .line 728
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 729
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedsPoll:Z

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "obtainCompleteMessage: pendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needsPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 309
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 310
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 311
    return-void
.end method

.method public registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 298
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 299
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 300
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 287
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 288
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 289
    return-void
.end method

.method rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    .line 607
    return-void

    .line 605
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1307
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-eq v1, p0, :cond_0

    .line 1308
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to GsmCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1312
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1320
    :goto_0
    return-void

    .line 1314
    :catch_0
    move-exception v0

    .line 1317
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "GsmCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmCallTracker WARN: separate() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIncomingCallIndicationResponse(Z)V
    .locals 1
    .param p1, "accept"    # Z

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->CallIndicationResponse(Z)V

    .line 1808
    return-void
.end method

.method setMute(Z)V
    .locals 3
    .param p1, "mute"    # Z

    .prologue
    .line 1326
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    .line 1327
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    .line 1328
    return-void
.end method

.method switchWaitingOrHoldingAndActive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 613
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot be in the incoming state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHasPendingSwapRequest:Z

    if-nez v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupAfterHoldRequest:Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;->setToHangup()V

    .line 620
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    .line 622
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHasPendingSwapRequest:Z

    .line 626
    :cond_1
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 316
    return-void
.end method

.method public unregisterForVoiceCallIncomingIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 304
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 294
    return-void
.end method

.method declared-synchronized vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 8
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 356
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    move-result v4

    if-nez v4, :cond_0

    .line 357
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string v5, "cannot vtDial in current state"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 360
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canVtDial()Z

    move-result v4

    if-nez v4, :cond_1

    .line 361
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string v5, "cannot vtDial in current state"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 364
    :cond_1
    move-object v3, p1

    .line 365
    .local v3, "origNumber":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 367
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_2

    .line 369
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string v5, "cannot vtDial in current state"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 372
    :cond_2
    new-instance v4, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v4, v5, v6, p0, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 374
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    .line 375
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsVideo:Z

    .line 377
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x4e

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_6

    .line 381
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    const/4 v5, 0x7

    iput v5, v4, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    .line 385
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsWhenSafe()V

    .line 412
    :cond_4
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNumberConverted:Z

    if-eqz v4, :cond_5

    .line 413
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->setConverted(Ljava/lang/String;)V

    .line 414
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNumberConverted:Z

    .line 417
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 418
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 420
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v4

    .line 388
    :cond_6
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 390
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x16

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, p2, p3, v6}, Lcom/android/internal/telephony/CommandsInterface;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 393
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->setVideoState(I)V

    .line 396
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    new-instance v5, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    invoke-direct {v5}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;-><init>()V

    iput-object v5, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mVTProvider:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    .line 397
    const-string v4, "GsmCallTracker"

    const-string v5, "vtDial new GsmVTProvider"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mVTProvider:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->getInterface()Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    move-result-object v1

    .line 401
    .local v1, "gsmVideoCallProvider":Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;
    if-eqz v1, :cond_4

    .line 402
    new-instance v2, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    invoke-direct {v2, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;-><init>(Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;)V

    .line 404
    .local v2, "gsmVideoCallProviderWrapper":Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;
    const-string v4, "GsmCallTracker"

    const-string v5, "vtDial new GsmVideoCallProviderWrapper"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 407
    .end local v1    # "gsmVideoCallProvider":Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;
    .end local v2    # "gsmVideoCallProviderWrapper":Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "GsmCallTracker"

    const-string v5, "vtDial new GsmVideoCallProviderWrapper failed"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 425
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method
