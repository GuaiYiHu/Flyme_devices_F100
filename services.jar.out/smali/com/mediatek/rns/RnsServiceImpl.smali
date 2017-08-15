.class public Lcom/mediatek/rns/RnsServiceImpl;
.super Lcom/mediatek/rns/IRnsManager$Stub;
.source "RnsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/rns/RnsServiceImpl$WifiRssiMonitor;,
        Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;,
        Lcom/mediatek/rns/RnsServiceImpl$MPhoneSignalListner;,
        Lcom/mediatek/rns/RnsServiceImpl$MPhoneCallListner;,
        Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;,
        Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;,
        Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_REQUEST:Landroid/net/NetworkRequest;

.field private static final DISABLE_WIFI_GUARD_TIMER:I = 0x2710

.field private static final DISCONNECT_RSSI:I = -0x7f

.field private static final EVENT_APPLY_IMS_OVER_LTE_SETTINGS:I = 0x186a0

.field private static final EVENT_APPLY_WIFI_CALL_SETTINGS:I = 0xa

.field private static final EVENT_DC_SWITCH_STATE_CHANGE:I = 0x3e9

.field private static final EVENT_RAT_CONNECTIVITY_CHANGE:I = 0x3e8

.field private static final EVENT_REGISTER_RNS_AGENT:I = 0x1

.field private static final EVENT_WIFI_DISABLE_ACTION:I = 0x65

.field private static final EVENT_WIFI_DISABLE_EXPIRED:I = 0x66

.field private static final EVENT_WIFI_DISCONNECT:I = 0x64

.field private static final EVENT_WIFI_RSSI_UPDATE:I = 0x0

.field private static final EVENT_WIFI_STATE_CHANGED_ACTION:I = 0x2710

.field private static final MAX_REG_WAIT:I = 0x1388

.field private static final PROPERTY_VOLTE_ENALBE:Ljava/lang/String; = "persist.mtk.volte.enable"

.field private static final PROPERTY_WFC_ENALBE:Ljava/lang/String; = "persist.mtk.wfc.enable"

.field private static final REQUEST:Landroid/net/NetworkRequest;

.field private static final WEAK_SIGNAL:I = -0x74


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private isEpdgImsConnected:Z

.field private isLteImsConnected:Z

.field private mAllowedRadio:I

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

.field private mHandoverEvent:I

.field private mImsOverLteSettingsObserver:Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsCallActive:Z

.field private mIsDefaultRequestEnabled:Z

.field private mIsEpdgConnectionChanged:Z

.field private mIsFirstRequest:Z

.field private mIsImsOverLteEnabled:Z

.field private mIsSettingChanged:Z

.field private mIsWfcEnabled:Z

.field private mIsWifiConnected:Z

.field private mIsWifiDisabling:Z

.field private mIsWifiEnabled:Z

.field private mLastRssi:I

.field private mLastSignalRsrp:I

.field private mLtePhoneState:Landroid/telephony/ServiceState;

.field private mLteRegTime:J

.field mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mPhoneId:I

.field private mPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/rns/RnsPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevCallState:I

.field private mServiceState:I

.field private mStartTime:J

.field private mState:I

.field private mSubId:I

.field private mTeleMgr:Landroid/telephony/TelephonyManager;

.field private mWfcSettingsObserver:Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;

.field private mWifiDisableFlag:I

.field private mWifiMgr:Landroid/net/wifi/WifiManager;

.field private mWifiTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xd

    .line 97
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/mediatek/rns/RnsServiceImpl;->REQUEST:Landroid/net/NetworkRequest;

    .line 104
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/mediatek/rns/RnsServiceImpl;->DEFAULT_REQUEST:Landroid/net/NetworkRequest;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 126
    invoke-direct {p0}, Lcom/mediatek/rns/IRnsManager$Stub;-><init>()V

    .line 63
    const-string v3, "RnsServiceImpl"

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->TAG:Ljava/lang/String;

    .line 66
    iput-boolean v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->DEBUG:Z

    .line 77
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z

    .line 78
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z

    .line 79
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsSettingChanged:Z

    .line 80
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    .line 83
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    .line 84
    iput v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 86
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    .line 92
    const/16 v3, -0x6a

    iput v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    .line 93
    iput v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandoverEvent:I

    .line 103
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsDefaultRequestEnabled:Z

    .line 110
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    .line 111
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    .line 112
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    .line 113
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsEpdgConnectionChanged:Z

    .line 116
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    .line 117
    iput v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPhoneId:I

    .line 118
    iput v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I

    .line 119
    iput v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    .line 120
    iput v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPrevCallState:I

    .line 121
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsCallActive:Z

    .line 176
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$1;

    invoke-direct {v3, p0}, Lcom/mediatek/rns/RnsServiceImpl$1;-><init>(Lcom/mediatek/rns/RnsServiceImpl;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1311
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$2;

    invoke-direct {v3, p0}, Lcom/mediatek/rns/RnsServiceImpl$2;-><init>(Lcom/mediatek/rns/RnsServiceImpl;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1348
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$3;

    invoke-direct {v3, p0}, Lcom/mediatek/rns/RnsServiceImpl$3;-><init>(Lcom/mediatek/rns/RnsServiceImpl;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 127
    const-string v3, "missing Context"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    .line 128
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 130
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    .line 131
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current RSSI on constructor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "RnsServiceThread"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 134
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 135
    .local v2, "rnsLooper":Landroid/os/Looper;
    if-eqz v2, :cond_0

    .line 136
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    invoke-direct {v3, p0, v2}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;-><init>(Lcom/mediatek/rns/RnsServiceImpl;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    .line 139
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v3, "android.net.conn.CONNECTIVITY_ACTION_HANDOVER_END"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v3, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    .line 153
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWfcSettingsObserver:Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;

    .line 155
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWfcSettingsObserver:Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;->observe(Landroid/content/Context;)V

    .line 156
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    const v5, 0x186a0

    invoke-direct {v3, v4, v5}, Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mImsOverLteSettingsObserver:Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;

    .line 158
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mImsOverLteSettingsObserver:Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;->observe(Landroid/content/Context;)V

    .line 160
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->createDefaultPolicies()V

    .line 162
    iput-boolean v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    return p1
.end method

.method static synthetic access$102(Lcom/mediatek/rns/RnsServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    return p1
.end method

.method static synthetic access$1102(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsEpdgConnectionChanged:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->needToSendAlertWarning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->sendRoveOutAlert()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/mediatek/rns/RnsServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiDisableFlag:I

    return v0
.end method

.method static synthetic access$1600(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/mediatek/rns/RnsServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    return v0
.end method

.method static synthetic access$1802(Lcom/mediatek/rns/RnsServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    return p1
.end method

.method static synthetic access$1900(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/ServiceState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/mediatek/rns/RnsServiceImpl;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/mediatek/rns/RnsServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    return v0
.end method

.method static synthetic access$2202(Lcom/mediatek/rns/RnsServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    return p1
.end method

.method static synthetic access$2300(Lcom/mediatek/rns/RnsServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPrevCallState:I

    return v0
.end method

.method static synthetic access$2302(Lcom/mediatek/rns/RnsServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPrevCallState:I

    return p1
.end method

.method static synthetic access$2402(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsCallActive:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    return-void
.end method

.method static synthetic access$2600(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/mediatek/rns/RnsServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandoverEvent:I

    return p1
.end method

.method static synthetic access$2800(Lcom/mediatek/rns/RnsServiceImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/rns/RnsServiceImpl;->handleEventWifiRssiUpdate(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->handleEventApplyWifiCallSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/rns/RnsServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getMainCapabilitySlotId()I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->handleEventRatConnectivityChange()V

    return-void
.end method

.method static synthetic access$3100(Lcom/mediatek/rns/RnsServiceImpl;Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/rns/RnsServiceImpl;->onReceiveDcSwitchStateChange(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->handleWifiDisabledExpired()V

    return-void
.end method

.method static synthetic access$3300(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->handleWifiDisableAction()V

    return-void
.end method

.method static synthetic access$402(Lcom/mediatek/rns/RnsServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPhoneId:I

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/rns/RnsServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/rns/RnsServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->handleDefaultPdnRequest()V

    return-void
.end method

.method private addRadio(I)V
    .locals 2
    .param p1, "connectionType"    # I

    .prologue
    .line 927
    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 928
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    .line 932
    return-void

    .line 930
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connectionType out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createDefaultPolicies()V
    .locals 5

    .prologue
    .line 386
    new-instance v1, Lcom/mediatek/rns/RnsPolicy$UserPreference;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/mediatek/rns/RnsPolicy$UserPreference;-><init>(I)V

    .line 388
    .local v1, "preference":Lcom/mediatek/rns/RnsPolicy$UserPreference;
    new-instance v0, Lcom/mediatek/rns/RnsPolicy;

    invoke-direct {v0, v1}, Lcom/mediatek/rns/RnsPolicy;-><init>(Lcom/mediatek/rns/RnsPolicy$UserPreference;)V

    .line 389
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    new-instance v2, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    const/16 v3, -0x4b

    const/16 v4, -0x55

    invoke-direct {v2, v3, v4}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;-><init>(II)V

    .line 393
    .local v2, "threshold":Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;
    new-instance v0, Lcom/mediatek/rns/RnsPolicy;

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-direct {v0, v2}, Lcom/mediatek/rns/RnsPolicy;-><init>(Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;)V

    .line 394
    .restart local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    return-void
.end method

.method private decideHandover()V
    .locals 11

    .prologue
    const/16 v10, -0x74

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 1030
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1031
    const-string v5, "RnsServiceImpl"

    const-string v6, "decideHandover - handover in progress"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    .line 1035
    .local v4, "subId":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 1036
    .local v1, "phoneId":I
    const-string v5, "RnsServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current SIM phoneid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Main Capability "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getMainCapabilitySlotId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getMainCapabilitySlotId()I

    move-result v5

    if-eq v5, v1, :cond_2

    if-eq v1, v9, :cond_2

    .line 1040
    const-string v5, "RnsServiceImpl"

    const-string v6, "Current SIM does not support LTE,No IMS connection available"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iput v8, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1042
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v9}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto :goto_0

    .line 1045
    :cond_2
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v6, "UserPreference"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/rns/RnsPolicy;

    .line 1046
    .local v2, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1047
    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v3

    .line 1048
    .local v3, "profile":I
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1049
    const/4 v3, 0x0

    .line 1051
    :cond_3
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1088
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1089
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveOut()V

    goto/16 :goto_0

    .line 1053
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1054
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    goto/16 :goto_0

    .line 1056
    :cond_4
    const-string v5, "RnsServiceImpl"

    const-string v6, "Need to inform to disconnect as for Wifi Only can\'t connect to other radio"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iput v8, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1059
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v9}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_0

    .line 1063
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v7, "WifiRoveThreshold"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v5

    if-lt v6, v5, :cond_5

    .line 1065
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    goto/16 :goto_0

    .line 1066
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v5

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    if-le v5, v10, :cond_7

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v7, "WifiRoveThreshold"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveOut()I

    move-result v5

    if-ge v6, v5, :cond_7

    .line 1070
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1071
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveOut()V

    goto/16 :goto_0

    .line 1073
    :cond_6
    const-string v5, "RnsServiceImpl"

    const-string v6, "Volte disabled will not establish IMS PDN"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    iput v8, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1075
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v9}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_0

    .line 1077
    :cond_7
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1080
    const-string v5, "RnsServiceImpl"

    const-string v6, "Establishing connection overWifi even the RSSI strength is less than Rove in value"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    goto/16 :goto_0

    .line 1083
    :cond_8
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1084
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveOut()V

    goto/16 :goto_0

    .line 1091
    :cond_9
    const-string v5, "RnsServiceImpl"

    const-string v6, "Need to inform to disconnect as for Cellular Only can\'t connect to other radio"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const-string v5, "net.ims.skip"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1094
    .local v0, "isSkipImsPdn":Z
    if-eqz v0, :cond_a

    .line 1095
    const-string v5, "RnsServiceImpl"

    const-string v6, "Ignore IMS disconnected"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1098
    :cond_a
    iput v8, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1099
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v9}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_0

    .line 1103
    .end local v0    # "isSkipImsPdn":Z
    :pswitch_3
    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsSettingChanged:Z

    if-nez v5, :cond_b

    iget v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e

    :cond_b
    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-eqz v5, :cond_e

    .line 1104
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1105
    const-string v5, "RnsServiceImpl"

    const-string v6, "Preference changed to Cell Preferred, do Roveout"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveOut()V

    goto/16 :goto_0

    .line 1107
    :cond_c
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1108
    const-string v5, "RnsServiceImpl"

    const-string v6, "IMS connection can\'t be establish for Cellular Preferred as 3G/2G is available"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const-string v5, "net.ims.skip"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1112
    .restart local v0    # "isSkipImsPdn":Z
    if-eqz v0, :cond_d

    .line 1113
    const-string v5, "RnsServiceImpl"

    const-string v6, "Ignore IMS disconnected"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1116
    :cond_d
    iput v8, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1117
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v9}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_0

    .line 1122
    .end local v0    # "isSkipImsPdn":Z
    :cond_e
    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-eqz v5, :cond_11

    .line 1124
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v7, "WifiRoveThreshold"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveOut()I

    move-result v5

    if-ge v6, v5, :cond_0

    .line 1127
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1128
    const-string v5, "RnsServiceImpl"

    const-string v6, "Cell Preferred,wifi rssi drops,do Roveout"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveOut()V

    goto/16 :goto_0

    .line 1130
    :cond_f
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1131
    const-string v5, "RnsServiceImpl"

    const-string v6, "IMS connection can\'t be establish for Cellular Preferred as 3G/2G is available"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const-string v5, "net.ims.skip"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1135
    .restart local v0    # "isSkipImsPdn":Z
    if-eqz v0, :cond_10

    .line 1136
    const-string v5, "RnsServiceImpl"

    const-string v6, "Ignore IMS disconnected"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1139
    :cond_10
    iput v8, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1140
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v9}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_0

    .line 1147
    .end local v0    # "isSkipImsPdn":Z
    :cond_11
    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-eqz v5, :cond_16

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1150
    iget v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    if-ge v5, v10, :cond_12

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v7, "WifiRoveThreshold"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v5

    if-le v6, v5, :cond_12

    .line 1154
    const-string v5, "RnsServiceImpl"

    const-string v6, "Cell Preferred rsrp low do Rovein"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    .line 1158
    :cond_12
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1159
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1160
    const-string v5, "RnsServiceImpl"

    const-string v6, "IMS connection can\'t be establish for When VoLTE is disabled but Cellular is available Cellular Preferred as 3G/2G is available"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    const-string v5, "net.ims.skip"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1165
    .restart local v0    # "isSkipImsPdn":Z
    if-eqz v0, :cond_13

    .line 1166
    const-string v5, "RnsServiceImpl"

    const-string v6, "Ignore IMS disconnected"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1169
    :cond_13
    iput v8, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1170
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v9}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_0

    .line 1171
    .end local v0    # "isSkipImsPdn":Z
    :cond_14
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v7, "WifiRoveThreshold"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v5

    if-le v6, v5, :cond_15

    .line 1174
    const-string v5, "RnsServiceImpl"

    const-string v6, "Cell Preferred IMS over LTE off do Rovein"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    goto/16 :goto_0

    .line 1177
    :cond_15
    const-string v5, "RnsServiceImpl"

    const-string v6, "Cell Preferred IMS over LTE off no wifi do fallback"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    iput v8, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1179
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v9}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_0

    .line 1185
    :cond_16
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1186
    const-string v5, "RnsServiceImpl"

    const-string v6, "Cell Preferred create IMS over LTE"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveOut()V

    goto/16 :goto_0

    .line 1189
    :cond_17
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v5

    if-nez v5, :cond_18

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v7, "WifiRoveThreshold"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v5

    if-le v6, v5, :cond_18

    .line 1193
    const-string v5, "RnsServiceImpl"

    const-string v6, "Cell Preferred no signal except wifi good rssi do Rovein"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    goto/16 :goto_0

    .line 1196
    :cond_18
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1197
    const-string v5, "RnsServiceImpl"

    const-string v6, "Cell Preferred no signal except wifi available do Rovein"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    goto/16 :goto_0

    .line 1051
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private dump()V
    .locals 5

    .prologue
    .line 1777
    const-string v2, "RnsServiceImpl"

    const-string v3, "--- dump ---"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1779
    .local v1, "key":Ljava/lang/String;
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "policy["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1781
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWifiConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWfcEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLteNetworkReady = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    const-string v2, "RnsServiceImpl"

    const-string v3, "--- end ---"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    return-void
.end method

.method private enumerateBits(J)[I
    .locals 11
    .param p1, "val"    # J

    .prologue
    const-wide/16 v8, 0x1

    .line 894
    invoke-static {p1, p2}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 895
    .local v4, "size":I
    new-array v3, v4, [I

    .line 896
    .local v3, "result":[I
    const/4 v0, 0x0

    .line 897
    .local v0, "index":I
    const/4 v2, 0x0

    .local v2, "resource":I
    move v1, v0

    .line 898
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-lez v5, :cond_0

    .line 899
    and-long v6, p1, v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aput v2, v3, v1

    .line 900
    :goto_1
    const/4 v5, 0x1

    shr-long/2addr p1, v5

    .line 901
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 903
    :cond_0
    return-object v3

    :cond_1
    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_1
.end method

.method private getMainCapabilitySlotId()I
    .locals 4

    .prologue
    .line 1827
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1828
    .local v0, "slotId":I
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMainCapabilitySlotId()... slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    return v0
.end method

.method private getNetworkType()I
    .locals 5

    .prologue
    .line 848
    const/4 v1, 0x0

    .line 849
    .local v1, "networkType":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 851
    .local v0, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 852
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getnetworkType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    packed-switch v1, :pswitch_data_0

    .line 873
    const/4 v2, -0x1

    :goto_0
    return v2

    .line 859
    :pswitch_0
    const/4 v2, 0x0

    goto :goto_0

    .line 869
    :pswitch_1
    const/4 v2, 0x1

    goto :goto_0

    .line 871
    :pswitch_2
    const/4 v2, 0x2

    goto :goto_0

    .line 853
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getNetworkType(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 815
    const/4 v1, 0x0

    .line 816
    .local v1, "networkType":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 818
    .local v0, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v1

    .line 819
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getnetworkType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    packed-switch v1, :pswitch_data_0

    .line 840
    const/4 v2, -0x1

    :goto_0
    return v2

    .line 826
    :pswitch_0
    const/4 v2, 0x0

    goto :goto_0

    .line 836
    :pswitch_1
    const/4 v2, 0x1

    goto :goto_0

    .line 838
    :pswitch_2
    const/4 v2, 0x2

    goto :goto_0

    .line 820
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getPolicyProfile()I
    .locals 5

    .prologue
    .line 1814
    const/4 v1, -0x1

    .line 1815
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1816
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1817
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 1819
    :cond_0
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    return v1
.end method

.method private handleDcStateAttaching(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    .locals 10
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1676
    const-string v5, "RnsServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleDcStateAttaching "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v4

    .line 1678
    .local v4, "phoneId":I
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "volte_vt_enabled"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1681
    .local v0, "imsSetting":I
    const-string v5, "RnsServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Main Capability: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getMainCapabilitySlotId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    iput v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPhoneId:I

    .line 1684
    if-ne v0, v9, :cond_0

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getMainCapabilitySlotId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1685
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v5

    iput v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I

    .line 1686
    const-string v5, "RnsServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDefaultSubId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;

    iget v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I

    invoke-direct {v3, p0, v8, v5}, Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;-><init>(Lcom/mediatek/rns/RnsServiceImpl;II)V

    .line 1688
    .local v3, "mPhoneStateListener":Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v3, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1689
    new-instance v2, Lcom/mediatek/rns/RnsServiceImpl$MPhoneSignalListner;

    iget v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I

    invoke-direct {v2, p0, v8, v5}, Lcom/mediatek/rns/RnsServiceImpl$MPhoneSignalListner;-><init>(Lcom/mediatek/rns/RnsServiceImpl;II)V

    .line 1690
    .local v2, "mPhoneSignalListner":Lcom/mediatek/rns/RnsServiceImpl$MPhoneSignalListner;
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    const/16 v6, 0x100

    invoke-virtual {v5, v2, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1691
    new-instance v1, Lcom/mediatek/rns/RnsServiceImpl$MPhoneCallListner;

    iget v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I

    invoke-direct {v1, p0, v8, v5}, Lcom/mediatek/rns/RnsServiceImpl$MPhoneCallListner;-><init>(Lcom/mediatek/rns/RnsServiceImpl;II)V

    .line 1692
    .local v1, "mPhoneCallListner":Lcom/mediatek/rns/RnsServiceImpl$MPhoneCallListner;
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    const/16 v6, 0x20

    invoke-virtual {v5, v1, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1694
    .end local v1    # "mPhoneCallListner":Lcom/mediatek/rns/RnsServiceImpl$MPhoneCallListner;
    .end local v2    # "mPhoneSignalListner":Lcom/mediatek/rns/RnsServiceImpl$MPhoneSignalListner;
    .end local v3    # "mPhoneStateListener":Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;
    :cond_0
    return-void
.end method

.method private handleDefaultPdnRequest()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1490
    const-string v2, "RnsServiceImpl"

    const-string v3, "handleDefaultPdnRequest"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-eqz v2, :cond_5

    .line 1497
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getPolicyProfile()I

    move-result v1

    .line 1498
    .local v1, "profile":I
    if-eq v4, v1, :cond_2

    const/4 v2, 0x2

    if-ne v2, v1, :cond_4

    .line 1501
    :cond_2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1502
    :try_start_1
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsDefaultRequestEnabled:Z

    if-nez v2, :cond_3

    .line 1503
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    sget-object v3, Lcom/mediatek/rns/RnsServiceImpl;->DEFAULT_REQUEST:Landroid/net/NetworkRequest;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v3, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1504
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsDefaultRequestEnabled:Z

    .line 1505
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register LTE requst:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :cond_3
    monitor-exit p0

    .line 1525
    .end local v1    # "profile":I
    :cond_4
    :goto_0
    return-void

    .line 1507
    .restart local v1    # "profile":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1508
    :catch_0
    move-exception v0

    .line 1509
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "RnsServiceImpl"

    const-string v3, "fail to register"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1514
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "profile":I
    :cond_5
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1515
    :try_start_4
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsDefaultRequestEnabled:Z

    if-eqz v2, :cond_6

    .line 1516
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1517
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsDefaultRequestEnabled:Z

    .line 1518
    const-string v2, "RnsServiceImpl"

    const-string v3, "Unregister LTE requst"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    :cond_6
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1521
    :catch_1
    move-exception v0

    .line 1522
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "RnsServiceImpl"

    const-string v3, "fail to unregister"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleEventApplyWifiCallSettings()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1453
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "when_to_make_wifi_calls"

    const/4 v5, -0x1

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    .line 1457
    const-string v1, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEventApplyWifiCallSettings, mIsWfcEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1459
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1460
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "user_selected_wfc_preference"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->setMode(I)V

    .line 1463
    const-string v1, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Preference = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_0
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1467
    .restart local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1468
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "rns_wifi_rove_in_rssi"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->setRssiRoveIn(I)V

    .line 1472
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "rns_wifi_rove_out_rssi"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->setRssiRoveOut(I)V

    .line 1475
    const-string v1, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " RoveIn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " RoveOut = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveOut()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_1
    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    .line 1479
    iput v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1481
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1487
    :goto_1
    return-void

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    :cond_3
    move v1, v3

    .line 1453
    goto/16 :goto_0

    .line 1484
    .restart local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    :cond_4
    iput-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsSettingChanged:Z

    .line 1485
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    .line 1486
    iput-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsSettingChanged:Z

    goto :goto_1
.end method

.method private handleEventRatConnectivityChange()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 1528
    const/4 v1, -0x1

    .line 1529
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1531
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1532
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 1534
    :cond_0
    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-eq v2, v4, :cond_1

    .line 1535
    iput v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1537
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1557
    :cond_2
    :goto_0
    return-void

    .line 1540
    :cond_3
    const-string v2, "RnsServiceImpl"

    const-string v3, "handle Event RAT Connectivity change "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 1543
    const-string v2, "RnsServiceImpl"

    const-string v3, "mLtePhoneState went to power off "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iput v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    .line 1546
    :cond_4
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    if-ne v2, v7, :cond_5

    .line 1548
    const-string v2, "RnsServiceImpl"

    const-string v3, "mLtePhoneState went to power on "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    iput v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    .line 1551
    :cond_5
    if-eq v1, v4, :cond_6

    .line 1552
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    .line 1554
    :cond_6
    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    if-ne v2, v6, :cond_2

    .line 1555
    iput v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    goto :goto_0
.end method

.method private handleEventWifiRssiUpdate(I)V
    .locals 8
    .param p1, "newRssi"    # I

    .prologue
    const/4 v6, 0x0

    .line 1417
    const-string v1, "persist.net.test.rssi"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1418
    .local v0, "testRssi":I
    if-eqz v0, :cond_0

    .line 1419
    move p1, v0

    .line 1424
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1425
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "First Request after bootup, RAT Selected = LTE mIsFirstRequst = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLteRegTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 1428
    iput-boolean v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    .line 1429
    const-string v1, "RnsServiceImpl"

    const-string v2, "Max wait time Up, allow handover to wifi"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :cond_1
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    .line 1438
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEventWifiRssiUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1450
    :cond_2
    :goto_0
    return-void

    .line 1431
    :cond_3
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Block the handover to Wifi:: Waiting time :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLteRegTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " less than MAX REG WAIT time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1442
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1443
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    .line 1446
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->needToSendAlertWarning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1447
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send Rove Out Alert warning for rssi "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->sendRoveOutAlert()V

    goto :goto_0
.end method

.method private handleWifiDisableAction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1638
    const-string v1, "RnsServiceImpl"

    const-string v2, "handle Wifi Disable Action:"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getPolicyProfile()I

    move-result v0

    .line 1641
    .local v0, "profile":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1642
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    const/16 v2, -0x74

    if-le v1, v2, :cond_0

    .line 1643
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1644
    iput-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    .line 1645
    const-string v1, "RnsServiceImpl"

    const-string v2, "Epdg is disconnected & disable wifi"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiDisableFlag:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiDisabledByEpdg(I)Z

    .line 1647
    invoke-direct {p0, v3}, Lcom/mediatek/rns/RnsServiceImpl;->tryConnectToRadio(I)V

    .line 1652
    :cond_0
    return-void
.end method

.method private handleWifiDisabledExpired()V
    .locals 3

    .prologue
    .line 1655
    const-string v0, "RnsServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle Wifi Disable Action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    if-eqz v0, :cond_0

    .line 1657
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    .line 1658
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiDisableFlag:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiDisabledByEpdg(I)Z

    .line 1660
    :cond_0
    return-void
.end method

.method private isCellularNetworkAvailable()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 883
    const/4 v2, 0x0

    .line 884
    .local v2, "network":Z
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    .line 885
    .local v0, "infos":[Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 887
    .local v1, "mode":I
    if-ne v1, v4, :cond_0

    .line 890
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private isHandoverInProgress()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1260
    monitor-enter p0

    .line 1261
    :try_start_0
    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1262
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isImsOverLteEnabled()Z
    .locals 4

    .prologue
    .line 1723
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isVolteEnable()Z

    move-result v0

    .line 1724
    .local v0, "volteProperty":Z
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check is Ims over Lte Enable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Volte property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    iget-boolean v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isImsOverWifiEnabled()Z
    .locals 4

    .prologue
    .line 1735
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isVoWifiEnable()Z

    move-result v0

    .line 1736
    .local v0, "vowifiProperty":Z
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check is Ims over Wifi Enable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "vowifi property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    iget-boolean v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLteNetworkReady()Z
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 752
    const/4 v1, 0x1

    .line 753
    .local v1, "phoneCount":I
    const/4 v0, 0x0

    .line 754
    .local v0, "isLteReady":Z
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 755
    if-le v1, v3, :cond_3

    .line 756
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getMainCapabilitySlotId()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v2

    .line 761
    .local v2, "subId":I
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isCellularNetworkAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 764
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v2}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v5

    if-ne v5, v6, :cond_2

    move v0, v3

    .line 765
    :goto_0
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Data Reg State "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_0
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLteNetworkReady "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Network Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v2}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    .end local v2    # "subId":I
    :goto_1
    if-nez v0, :cond_1

    .line 781
    const/16 v3, -0x74

    iput v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    .line 783
    :cond_1
    return v0

    .restart local v2    # "subId":I
    :cond_2
    move v0, v4

    .line 764
    goto :goto_0

    .line 771
    .end local v2    # "subId":I
    :cond_3
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isCellularNetworkAvailable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 774
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    if-ne v5, v6, :cond_5

    move v0, v3

    .line 775
    :goto_2
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Data Reg State "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_4
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLteNetworkReady "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Network Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    move v0, v4

    .line 774
    goto :goto_2
.end method

.method private isMatchRoveIn()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 935
    const/4 v1, -0x1

    .line 936
    .local v1, "profile":I
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 938
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 939
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 944
    :cond_0
    if-eqz v1, :cond_1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 945
    :cond_1
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveIn = false, cellular only/none"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :goto_0
    return v2

    .line 950
    :cond_2
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 951
    .restart local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 953
    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 954
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveIn signal strength criteria met"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_3
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-eqz v3, :cond_5

    .line 967
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveIn = false, check pdn connection"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 956
    :cond_4
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveIn = false, rssi issue"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 971
    :cond_5
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    .line 972
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveIn = false, cellular preferred"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 976
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    cmp-long v3, v4, v6

    if-lez v3, :cond_7

    .line 978
    const/4 v2, 0x1

    goto :goto_0

    .line 981
    :cond_7
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveIn = false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isMatchRoveOut()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 986
    const/4 v1, -0x1

    .line 987
    .local v1, "profile":I
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 989
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 990
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 995
    :cond_0
    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 996
    :cond_1
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveOut = false, profile issue"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :goto_0
    return v2

    .line 1001
    :cond_2
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1002
    .restart local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    .line 1004
    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveOut()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 1005
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveOut signal strength criteria met"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    :cond_3
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-eqz v3, :cond_5

    .line 1014
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveOut = false, check pdn connection"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1007
    :cond_4
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveOut = false, rssi issue"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1019
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    cmp-long v3, v4, v6

    if-lez v3, :cond_6

    .line 1021
    const/4 v2, 0x1

    goto :goto_0

    .line 1024
    :cond_6
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveOut = false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isNetworkReady()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, -0x1

    .line 787
    const/4 v1, 0x1

    .line 788
    .local v1, "phoneCount":I
    const/4 v3, -0x1

    .line 789
    .local v3, "subId":I
    const/4 v0, 0x0

    .line 790
    .local v0, "netType":I
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isCellularNetworkAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 791
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 792
    if-le v1, v4, :cond_1

    .line 793
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    .line 794
    if-ne v3, v6, :cond_0

    .line 795
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getMainCapabilitySlotId()I

    move-result v2

    .line 796
    .local v2, "phoneId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 797
    invoke-direct {p0, v3}, Lcom/mediatek/rns/RnsServiceImpl;->getNetworkType(I)I

    move-result v0

    .line 802
    .end local v2    # "phoneId":I
    :cond_0
    :goto_0
    if-eq v0, v6, :cond_2

    .line 803
    const-string v5, "RnsServiceImpl"

    const-string v6, "isNetworkReady true"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :goto_1
    return v4

    .line 800
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getNetworkType()I

    move-result v0

    goto :goto_0

    .line 807
    :cond_2
    const-string v4, "RnsServiceImpl"

    const-string v5, "isNetworkReady false"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isVoWifiEnable()Z
    .locals 2

    .prologue
    .line 1854
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

    .line 1856
    const-string v0, "RnsServiceImpl"

    const-string v1, "Persist property Vowifi enable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    const/4 v0, 0x1

    .line 1860
    :goto_0
    return v0

    .line 1859
    :cond_0
    const-string v0, "RnsServiceImpl"

    const-string v1, "Persist property Vowifi disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVolteEnable()Z
    .locals 2

    .prologue
    .line 1838
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

    .line 1840
    const-string v0, "RnsServiceImpl"

    const-string v1, "Persist property Volte enable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    const/4 v0, 0x1

    .line 1844
    :goto_0
    return v0

    .line 1843
    :cond_0
    const-string v0, "RnsServiceImpl"

    const-string v1, "Persist property Volte disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 1

    .prologue
    .line 746
    monitor-enter p0

    .line 747
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 748
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private makeImsRadio()I
    .locals 10

    .prologue
    const/16 v9, -0x74

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 580
    iput v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    .line 581
    const/4 v1, 0x0

    .line 582
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 583
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 584
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 585
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 586
    const/4 v1, 0x0

    .line 588
    :cond_0
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    if-ne v2, v6, :cond_1

    if-eq v1, v6, :cond_1

    .line 589
    iput-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    .line 591
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 680
    :cond_2
    :goto_0
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeImsRadio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    invoke-direct {p0, v2}, Lcom/mediatek/rns/RnsServiceImpl;->transToReadableType(I)I

    move-result v2

    return v2

    .line 593
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 594
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_0

    .line 595
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 596
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_0

    .line 598
    :cond_4
    invoke-direct {p0, v8}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_0

    .line 603
    :pswitch_1
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    if-ne v2, v6, :cond_5

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 604
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    .line 606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLteRegTime:J

    goto :goto_0

    .line 608
    :cond_5
    iput-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    .line 609
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v2

    if-le v3, v2, :cond_7

    .line 613
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsCallActive:Z

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 614
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    .line 615
    const-string v2, "RnsServiceImpl"

    const-string v3, "Call is active, no attach to Wifi"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 617
    :cond_6
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 619
    :cond_7
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    if-le v2, v9, :cond_8

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 621
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 622
    :cond_8
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 625
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsCallActive:Z

    if-eqz v2, :cond_9

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 626
    const-string v2, "RnsServiceImpl"

    const-string v3, "Call is active, no attach to Wifi"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 629
    :cond_9
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    .line 630
    const-string v2, "RnsServiceImpl"

    const-string v3, "Establishing connection overWifi even the RSSI strength is less than Rove in value"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 633
    :cond_a
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 634
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 635
    :cond_b
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 636
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 638
    :cond_c
    invoke-direct {p0, v8}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 643
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 644
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 645
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 647
    :cond_d
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 649
    :cond_e
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 650
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 652
    :cond_f
    invoke-direct {p0, v8}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 656
    :pswitch_3
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_11

    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    if-le v2, v9, :cond_11

    .line 657
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 658
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 660
    :cond_10
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 662
    :cond_11
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-nez v2, :cond_12

    .line 663
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 664
    :cond_12
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 665
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 666
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 668
    :cond_13
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 670
    :cond_14
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 671
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 673
    :cond_15
    invoke-direct {p0, v8}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 591
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private makeMmsRadio()I
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 685
    iput v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    .line 686
    const/4 v1, 0x0

    .line 687
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 688
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 689
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 690
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 691
    const/4 v1, 0x0

    .line 694
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 742
    :cond_1
    :goto_0
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeMmsRadio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    invoke-direct {p0, v2}, Lcom/mediatek/rns/RnsServiceImpl;->transToReadableType(I)I

    move-result v2

    return v2

    .line 696
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 697
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_0

    .line 699
    :cond_2
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_0

    .line 703
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v2

    if-le v3, v2, :cond_3

    .line 707
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_0

    .line 708
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    const/16 v3, -0x74

    if-le v2, v3, :cond_4

    .line 709
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_0

    .line 710
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 713
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    .line 714
    const-string v2, "RnsServiceImpl"

    const-string v3, "Establishing connection overWifi even the RSSI strength is less than Rove in value"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 716
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 717
    :cond_6
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 719
    :cond_7
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 723
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 724
    :cond_8
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 726
    :cond_9
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 730
    :pswitch_3
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 731
    :cond_a
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 732
    :cond_b
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 733
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 735
    :cond_c
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 694
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private needToSendAlertWarning()Z
    .locals 10

    .prologue
    .line 1273
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v8, "UserPreference"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/rns/RnsPolicy;

    .line 1274
    .local v6, "userPolicy":Lcom/mediatek/rns/RnsPolicy;
    invoke-virtual {v6}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 1275
    .local v1, "mPreference":I
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v8, "WifiRoveThreshold"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/rns/RnsPolicy;

    .line 1276
    .local v2, "rovePolicy":Lcom/mediatek/rns/RnsPolicy;
    const/4 v0, 0x5

    .line 1277
    .local v0, "mDiff":I
    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveOut()I

    move-result v3

    .line 1278
    .local v3, "roveoutvalue":I
    const/4 v4, 0x0

    .line 1279
    .local v4, "sendAlertWarning":Z
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v4

    .line 1308
    .end local v4    # "sendAlertWarning":Z
    .local v5, "sendAlertWarning":I
    :goto_0
    return v5

    .line 1282
    .end local v5    # "sendAlertWarning":I
    .restart local v4    # "sendAlertWarning":Z
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 1303
    :cond_1
    :goto_1
    const-string v7, "RnsServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendAlertWarning = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " iswificonnected : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isImsOverWifiEnabled : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " roveoutvalue : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "LastRssi : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "isEpdgConnected : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isLteNetworkReady: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 1308
    .restart local v5    # "sendAlertWarning":I
    goto :goto_0

    .line 1284
    .end local v5    # "sendAlertWarning":I
    :pswitch_0
    iget-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsEpdgConnectionChanged:Z

    if-nez v7, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    add-int v8, v3, v0

    if-gt v7, v8, :cond_1

    .line 1286
    :cond_3
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1291
    :pswitch_1
    iget-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsEpdgConnectionChanged:Z

    if-nez v7, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    add-int v8, v3, v0

    if-gt v7, v8, :cond_1

    .line 1293
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1294
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1295
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1296
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onReceiveDcSwitchStateChange(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    .locals 3
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .prologue
    .line 1662
    const-string v0, "RnsServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage param.getState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param.getReason(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getState()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1674
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 1663
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

    .line 1667
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getReason()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lost Connection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1668
    invoke-direct {p0, p1}, Lcom/mediatek/rns/RnsServiceImpl;->handleDcStateAttaching(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    goto :goto_1

    .line 1663
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

.method private sendRoveOutAlert()V
    .locals 2

    .prologue
    .line 1268
    const-string v0, "RnsServiceImpl"

    const-string v1, "send RoveOut Alert"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->sendRoveOutAlert()V

    .line 1271
    return-void
.end method

.method private startRoveIn()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1210
    const-string v0, "RnsServiceImpl"

    const-string v1, "startRoveIn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-eqz v0, :cond_1

    .line 1214
    const-string v0, "RnsServiceImpl"

    const-string v1, "No rove-in"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v0, v2, :cond_0

    .line 1216
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1234
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    .line 1222
    monitor-enter p0

    .line 1223
    :try_start_0
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v0, v2, :cond_2

    .line 1224
    const-string v0, "RnsServiceImpl"

    const-string v1, "RoveIn is in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    monitor-exit p0

    goto :goto_0

    .line 1233
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1227
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsCallActive:Z

    if-nez v0, :cond_4

    .line 1228
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/rns/RnsServiceImpl;->tryConnectToRadio(I)V

    .line 1230
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsCallActive:Z

    if-eqz v0, :cond_5

    .line 1231
    const-string v0, "RnsServiceImpl"

    const-string v1, "Call is active, no handover to Wifi"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private startRoveOut()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 1238
    const-string v0, "RnsServiceImpl"

    const-string v1, "startRoveOut"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-eqz v0, :cond_1

    .line 1242
    const-string v0, "RnsServiceImpl"

    const-string v1, "No rove-out"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v0, v3, :cond_0

    .line 1244
    iput v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1257
    :cond_0
    :goto_0
    return-void

    .line 1249
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    .line 1250
    monitor-enter p0

    .line 1251
    :try_start_0
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v0, v3, :cond_2

    .line 1252
    const-string v0, "RnsServiceImpl"

    const-string v1, "RoveOut is in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    monitor-exit p0

    goto :goto_0

    .line 1256
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1255
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/mediatek/rns/RnsServiceImpl;->tryConnectToRadio(I)V

    .line 1256
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private transToReadableType(I)I
    .locals 3
    .param p1, "val"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 908
    if-ne p1, v0, :cond_0

    .line 909
    const-string v0, "RnsServiceImpl"

    const-string v1, "make Radio = ALLOWED_RADIO_WIFI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const/4 v0, 0x0

    .line 923
    :goto_0
    return v0

    .line 911
    :cond_0
    if-ne p1, v1, :cond_1

    .line 912
    const-string v1, "RnsServiceImpl"

    const-string v2, "make Radio = ALLOWED_RADIO_MOBILE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 914
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 915
    const-string v0, "RnsServiceImpl"

    const-string v2, "make Radio = ALLOWED_RADIO_DENY"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 916
    goto :goto_0

    .line 918
    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 919
    const-string v0, "RnsServiceImpl"

    const-string v1, "make Radio = ALLOWED_RADIO_MAX"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v0, 0x3

    goto :goto_0

    .line 922
    :cond_3
    const-string v0, "RnsServiceImpl"

    const-string v1, "make Radio = ALLOWED_RADIO_NONE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private tryConnectToRadio(I)V
    .locals 4
    .param p1, "radio"    # I

    .prologue
    const/4 v3, 0x1

    .line 490
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-nez v0, :cond_2

    .line 491
    :cond_0
    const-string v0, "RnsServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retryConnectToRadio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandoverEvent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandoverEvent:I

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->retryConnectToRadio(II)V

    .line 493
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandoverEvent:I

    .line 504
    :cond_1
    :goto_0
    return-void

    .line 496
    :cond_2
    const-string v0, "RnsServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryConnectToRadio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    .line 499
    if-nez p1, :cond_3

    .line 500
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    goto :goto_0

    .line 501
    :cond_3
    if-ne p1, v3, :cond_1

    .line 502
    iput v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1744
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v3, p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1746
    .local v3, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const/4 v0, 0x0

    .line 1747
    .local v0, "i":I
    const-string v4, "Policies:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1748
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1749
    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1750
    .local v2, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  policy["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1751
    add-int/lit8 v0, v0, 0x1

    .line 1752
    goto :goto_0

    .line 1753
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    const-string v4, "(none(-1)|wifi_only(0)|wifi_preferred(1)|cellular_only(2)|cellular_preferred(3))"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1756
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1757
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1758
    const-string v4, "Status:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1759
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1760
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWifiConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1761
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWfcEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1762
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isHandoverInProgress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1763
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLteNetworkReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1764
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLteImsConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1765
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEpdgImsConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1766
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isImsOverLteEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1767
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNetworkReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1768
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCellularNetworkAvailable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isCellularNetworkAvailable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1769
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1770
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1771
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Radio Selection for IMS type connection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->makeImsRadio()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1772
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Radio Selection for MMS type connection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->makeMmsRadio()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1773
    const-string v4, "none(-1)|wifi(0)|moible(1)|all(2)"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1774
    return-void
.end method

.method public getAllowedRadioList(I)I
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 509
    packed-switch p1, :pswitch_data_0

    .line 513
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->makeMmsRadio()I

    move-result v0

    :goto_0
    return v0

    .line 511
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->makeImsRadio()I

    move-result v0

    goto :goto_0

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public getRnsState()I
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    return v0
.end method

.method public getTryAnotherRadioType(I)I
    .locals 12
    .param p1, "failedNetType"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 519
    const/4 v2, -0x1

    .line 520
    .local v2, "profile":I
    const/4 v0, -0x1

    .line 521
    .local v0, "netType":I
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/rns/RnsPolicy;

    .line 522
    .local v1, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 523
    invoke-virtual {v1}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v2

    .line 526
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 527
    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v3, v10, :cond_4

    if-ne p1, v10, :cond_4

    .line 529
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RoveIn failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msec."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_1
    :goto_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 540
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 569
    :cond_3
    :goto_1
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTryAnotherRadioType:New network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Old network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return v0

    .line 531
    :cond_4
    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v3, v11, :cond_1

    if-nez p1, :cond_1

    .line 533
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RoveOut failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msec."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 542
    :pswitch_0
    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 543
    const-string v3, "RnsServiceImpl"

    const-string v4, "PREFERENCE_WIFI_ONLY - no need try another"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 544
    :cond_5
    if-ne v2, v10, :cond_3

    .line 545
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLteNetworkReady "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isImsOverWifiEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 549
    const/4 v0, 0x0

    .line 550
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    goto/16 :goto_1

    .line 555
    :pswitch_1
    if-nez v2, :cond_6

    .line 556
    const-string v3, "RnsServiceImpl"

    const-string v4, "PREFERENCE_CELLULAR_ONLY - no need try another"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 557
    :cond_6
    if-ne v2, v11, :cond_3

    .line 558
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWifiConnected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isImsOverWifiEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v3

    if-nez v3, :cond_3

    .line 561
    const/4 v0, 0x1

    .line 562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    goto/16 :goto_1

    .line 540
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleEventImsOverLteSettings()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1606
    const-string v2, "RnsServiceImpl"

    const-string v3, "handleEventImsOverLteSettings "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    const/4 v1, -0x1

    .line 1608
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1610
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1611
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 1613
    :cond_0
    monitor-enter p0

    .line 1614
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volte_vt_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 1616
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    .line 1620
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1621
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsImsOverLteEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1623
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-eqz v2, :cond_1

    .line 1624
    iput v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1625
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    .line 1632
    :cond_1
    :goto_1
    return-void

    .line 1618
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    goto :goto_0

    .line 1620
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1629
    :cond_3
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 1630
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    goto :goto_1
.end method

.method public handleEventWifiDisconnect()V
    .locals 4

    .prologue
    .line 1560
    const-string v2, "RnsServiceImpl"

    const-string v3, "handle Event Wifi Disconnect "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const/4 v1, -0x1

    .line 1562
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1564
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1565
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 1567
    :cond_0
    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 1568
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1570
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1576
    :cond_2
    :goto_0
    return-void

    .line 1573
    :cond_3
    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1574
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    goto :goto_0
.end method

.method public handleEventWifiStateChangedAction()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1581
    const-string v2, "RnsServiceImpl"

    const-string v3, "handleEventWifiStateChangedAction "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    const/4 v1, -0x1

    .line 1583
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1585
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1586
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 1588
    :cond_0
    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 1589
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1591
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1601
    :cond_2
    :goto_0
    return-void

    .line 1594
    :cond_3
    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v2

    if-ne v2, v4, :cond_4

    .line 1595
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    .line 1597
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v2

    if-ne v2, v4, :cond_2

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z

    if-nez v2, :cond_2

    .line 1598
    const-string v2, "RnsServiceImpl"

    const-string v3, "send Rove Out Alert warning "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->sendRoveOutAlert()V

    goto :goto_0
.end method

.method public isNeedWifiConnected(I)Z
    .locals 4
    .param p1, "flag"    # I

    .prologue
    const/4 v3, 0x0

    .line 1795
    const-string v0, "RnsServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedWifiConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverWifiEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    iput-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    .line 1809
    return v3
.end method

.method public start()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 171
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 172
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/mediatek/rns/RnsServiceImpl;->REQUEST:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    .line 174
    return-void
.end method
