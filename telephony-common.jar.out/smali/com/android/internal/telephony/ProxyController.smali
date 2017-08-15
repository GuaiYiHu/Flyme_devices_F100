.class public Lcom/android/internal/telephony/ProxyController;
.super Ljava/lang/Object;
.source "ProxyController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;
    }
.end annotation


# static fields
.field private static final EVENT_APPLY_RC_RESPONSE:I = 0x3

.field private static final EVENT_FINISH_RC_RESPONSE:I = 0x4

.field private static final EVENT_NOTIFICATION_RC_CHANGED:I = 0x1

.field private static final EVENT_PHONE_RAT_FAMILY_CHANGED_NOTIFY:I = 0x1

.field private static final EVENT_RADIO_AVAILABLE:I = 0x6

.field private static final EVENT_SET_PHONE_RAT_FAMILY_RESPONSE:I = 0x2

.field private static final EVENT_START_RC_RESPONSE:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "ProxyController"

.field private static final RC_RETRY_CAUSE_CAPABILITY_SWITCHING:I = 0x2

.field private static final RC_RETRY_CAUSE_IN_CALL:I = 0x3

.field private static final RC_RETRY_CAUSE_NONE:I = 0x0

.field private static final RC_RETRY_CAUSE_RADIO_UNAVAILABLE:I = 0x4

.field private static final RC_RETRY_CAUSE_WORLD_MODE_SWITCHING:I = 0x1

.field private static final SET_PHONE_RAT_FAMILY_STATUS_CHANGING:I = 0x1

.field private static final SET_PHONE_RAT_FAMILY_STATUS_DONE:I = 0x2

.field private static final SET_PHONE_RAT_FAMILY_STATUS_IDLE:I = 0x0

.field private static final SET_RC_STATUS_APPLYING:I = 0x3

.field private static final SET_RC_STATUS_FAIL:I = 0x5

.field private static final SET_RC_STATUS_IDLE:I = 0x0

.field private static final SET_RC_STATUS_STARTED:I = 0x2

.field private static final SET_RC_STATUS_STARTING:I = 0x1

.field private static final SET_RC_STATUS_SUCCESS:I = 0x4

.field private static final SET_RC_TIMEOUT_WAITING_MSEC:I = 0xafc8

.field private static sProxyController:Lcom/android/internal/telephony/ProxyController;


# instance fields
.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

.field private mHandler:Landroid/os/Handler;

.field private mHasRegisterPhoneStateReceiver:Z

.field private mIsCapSwitching:Z

.field private mLogicalModemIds:[Ljava/lang/String;

.field private mNewRadioAccessFamily:[I

.field mNextRafs:[Landroid/telephony/RadioAccessFamily;

.field private mOldRadioAccessFamily:[I

.field private mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneSubInfoController:Lcom/android/internal/telephony/PhoneSubInfoController;

.field private mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

.field private mRadioAccessFamilyStatusCounter:I

.field private mRadioCapabilitySessionId:I

.field private mSetRadioAccessFamilyStatus:[I

.field mSetRadioCapabilityRunnable:Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;

.field private mSetRafRetryCause:I

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUiccPhoneBookController:Lcom/android/internal/telephony/UiccPhoneBookController;

.field private mUiccSmsController:Lcom/android/internal/telephony/UiccSmsController;

.field private mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private onExceptionCount:I


# direct methods
.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/PhoneProxy;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/PhoneProxy;
    .param p3, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p4, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 146
    iput-boolean v4, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterPhoneStateReceiver:Z

    .line 147
    iput-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 152
    iput v4, p0, Lcom/android/internal/telephony/ProxyController;->onExceptionCount:I

    .line 533
    new-instance v2, Lcom/android/internal/telephony/ProxyController$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ProxyController$1;-><init>(Lcom/android/internal/telephony/ProxyController;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    .line 952
    new-instance v2, Lcom/android/internal/telephony/ProxyController$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ProxyController$2;-><init>(Lcom/android/internal/telephony/ProxyController;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    .line 169
    const-string v2, "Constructor - Enter"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 171
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    .line 172
    iput-object p2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 173
    iput-object p3, p0, Lcom/android/internal/telephony/ProxyController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 174
    iput-object p4, p0, Lcom/android/internal/telephony/ProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 176
    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DctController;->makeDctController([Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    .line 178
    new-instance v2, Lcom/android/internal/telephony/UiccPhoneBookController;

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/UiccPhoneBookController;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mUiccPhoneBookController:Lcom/android/internal/telephony/UiccPhoneBookController;

    .line 179
    new-instance v2, Lcom/android/internal/telephony/PhoneSubInfoController;

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneSubInfoController:Lcom/android/internal/telephony/PhoneSubInfoController;

    .line 180
    new-instance v2, Lcom/android/internal/telephony/UiccSmsController;

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/UiccSmsController;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mUiccSmsController:Lcom/android/internal/telephony/UiccSmsController;

    .line 181
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    .line 182
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    .line 183
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    .line 184
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mLogicalModemIds:[Ljava/lang/String;

    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mLogicalModemIds:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;-><init>(Lcom/android/internal/telephony/ProxyController;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioCapabilityRunnable:Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;

    .line 194
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 195
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v2, "ProxyController"

    invoke-virtual {v1, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 196
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 199
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    .line 200
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 201
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/internal/telephony/PhoneProxy;->registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    :cond_1
    const-string v2, "Constructor - Exit"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onStartRadioCapabilityResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/ProxyController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/ProxyController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/ProxyController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->sendCapabilityFailBroadcast()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onApplyRadioCapabilityResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onNotificationRadioCapabilityChanged(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onRetryWhenRadioAvailable(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/ProxyController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/ProxyController;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/ProxyController;)[Lcom/android/internal/telephony/PhoneProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/ProxyController;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/ProxyController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ProxyController;->issueFinish(II)V

    return-void
.end method

.method private checkAllRadioCapabilitySuccess()Z
    .locals 4

    .prologue
    .line 852
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v2

    .line 853
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 854
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v1, v1, v0

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 855
    const/4 v1, 0x0

    monitor-exit v2

    .line 858
    :goto_1
    return v1

    .line 853
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 858
    :cond_1
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_1

    .line 859
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearTransaction()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 835
    const-string v1, "clearTransaction"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 836
    iput-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mIsCapSwitching:Z

    .line 837
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v2

    .line 838
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearTransaction: phoneId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " status=IDLE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 840
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v3, 0x0

    aput v3, v1, v0

    .line 841
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    const/4 v3, 0x0

    aput v3, v1, v0

    .line 842
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    const/4 v3, 0x0

    aput v3, v1, v0

    .line 838
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 845
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 846
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 848
    :cond_1
    monitor-exit v2

    .line 849
    return-void

    .line 848
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private completeRadioCapabilityTransaction()V
    .locals 9

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->checkAllRadioCapabilitySuccess()Z

    move-result v6

    .line 795
    .local v6, "success":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onFinishRadioCapabilityResponse: success="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 796
    if-eqz v6, :cond_3

    .line 797
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 798
    .local v3, "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v7, v7

    if-ge v1, v7, :cond_0

    .line 799
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v5

    .line 800
    .local v5, "raf":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "radioAccessFamily["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 801
    new-instance v4, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v4, v1, v5}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    .line 802
    .local v4, "phoneRC":Landroid/telephony/RadioAccessFamily;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 804
    .end local v4    # "phoneRC":Landroid/telephony/RadioAccessFamily;
    .end local v5    # "raf":I
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 805
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "rafs"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 810
    .end local v1    # "i":I
    .end local v3    # "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->updateIccid([Lcom/android/internal/telephony/Phone;)V

    .line 812
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    .line 815
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 817
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 819
    const-string v7, "has next capability switch request,trigger it"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 821
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 822
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->sendCapabilityFailBroadcast()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    :cond_1
    :goto_2
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 828
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 831
    :cond_2
    return-void

    .line 808
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->sendCapabilityFailBroadcast()V

    goto :goto_2
.end method

.method public static getInstance()Lcom/android/internal/telephony/ProxyController;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/PhoneProxy;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ProxyController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneProxy"    # [Lcom/android/internal/telephony/PhoneProxy;
    .param p2, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 157
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/android/internal/telephony/ProxyController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/ProxyController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/PhoneProxy;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    .line 160
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    return-object v0
.end method

.method private issueFinish(II)V
    .locals 10
    .param p1, "status"    # I
    .param p2, "sessionId"    # I

    .prologue
    const/4 v9, 0x5

    .line 765
    iget-object v8, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v8

    .line 766
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 767
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v0, v0, v1

    if-eq v0, v9, :cond_1

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "issueFinish: phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " sessionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 770
    const/4 v3, 0x4

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aget v4, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mLogicalModemIds:[Ljava/lang/String;

    aget-object v5, v0, v1

    const/4 v7, 0x4

    move-object v0, p0

    move v2, p2

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    .line 778
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "issueFinish: phoneId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " status: FAIL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v2, 0x5

    aput v2, v0, v1

    .line 766
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 784
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "issueFinish: Ignore already FAIL, Phone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " sessionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 788
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 789
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 918
    const-string v0, "ProxyController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 922
    const-string v0, "ProxyController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    return-void
.end method

.method private onApplyRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 642
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 643
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/ProxyController;->onExceptionCount:I

    if-nez v4, :cond_0

    .line 645
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/ProxyController;->onExceptionCount:I

    .line 647
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApplyRadioCapabilityResponse got exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 648
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 649
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 650
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 651
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    .line 681
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 654
    :cond_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v3, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/RadioCapability;

    .line 655
    .local v3, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v4

    iget v5, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v4, v5, :cond_2

    .line 656
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApplyRadioCapabilityResponse: Ignore session="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 660
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApplyRadioCapabilityResponse: rc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 661
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v4, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_5

    .line 662
    iget-object v5, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v5

    .line 663
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onApplyRadioCapabilityResponse: Error response session="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v3}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v1

    .line 665
    .local v1, "id":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 666
    const/16 v4, 0xa

    if-ne v1, v4, :cond_3

    .line 668
    const/4 v1, 0x0

    .line 670
    :cond_3
    const/16 v4, 0xb

    if-ne v1, v4, :cond_4

    .line 672
    const/4 v1, 0x1

    .line 675
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onApplyRadioCapabilityResponse: phoneId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " status=FAIL"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 676
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v6, 0x5

    aput v6, v4, v1

    .line 677
    monitor-exit v5

    goto/16 :goto_0

    .end local v1    # "id":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 679
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApplyRadioCapabilityResponse: Valid start expecting notification rc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onNotificationRadioCapabilityChanged(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 688
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v1, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/RadioCapability;

    .line 689
    .local v1, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v4

    iget v5, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v4, v5, :cond_1

    .line 690
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNotificationRadioCapabilityChanged: Ignore session="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 740
    :goto_0
    return-void

    .line 694
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v5

    .line 695
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNotificationRadioCapabilityChanged: rc="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v4

    iget v6, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v4, v6, :cond_2

    .line 698
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNotificationRadioCapabilityChanged: Ignore session="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " rc="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 700
    monitor-exit v5

    goto :goto_0

    .line 739
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 703
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v0

    .line 704
    .local v0, "id":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 705
    const/16 v4, 0xa

    if-ne v0, v4, :cond_3

    .line 707
    const/4 v0, 0x0

    .line 709
    :cond_3
    const/16 v4, 0xb

    if-ne v0, v4, :cond_4

    .line 711
    const/4 v0, 0x1

    .line 714
    :cond_4
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v4, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getStatus()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_7

    .line 716
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNotificationRadioCapabilityChanged: phoneId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " status=FAIL"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 717
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v6, 0x5

    aput v6, v4, v0

    .line 724
    :goto_1
    iget v4, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 725
    iget v4, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez v4, :cond_6

    .line 726
    const-string v4, "onNotificationRadioCapabilityChanged: removing callback from handler"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 727
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioCapabilityRunnable:Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 728
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->resetRadioAccessFamilyStatusCounter()V

    .line 729
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->checkAllRadioCapabilitySuccess()Z

    move-result v3

    .line 730
    .local v3, "success":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNotificationRadioCapabilityChanged: APPLY URC success="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 732
    if-eqz v3, :cond_8

    .line 733
    const/4 v2, 0x1

    .line 737
    .local v2, "status":I
    :goto_2
    iget v4, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/ProxyController;->issueFinish(II)V

    .line 739
    .end local v2    # "status":I
    .end local v3    # "success":Z
    :cond_6
    monitor-exit v5

    goto/16 :goto_0

    .line 719
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNotificationRadioCapabilityChanged: phoneId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " status=SUCCESS"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 720
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v6, 0x4

    aput v6, v4, v0

    .line 721
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/PhoneProxy;->setRadioAccessFamily(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 735
    .restart local v3    # "success":Z
    :cond_8
    const/4 v2, 0x2

    .restart local v2    # "status":I
    goto :goto_2
.end method

.method private onRetryWhenRadioAvailable(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRetryWhenRadioAvailable,mSetRafRetryCause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 944
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 946
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 947
    :catch_0
    move-exception v0

    .line 948
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private onStartRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 570
    iget-object v13, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v13

    .line 571
    :try_start_0
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 572
    .local v8, "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->onExceptionCount:I

    if-nez v0, :cond_0

    .line 574
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->onExceptionCount:I

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartRadioCapabilityResponse got exception="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 578
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
    .local v10, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 580
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    .line 581
    monitor-exit v13

    .line 635
    .end local v10    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/telephony/RadioCapability;

    .line 584
    .local v11, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v0

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v0, v2, :cond_2

    .line 585
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartRadioCapabilityResponse: Ignore session="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " rc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 587
    monitor-exit v13

    goto :goto_0

    .line 634
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 589
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    .restart local v11    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 590
    invoke-virtual {v11}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v9

    .line 591
    .local v9, "id":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 592
    const/16 v0, 0xa

    if-ne v9, v0, :cond_3

    .line 594
    const/4 v9, 0x0

    .line 596
    :cond_3
    const/16 v0, 0xb

    if-ne v9, v0, :cond_4

    .line 598
    const/4 v9, 0x1

    .line 601
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_6

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartRadioCapabilityResponse: Error response session="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartRadioCapabilityResponse: phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " status=FAIL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v2, 0x5

    aput v2, v0, v9

    .line 610
    :goto_1
    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez v0, :cond_5

    .line 611
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->resetRadioAccessFamilyStatusCounter()V

    .line 612
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->checkAllRadioCapabilitySuccess()Z

    move-result v12

    .line 613
    .local v12, "success":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartRadioCapabilityResponse: success="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 614
    if-nez v12, :cond_7

    .line 615
    const/4 v0, 0x2

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ProxyController;->issueFinish(II)V

    .line 634
    .end local v12    # "success":Z
    :cond_5
    monitor-exit v13

    goto/16 :goto_0

    .line 606
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartRadioCapabilityResponse: phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " status=STARTED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v2, 0x2

    aput v2, v0, v9

    goto :goto_1

    .line 619
    .restart local v12    # "success":Z
    :cond_7
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 620
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aget v4, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mLogicalModemIds:[Ljava/lang/String;

    aget-object v5, v0, v1

    const/4 v6, 0x0

    const/4 v7, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartRadioCapabilityResponse: phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " status=APPLYING"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 619
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private registerPhoneStateReceiver()V
    .locals 3

    .prologue
    .line 983
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 984
    const-string v1, "registerPhoneStateReceiver, context is null => return"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 991
    :goto_0
    return-void

    .line 987
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 988
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 989
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 990
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterPhoneStateReceiver:Z

    goto :goto_0
.end method

.method private resetRadioAccessFamilyStatusCounter()V
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 864
    return-void
.end method

.method private sendCapabilityFailBroadcast()V
    .locals 2

    .prologue
    .line 977
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 978
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 979
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 981
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private sendRadioCapabilityRequest(IIIILjava/lang/String;II)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "rcPhase"    # I
    .param p4, "radioFamily"    # I
    .param p5, "logicalModemId"    # Ljava/lang/String;
    .param p6, "status"    # I
    .param p7, "eventId"    # I

    .prologue
    .line 868
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    .line 870
    .local v0, "requestRC":Lcom/android/internal/telephony/RadioCapability;
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V

    .line 872
    return-void
.end method

.method private unRegisterPhoneStateReceiver()V
    .locals 2

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 994
    const-string v0, "unRegisterPhoneStateReceiver, context is null => return"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 999
    :goto_0
    return-void

    .line 997
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 998
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterPhoneStateReceiver:Z

    goto :goto_0
.end method


# virtual methods
.method public disableDataConnectivity(ILandroid/os/Message;)V
    .locals 2
    .param p1, "sub"    # I
    .param p2, "dataCleanedUpMsg"    # Landroid/os/Message;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setInternalDataEnabled(ZLandroid/os/Message;)V

    .line 218
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 927
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DctController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :goto_0
    return-void

    .line 928
    :catch_0
    move-exception v0

    .line 929
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public enableDataConnectivity(I)V
    .locals 2
    .param p1, "sub"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->setInternalDataEnabled(Z)V

    .line 213
    return-void
.end method

.method public getRadioAccessFamily(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 259
    const/4 v0, 0x1

    .line 261
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v0

    goto :goto_0
.end method

.method public isCapabilitySwitching()Z
    .locals 1

    .prologue
    .line 939
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mIsCapSwitching:Z

    return v0
.end method

.method public isDataDisconnected(I)Z
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 241
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 243
    .local v1, "phoneId":I
    if-ltz v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 245
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .end local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v2

    .line 247
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method onFinishRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 747
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/RadioCapability;

    .line 748
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v1, v2, :cond_1

    .line 749
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishRadioCapabilityResponse: Ignore session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 761
    :goto_0
    return-void

    .line 753
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v2

    .line 754
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onFinishRadioCapabilityResponse mRadioAccessFamilyStatusCounter="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 756
    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 757
    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez v1, :cond_2

    .line 758
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 760
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 225
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 227
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneProxy;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 230
    :cond_0
    return-void
.end method

.method public setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    .locals 25
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;

    .prologue
    .line 274
    move-object/from16 v0, p1

    array-length v2, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v4, v4

    if-eq v2, v4, :cond_0

    .line 275
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Length of input rafs must equal to total phone count"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    :cond_0
    const-string v2, "gsm.gcf.testmode"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 279
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 280
    const-string v2, "skip switching because FTA mode"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 281
    const/4 v2, 0x1

    .line 530
    :goto_0
    return v2

    .line 284
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_3

    .line 286
    const-string v2, "setCapability in calling, fail to set RAT for phones"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 287
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterPhoneStateReceiver:Z

    if-nez v2, :cond_2

    .line 288
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->registerPhoneStateReceiver()V

    .line 290
    :cond_2
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 291
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 292
    const/4 v2, 0x0

    goto :goto_0

    .line 293
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    .line 294
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterPhoneStateReceiver:Z

    if-eqz v2, :cond_4

    .line 295
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->unRegisterPhoneStateReceiver()V

    .line 296
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 297
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 300
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 303
    .local v12, "airplaneMode":I
    if-lez v12, :cond_5

    .line 304
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "airplane mode is on, fail to set RAT for phones"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 307
    :cond_5
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v2, v2

    if-ge v15, v2, :cond_7

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->isRadioAvailable()Z

    move-result v2

    if-nez v2, :cond_6

    .line 309
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 307
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 313
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/ProxyController;->mIsCapSwitching:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_8

    .line 315
    const-string v2, "keep it and return,because capability swithing"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 316
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 317
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 318
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 319
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_9

    .line 320
    const-string v2, "setCapability, mIsCapSwitching is not switching, can switch"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 321
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 322
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 324
    :cond_9
    const-string v2, "persist.radio.simswitch"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 327
    .local v23, "switchStatus":I
    const/4 v14, 0x0

    .line 328
    .local v14, "bIsboth3G":Z
    const/4 v13, 0x0

    .line 329
    .local v13, "bIsMajorPhone":Z
    const/16 v20, 0x0

    .line 330
    .local v20, "newMajorPhoneId":I
    const/4 v15, 0x0

    :goto_2
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v15, v2, :cond_11

    .line 331
    const/4 v13, 0x0

    .line 332
    const-string v2, "ro.mtk_lte_support"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_d

    .line 333
    aget-object v2, p1, v15

    invoke-virtual {v2}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v2

    and-int/lit16 v2, v2, 0x4000

    const/16 v4, 0x4000

    if-ne v2, v4, :cond_a

    .line 335
    const/4 v13, 0x1

    .line 343
    :cond_a
    :goto_3
    if-eqz v13, :cond_10

    .line 344
    aget-object v2, p1, v15

    invoke-virtual {v2}, Landroid/telephony/RadioAccessFamily;->getPhoneId()I

    move-result v20

    .line 345
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 346
    const/16 v2, 0xa

    move/from16 v0, v20

    if-ne v0, v2, :cond_b

    .line 348
    const/16 v20, 0x0

    .line 350
    :cond_b
    const/16 v2, 0xb

    move/from16 v0, v20

    if-ne v0, v2, :cond_c

    .line 352
    const/16 v20, 0x1

    .line 355
    :cond_c
    add-int/lit8 v2, v23, -0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_e

    .line 356
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 357
    const-string v2, "no change, skip setRadioCapability"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 358
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 359
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 360
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 361
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 338
    :cond_d
    aget-object v2, p1, v15

    invoke-virtual {v2}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_a

    .line 340
    const/4 v13, 0x1

    goto :goto_3

    .line 363
    :cond_e
    if-eqz v14, :cond_f

    .line 364
    const-string v2, "set more than one 3G phone, fail"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 365
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "input parameter is incorrect"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 367
    :cond_f
    const/4 v14, 0x1

    .line 330
    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 371
    :cond_11
    if-nez v14, :cond_12

    .line 372
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "input parameter is incorrect - no 3g phone"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    :cond_12
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 375
    const/16 v16, 0x0

    .line 376
    .local v16, "isSvlteModeSwitching":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isSvlteModeSwitching()Z

    move-result v16

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRadioCapability,and isSvlteModeSwitching = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 378
    if-eqz v16, :cond_13

    .line 380
    const-string v2, "setRadioCapability,ModeSwitching wait for next trigger"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 381
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 383
    :cond_13
    const-string v2, "ro.operator.optr"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 384
    .local v11, "OPTR":Ljava/lang/String;
    const-string v2, "ro.operator.seg"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 385
    .local v10, "OPSEG":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OPTR = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OPSEG = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 387
    const-string v2, "OP09"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "SEGDEFAULT"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 388
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSimContainsCdmaApp(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 389
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_14

    .line 390
    const-string v2, "CDMA sim is inserted in slot1, skip sim switch"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 391
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 392
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 395
    :cond_14
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_16

    .line 397
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_16

    .line 399
    const-string v2, "ril.iccid.sim1"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 400
    .local v22, "sim1IccId":Ljava/lang/String;
    const-string v2, "N/A"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 401
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 402
    const-string v2, "want to switch 3/4G to GSMphone in SVLTE mode, skip it"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 403
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 409
    .end local v22    # "sim1IccId":Ljava/lang/String;
    :cond_15
    const-string v2, "Non OP09 A project follow OM project rule"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 414
    .end local v10    # "OPSEG":Ljava/lang/String;
    .end local v11    # "OPTR":Ljava/lang/String;
    .end local v16    # "isSvlteModeSwitching":Z
    :cond_16
    const-string v2, "ro.mtk_external_sim_support"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_19

    .line 415
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v18

    .line 416
    .local v18, "mainPhoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 417
    const/16 v2, 0xa

    move/from16 v0, v18

    if-ne v0, v2, :cond_17

    .line 418
    const/16 v18, 0x0

    .line 420
    :cond_17
    const/16 v2, 0xb

    move/from16 v0, v18

    if-ne v0, v2, :cond_18

    .line 421
    const/16 v18, 0x1

    .line 424
    :cond_18
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v2, "gsm.external.sim.enabled"

    const-string v4, "0"

    move/from16 v0, v18

    invoke-static {v0, v2, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 427
    .local v17, "isVsimEnabledOnMain":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v2, "gsm.external.sim.inserted"

    const-string v4, "0"

    move/from16 v0, v18

    invoke-static {v0, v2, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 431
    .local v19, "mainPhoneIdSimType":Ljava/lang/String;
    const-string v2, "1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 432
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "vsim enabled, can\'t switch to another sim!"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 437
    .end local v17    # "isVsimEnabledOnMain":Ljava/lang/String;
    .end local v18    # "mainPhoneId":I
    .end local v19    # "mainPhoneIdSimType":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isNeedSwitchInOpPackage([Lcom/android/internal/telephony/Phone;[Landroid/telephony/RadioAccessFamily;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 449
    const-string v2, "should not be here...!!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 450
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 439
    :pswitch_0
    const-string v2, "do setRadioCapability"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v4

    .line 456
    const/4 v15, 0x0

    :goto_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v2, v2

    if-ge v15, v2, :cond_1b

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRadioCapability: mSetRadioAccessFamilyStatus["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "]="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v5, v5, v15

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v2, v2, v15

    if-eqz v2, :cond_1a

    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRadioCapability: Phone["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "] is not idle. Rejecting request."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->loge(Ljava/lang/String;)V

    .line 462
    const/4 v2, 0x0

    monitor-exit v4

    goto/16 :goto_0

    .line 465
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 442
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 443
    const-string v2, "no change in op check, skip setRadioCapability"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 444
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 446
    :pswitch_2
    const-string v2, "Sim status/info is not ready, skip setRadioCapability"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 447
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 456
    :cond_1a
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 465
    :cond_1b
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 467
    const-string v2, "set ril.cdma.switch.needupdate to 1"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 468
    const-string v2, "ril.cdma.switch.needupdate"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v2, "ril.cdma.switching"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_1c
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 474
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getWorldPhone()Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    move-result-object v2

    move/from16 v0, v20

    invoke-interface {v2, v0}, Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;->notifyRadioCapabilityChange(I)V

    .line 477
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioCapabilityRunnable:Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->setTimeoutState(I)V

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioCapabilityRunnable:Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;

    const-wide/32 v6, 0xafc8

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 490
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/ProxyController;->mIsCapSwitching:Z

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    move-object/from16 v24, v0

    monitor-enter v24

    .line 492
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRadioCapability: new request session id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 493
    move-object/from16 v0, p1

    array-length v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 494
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/ProxyController;->onExceptionCount:I

    .line 495
    const/4 v15, 0x0

    :goto_5
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v15, v2, :cond_20

    .line 496
    aget-object v2, p1, v15

    invoke-virtual {v2}, Landroid/telephony/RadioAccessFamily;->getPhoneId()I

    move-result v3

    .line 497
    .local v3, "phoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 498
    const/16 v2, 0xa

    if-ne v3, v2, :cond_1e

    .line 500
    const/4 v3, 0x0

    .line 502
    :cond_1e
    const/16 v2, 0xb

    if-ne v3, v2, :cond_1f

    .line 504
    const/4 v3, 0x1

    .line 507
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRadioCapability: phoneId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " status=STARTING"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v4, 0x1

    aput v4, v2, v3

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v4

    aput v4, v2, v3

    .line 510
    aget-object v2, p1, v15

    invoke-virtual {v2}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v21

    .line 514
    .local v21, "requestedRaf":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aput v21, v2, v3

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRadioCapability: mOldRadioAccessFamily["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aget v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRadioCapability: mNewRadioAccessFamily["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aget v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 519
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aget v6, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mLogicalModemIds:[Ljava/lang/String;

    aget-object v7, v2, v3

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    .line 495
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    .line 528
    .end local v3    # "phoneId":I
    .end local v21    # "requestedRaf":I
    :cond_20
    monitor-exit v24

    .line 530
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 528
    :catchall_1
    move-exception v2

    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 437
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public unregisterForAllDataDisconnected(ILandroid/os/Handler;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 233
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 235
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    .line 238
    :cond_0
    return-void
.end method

.method public updateCurrentCarrierInProvider(I)V
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateCurrentCarrierInProvider()Z

    .line 222
    return-void
.end method

.method public updateDataConnectionTracker(I)V
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateDataConnectionTracker()V

    .line 209
    return-void
.end method
