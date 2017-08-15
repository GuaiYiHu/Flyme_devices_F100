.class public Lcom/mediatek/internal/telephony/ImsSwitchController;
.super Landroid/os/Handler;
.source "ImsSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;
    }
.end annotation


# static fields
.field static final DEFAULT_IMS_STATE:I = 0x0

.field static final DEFAULT_INVALID_PHONE_ID:I = -0x1

.field static final DEFAULT_MAJOR_CAPABILITY_PHONE_ID:I = 0x0

.field protected static final EVENT_CONNECTIVITY_CHANGE:I = 0x6

.field protected static final EVENT_DC_SWITCH_STATE_CHANGE:I = 0x5

.field protected static final EVENT_RADIO_AVAILABLE_PHONE1:I = 0x2

.field protected static final EVENT_RADIO_AVAILABLE_PHONE2:I = 0x4

.field protected static final EVENT_RADIO_NOT_AVAILABLE_PHONE1:I = 0x1

.field protected static final EVENT_RADIO_NOT_AVAILABLE_PHONE2:I = 0x3

.field static final LOG_TAG:Ljava/lang/String; = "ImsSwitchController"

.field private static final PROPERTY_IMS_VIDEO_ENALBE:Ljava/lang/String; = "persist.mtk.ims.video.enable"

.field private static final PROPERTY_VOLTE_ENALBE:Ljava/lang/String; = "persist.mtk.volte.enable"

.field private static final PROPERTY_WFC_ENALBE:Ljava/lang/String; = "persist.mtk.wfc.enable"

.field private static mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;


# instance fields
.field private final DISABLE_WIFI_FLIGHTMODE:I

.field private final DISABLE_WIFI_SETTING:I

.field private final NW_SUB_TYPE_IMS:Ljava/lang/String;

.field private final NW_TYPE_WIFI:Ljava/lang/String;

.field private REASON_INVALID:I

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsInVoLteCall:Z

.field protected final mLock:Ljava/lang/Object;

.field private mNeedTurnOffWifi:Z

.field private mPhoneCount:I

.field private mRadioPowerIf:Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;

.field private mReason:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneCount"    # I
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 89
    iput-object v5, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .line 91
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    .line 92
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mNeedTurnOffWifi:Z

    .line 93
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->REASON_INVALID:I

    .line 94
    iget v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->REASON_INVALID:I

    iput v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mReason:I

    .line 95
    iput v4, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->DISABLE_WIFI_FLIGHTMODE:I

    .line 96
    iput v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->DISABLE_WIFI_SETTING:I

    .line 97
    const-string v1, "Wi-Fi"

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->NW_TYPE_WIFI:Ljava/lang/String;

    .line 98
    const-string v1, "IMS"

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->NW_SUB_TYPE_IMS:Ljava/lang/String;

    .line 100
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    .line 377
    new-instance v1, Lcom/mediatek/internal/telephony/ImsSwitchController$2;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ImsSwitchController$2;-><init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    const-string v1, "Initialize ImsSwitchController"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    .line 123
    iput-object p3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 124
    iput p2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mPhoneCount:I

    .line 127
    const-string v1, "ro.mtk_ims_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ro.mtk_tc1_feature"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v1, "ro.mtk_wfc_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    new-instance v1, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;-><init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mRadioPowerIf:Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;

    .line 140
    const-string v1, "ImsSwitchController"

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mRadioPowerIf:Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->registerForRadioPowerChange(Ljava/lang/String;Lcom/mediatek/internal/telephony/IRadioPower;)V

    .line 142
    new-instance v1, Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-direct {v1, p1}, Lcom/mediatek/internal/telephony/ims/ImsService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    .line 143
    const-string v1, "ims"

    sget-object v2, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ims/ImsService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 145
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v3

    invoke-interface {v1, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 146
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v3

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 148
    iget v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mPhoneCount:I

    if-le v1, v4, :cond_1

    .line 149
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v4

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 150
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v4

    const/4 v2, 0x4

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 152
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoWiFiEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->registerForWfcSwitchChange()V

    .line 156
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/ImsSwitchController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/internal/telephony/ImsSwitchController;IILcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->onReceivePhoneStateChange(IILcom/android/internal/telephony/PhoneConstants$State;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/internal/telephony/ImsSwitchController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;
    .param p1, "x1"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->onReceiveWifiStateChange(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/ImsSwitchController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoLTEEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/ImsSwitchController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoWiFiEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/ImsSwitchController;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/ImsSwitchController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;

    .prologue
    .line 82
    iget v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mReason:I

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/internal/telephony/ImsSwitchController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mReason:I

    return p1
.end method

.method static synthetic access$602(Lcom/mediatek/internal/telephony/ImsSwitchController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mNeedTurnOffWifi:Z

    return p1
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/ImsSwitchController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->isImsDeregisterRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/ImsSwitchController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->confirmPreCheckDetachIfNeed()V

    return-void
.end method

.method static synthetic access$902(Lcom/mediatek/internal/telephony/ImsSwitchController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    return p1
.end method

.method private confirmPreCheckDetachIfNeed()V
    .locals 3

    .prologue
    .line 368
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    if-eqz v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmPreCheckDetachIfNeed, phoneId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->confirmPreCheckDetach()Z

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .line 374
    :cond_0
    monitor-exit v1

    .line 375
    return-void

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private eventIdtoString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "str":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 446
    :goto_0
    return-object v0

    .line 428
    :pswitch_0
    const-string v0, "RADIO_NOT_AVAILABLE_PHONE1"

    .line 429
    goto :goto_0

    .line 431
    :pswitch_1
    const-string v0, "RADIO_NOT_AVAILABLE_PHONE2"

    .line 432
    goto :goto_0

    .line 434
    :pswitch_2
    const-string v0, "RADIO_AVAILABLE_PHONE1"

    .line 435
    goto :goto_0

    .line 437
    :pswitch_3
    const-string v0, "RADIO_AVAILABLE_PHONE2"

    .line 438
    goto :goto_0

    .line 440
    :pswitch_4
    const-string v0, "DC_SWITCH_STATE_CHANGE"

    .line 441
    goto :goto_0

    .line 426
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleConnectivityChange(Landroid/net/NetworkInfo;)V
    .locals 9
    .param p1, "nwInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v8, 0x1

    .line 597
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    .line 598
    .local v4, "typeName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    .line 599
    .local v3, "subTypeName":Ljava/lang/String;
    const/4 v0, 0x1

    .line 600
    .local v0, "isEpdgConnected":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoLTEEnable()Z

    move-result v1

    .line 601
    .local v1, "isVoLTEEnable":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleConnectivityChange typeName ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " subTypeName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isVoLTEEnable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mNeedTurnOffWifi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mNeedTurnOffWifi:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 604
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mNeedTurnOffWifi:Z

    if-ne v6, v8, :cond_0

    const-string v6, "Wi-Fi"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "IMS"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 605
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 606
    if-nez v0, :cond_0

    .line 607
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 609
    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    iget v6, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mReason:I

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->setWifiDisabled(I)Z

    .line 610
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mNeedTurnOffWifi:Z

    .line 613
    if-ne v1, v8, :cond_0

    .line 614
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v2

    .line 615
    .local v2, "phoneId":I
    invoke-direct {p0, v8, v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V

    .line 619
    .end local v2    # "phoneId":I
    .end local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    return-void
.end method

.method private handleDcStateAttaching(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    .locals 6
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .prologue
    const/4 v5, 0x1

    .line 269
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 270
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDcStateAttaching param.getPhoneId():"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "volte_vt_enabled"

    invoke-static {}, Lcom/android/ims/ImsConfig$FeatureValueConstants;->getVolteAvailable()I

    move-result v4

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 278
    .local v0, "imsSetting":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDcStateAttaching, param.getPhoneId():"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " imsSetting:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 280
    if-ne v0, v5, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v1

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 282
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V

    .line 284
    :cond_0
    monitor-exit v2

    .line 285
    return-void

    .line 284
    .end local v0    # "imsSetting":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleDcStatePreCheckDisconnect(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    .locals 6
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .prologue
    .line 288
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 289
    :try_start_0
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 290
    const-string v2, "handleDcStatePreCheckDisconnect, in volte call, suspend DcState preCheck"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 291
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .line 292
    monitor-exit v3

    .line 323
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "volte_vt_enabled"

    invoke-static {}, Lcom/android/ims/ImsConfig$FeatureValueConstants;->getVolteAvailable()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 301
    .local v0, "imsSetting":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDcStatePreCheckDisconnect, param.getPhoneId():"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " imsSetting:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v2

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v4

    if-ne v2, v4, :cond_3

    .line 305
    sget-object v2, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    if-eqz v2, :cond_2

    .line 306
    sget-object v2, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ims/ImsService;->getImsState()I

    move-result v1

    .line 308
    .local v1, "state":I
    if-eqz v1, :cond_1

    .line 309
    sget-object v2, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/mediatek/internal/telephony/ims/ImsService;->turnOffIms(I)V

    .line 310
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .line 322
    .end local v1    # "state":I
    :goto_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "imsSetting":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 312
    .restart local v0    # "imsSetting":I
    .restart local v1    # "state":I
    :cond_1
    :try_start_1
    const-string v2, "handleDcStatePreCheckDisconnect: ims is disable and confirm directly"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->confirmPreCheckDetach()Z

    goto :goto_1

    .line 316
    .end local v1    # "state":I
    :cond_2
    const-string v2, "handleDcStatePreCheckDisconnect: ImsService not ready !!!"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 317
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    goto :goto_1

    .line 320
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->confirmPreCheckDetach()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private isImsDeregisterRequired()Z
    .locals 12

    .prologue
    const/16 v11, 0x63

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 563
    const/16 v5, 0x3e7

    .line 564
    .local v5, "regStat":I
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 566
    .local v1, "imsManager":Lcom/android/ims/ImsManager;
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 568
    .local v6, "telephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoLTEEnable()Z

    move-result v2

    .line 569
    .local v2, "isVoLTeEnable":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v4

    .line 570
    .local v4, "phoneId":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v3

    .line 572
    .local v3, "netType":I
    :try_start_0
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->getWfcStatusCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 576
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isImsDeregisterRequired regStat = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mReason = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mReason:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "netType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " phoneId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isVoLTeEnable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 583
    if-ne v11, v5, :cond_0

    iget v9, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mReason:I

    if-eq v9, v7, :cond_1

    :cond_0
    if-ne v11, v5, :cond_2

    const/16 v9, 0xd

    if-ne v3, v9, :cond_1

    if-nez v2, :cond_2

    .line 586
    :cond_1
    invoke-direct {p0, v8, v4}, Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V

    .line 591
    :goto_1
    return v7

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception caught = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 590
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    const-string v7, "IMS registration false"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    move v7, v8

    .line 591
    goto :goto_1
.end method

.method private isVoLTEEnable()Z
    .locals 2

    .prologue
    .line 204
    const-string v0, "ro.mtk_ims_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "persist.mtk.volte.enable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoWiFiEnable()Z
    .locals 2

    .prologue
    .line 217
    const-string v0, "ro.mtk_wfc_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "persist.mtk.wfc.enable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 622
    const-string v0, "ImsSwitchController"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-void
.end method

.method private onReceiveDcSwitchStateChange(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    .locals 3
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage param.getState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " param.getReason(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getState()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 339
    :cond_1
    :goto_1
    return-void

    .line 327
    :sswitch_0
    const-string v2, "predetachcheck"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "attaching"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 329
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->handleDcStatePreCheckDisconnect(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    goto :goto_1

    .line 332
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getReason()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lost Connection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 333
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->handleDcStateAttaching(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    goto :goto_1

    .line 327
    :sswitch_data_0
    .sparse-switch
        -0x1c8cb883 -> :sswitch_1
        0x523fead2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onReceivePhoneStateChange(IILcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "phoneType"    # I
    .param p3, "phoneState"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    const/4 v3, 0x1

    .line 342
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 343
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivePhoneStateChange phoneId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " phoneType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " phoneState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsInVoLteCall: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 348
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    if-ne v0, v3, :cond_1

    .line 349
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p3, v0, :cond_0

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    .line 352
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    if-eqz v0, :cond_0

    .line 353
    sget-object v0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    if-eqz v0, :cond_0

    .line 354
    sget-object v0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ims/ImsService;->turnOffIms(I)V

    .line 364
    :cond_0
    :goto_0
    monitor-exit v1

    .line 365
    return-void

    .line 359
    :cond_1
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p3, v0, :cond_0

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    goto :goto_0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onReceiveWifiStateChange(I)V
    .locals 3
    .param p1, "wifiState"    # I

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoWiFiEnable()Z

    move-result v0

    .line 549
    .local v0, "isVoWiFiEnable":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveWifiStateChange wifiState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isVoWiFiEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 552
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 553
    if-eqz v0, :cond_0

    .line 554
    const/4 v1, 0x1

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V

    .line 557
    :cond_0
    return-void
.end method

.method private registerEvent()V
    .locals 8

    .prologue
    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerEvent, major phoneid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    new-instance v4, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "ImsSwitchController"

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Ljava/lang/String;Z)V

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->registerForDcSwitchStateChange(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    .line 242
    const-string v1, "ro.mtk_wfc_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 244
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->onReceiveWifiStateChange(I)V

    .line 245
    new-instance v1, Lcom/mediatek/internal/telephony/ImsSwitchController$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ImsSwitchController$1;-><init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->addWifiOffListener(Landroid/net/wifi/WifiManager$WifiOffListener;)V

    .line 260
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    return-void
.end method

.method private registerForWfcSwitchChange()V
    .locals 4

    .prologue
    .line 502
    new-instance v0, Lcom/mediatek/internal/telephony/ImsSwitchController$3;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/internal/telephony/ImsSwitchController$3;-><init>(Lcom/mediatek/internal/telephony/ImsSwitchController;Landroid/os/Handler;)V

    .line 537
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "when_to_make_wifi_calls"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 539
    return-void
.end method

.method private switchImsCapability(ZI)V
    .locals 2
    .param p1, "on"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchImsCapability, on:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 227
    sget-object v0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    if-eqz v0, :cond_0

    .line 228
    if-eqz p1, :cond_1

    .line 229
    sget-object v0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/ims/ImsService;->turnOnIms(I)V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    sget-object v0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/ims/ImsService;->turnOffIms(I)V

    goto :goto_0
.end method

.method private unregisterEvent()V
    .locals 2

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterEvent, major phoneid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/DctController;->unregisterForDcSwitchStateChange(Landroid/os/Handler;)V

    .line 266
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 452
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage msg.what: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/ImsSwitchController;->eventIdtoString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 453
    const/4 v4, 0x0

    .line 454
    .local v4, "phoneId":I
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 496
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 456
    :pswitch_0
    const/4 v4, 0x0

    .line 457
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 458
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->unregisterEvent()V

    goto :goto_0

    .line 462
    :pswitch_1
    const/4 v4, 0x1

    .line 463
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 464
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->unregisterEvent()V

    goto :goto_0

    .line 468
    :pswitch_2
    const/4 v4, 0x0

    .line 469
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 470
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->registerEvent()V

    goto :goto_0

    .line 474
    :pswitch_3
    const/4 v4, 0x1

    .line 475
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 476
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->registerEvent()V

    goto :goto_0

    .line 480
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 481
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .line 482
    .local v3, "param":Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->onReceiveDcSwitchStateChange(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    goto :goto_0

    .line 485
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "param":Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 486
    .local v1, "intent":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 487
    const-string v5, "networkInfo"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 489
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 490
    const-string v5, "networkInfo = null, return"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_1
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->handleConnectivityChange(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
