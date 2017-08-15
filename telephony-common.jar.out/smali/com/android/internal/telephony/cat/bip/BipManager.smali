.class public Lcom/android/internal/telephony/cat/bip/BipManager;
.super Ljava/lang/Object;
.source "BipManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;,
        Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;,
        Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;
    }
.end annotation


# static fields
.field private static final BIP_NAME:Ljava/lang/String; = "__M-BIP__"

.field private static final CONN_DELAY_TIMEOUT:I = 0x1388

.field private static final CONN_MGR_TIMEOUT:I = 0x7530

.field public static final MSG_ID_BIP_CONN_DELAY_TIMEOUT:I = 0xb

.field public static final MSG_ID_BIP_CONN_MGR_TIMEOUT:I = 0xa

.field public static final MSG_ID_BIP_DISCONNECT_TIMEOUT:I = 0xc

.field private static final PROPERTY_IA_APN:Ljava/lang/String; = "ril.radio.ia-apn"

.field private static final PROPERTY_OVERRIDE_APN:Ljava/lang/String; = "ril.pdn.overrideApn"

.field private static final PROPERTY_PDN_NAME_REUSE:Ljava/lang/String; = "ril.pdn.name.reuse"

.field private static final PROPERTY_PDN_REUSE:Ljava/lang/String; = "ril.pdn.reuse"

.field private static final mApnType:Ljava/lang/String; = "supl"

.field private static mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

.field private static mSimCount:I


# instance fields
.field final NETWORK_TYPE:I

.field private isConnMgrIntentTimeout:Z

.field private isParamsValid:Z

.field mApn:Ljava/lang/String;

.field mAutoReconnected:Z

.field mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

.field private mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

.field private mBipMgrHandler:Landroid/os/Handler;

.field mBufferSize:I

.field private mChannel:Lcom/android/internal/telephony/cat/bip/Channel;

.field private mChannelId:I

.field private mChannelStatus:I

.field private mChannelStatusDataObject:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

.field private final mCloseLock:Ljava/lang/Object;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

.field private mHandler:Landroid/os/Handler;

.field private mIsApnInserting:Z

.field private mIsCloseInProgress:Z

.field private mIsNetworkAvailableReceived:Z

.field private mIsOpenInProgress:Z

.field private mIsUpdateApnParams:Z

.field mLinkMode:I

.field mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

.field mLogin:Ljava/lang/String;

.field private mNetwork:Landroid/net/Network;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkRequest:Landroid/net/NetworkRequest;

.field private mNumeric:Ljava/lang/String;

.field mPassword:Ljava/lang/String;

.field private mSlotId:I

.field mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    .line 121
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "sim_id"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    .line 94
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 96
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    .line 98
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 100
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    .line 101
    iput v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBufferSize:I

    .line 102
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    .line 103
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    .line 104
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    .line 105
    iput v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLinkMode:I

    .line 106
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mAutoReconnected:Z

    .line 107
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCloseLock:Ljava/lang/Object;

    .line 109
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    .line 110
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLogin:Ljava/lang/String;

    .line 111
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mPassword:Ljava/lang/String;

    .line 113
    iput v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->NETWORK_TYPE:I

    .line 115
    iput v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    .line 116
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    .line 117
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannel:Lcom/android/internal/telephony/cat/bip/Channel;

    .line 118
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatusDataObject:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    .line 119
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isParamsValid:Z

    .line 120
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    .line 122
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsApnInserting:Z

    .line 130
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z

    .line 131
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    .line 132
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 133
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsCloseInProgress:Z

    .line 134
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsNetworkAvailableReceived:Z

    .line 145
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 146
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsUpdateApnParams:Z

    .line 147
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNumeric:Ljava/lang/String;

    .line 148
    new-instance v1, Lcom/android/internal/telephony/cat/bip/BipManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/bip/BipManager$1;-><init>(Lcom/android/internal/telephony/cat/bip/BipManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    .line 1440
    new-instance v1, Lcom/android/internal/telephony/cat/bip/BipManager$3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/bip/BipManager$3;-><init>(Lcom/android/internal/telephony/cat/bip/BipManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    .line 178
    const-string v1, "[BIP]"

    const-string v2, "Construct BipManager"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    if-nez p1, :cond_0

    .line 181
    const-string v1, "[BIP]"

    const-string v2, "Fail to construct BipManager"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    .line 185
    iput p3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    .line 186
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Construct instance sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 188
    iput-object p2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    .line 189
    new-instance v1, Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    .line 191
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 192
    .local v0, "connFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->deleteApnParams()V

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cat/bip/BipManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/cat/bip/BipManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cat/bip/BipManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->disconnect()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/cat/bip/BipManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsNetworkAvailableReceived:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/cat/bip/BipManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsNetworkAvailableReceived:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/cat/bip/BipManager;Landroid/net/Network;)Landroid/net/Network;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;
    .param p1, "x1"    # Landroid/net/Network;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/cat/bip/BipManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->connect()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/cat/bip/BipManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;
    .param p1, "x1"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/cat/bip/BipManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->resetLocked()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/cat/bip/BipManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cat/bip/BipManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCloseLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cat/bip/BipManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsCloseInProgress:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/cat/bip/BipManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsCloseInProgress:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cat/bip/BipManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/cat/bip/BipManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    return v0
.end method

.method private checkDataCapability(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 11
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x0

    .line 1296
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 1298
    .local v3, "mTelMan":Landroid/telephony/TelephonyManager;
    const/4 v4, 0x0

    .line 1299
    .local v4, "simInsertedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v7, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimCount:I

    if-ge v2, v7, :cond_1

    .line 1300
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1301
    add-int/lit8 v4, v4, 0x1

    .line 1299
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1304
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 1305
    .local v1, "defaultDataSubId":I
    iget v7, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    .line 1306
    .local v5, "subId":[I
    const/4 v0, -0x1

    .line 1307
    .local v0, "currentSubId":I
    if-eqz v5, :cond_3

    .line 1308
    aget v0, v5, v6

    .line 1313
    const-string v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkDataCapability: simInsertedCount:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " currentSubId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " defaultDataSubId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    if-lt v4, v10, :cond_4

    iget-object v7, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    if-eqz v7, :cond_4

    iget-object v7, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    if-eq v10, v7, :cond_2

    const/4 v7, 0x3

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iget v8, v8, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    if-eq v7, v8, :cond_2

    const/16 v7, 0xb

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iget v8, v8, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    if-ne v7, v8, :cond_4

    :cond_2
    if-eq v0, v1, :cond_4

    .line 1322
    const-string v7, "[BIP]"

    const-string v8, "checkDataCapability: return false"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    :goto_1
    return v6

    .line 1310
    :cond_3
    const-string v7, "[BIP]"

    const-string v8, "checkDataCapability: invalid subId"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1325
    :cond_4
    const-string v6, "[BIP]"

    const-string v7, "checkDataCapability: return true"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    const/4 v6, 0x1

    goto :goto_1
.end method

.method private checkNetworkInfo(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)Z
    .locals 6
    .param p1, "nwInfo"    # Landroid/net/NetworkInfo;
    .param p2, "exState"    # Landroid/net/NetworkInfo$State;

    .prologue
    const/4 v3, 0x0

    .line 1067
    if-nez p1, :cond_0

    move v2, v3

    .line 1080
    :goto_0
    return v2

    .line 1071
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 1072
    .local v1, "type":I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 1073
    .local v0, "state":Landroid/net/NetworkInfo$State;
    const-string v4, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network type is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_1

    const-string v2, "MOBILE"

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const-string v2, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    if-nez v1, :cond_2

    if-ne v0, p2, :cond_2

    .line 1077
    const/4 v2, 0x1

    goto :goto_0

    .line 1073
    :cond_1
    const-string v2, "WIFI"

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1080
    goto :goto_0
.end method

.method private connect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, "ret":I
    const-string v2, "[BIP]"

    const-string v3, "establishConnect"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->requestRouteToHost()Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    const-string v2, "[BIP]"

    const-string v3, "requestNetwork: Fail - requestRouteToHost"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/4 v1, 0x2

    .line 263
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->isActivated:Z

    .line 265
    const-string v2, "[BIP]"

    const-string v3, "requestNetwork: establish data channel"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->establishLink()I

    move-result v1

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "response":Landroid/os/Message;
    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    .line 270
    if-eqz v1, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 271
    :cond_1
    const-string v2, "[BIP]"

    const-string v3, "1 channel is activated"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const/16 v2, 0x80

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cat/bip/BipManager;->updateCurrentChannelStatus(I)V

    .line 277
    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 278
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsNetworkAvailableReceived:Z

    .line 279
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x28

    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 280
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 282
    :cond_2
    return-void

    .line 274
    :cond_3
    const-string v2, "[BIP]"

    const-string v3, "2 channel is un-activated"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/bip/BipManager;->updateCurrentChannelStatus(I)V

    goto :goto_0
.end method

.method private deleteApnParams()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1170
    iget v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 1171
    .local v3, "subId":[I
    const/4 v0, 0x0

    .line 1173
    .local v0, "numeric":Ljava/lang/String;
    const-string v4, "[BIP]"

    const-string v5, "BM-deleteApnParams: enter. "

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    aget v4, v3, v6

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1176
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    aget v5, v3, v6

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 1179
    :cond_0
    const-string v2, "name = \'__M-BIP__\'"

    .line 1180
    .local v2, "selection":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1182
    .local v1, "rows":I
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BM-deleteApnParams:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] end"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    return-void
.end method

.method private deleteOrRestoreApnParams()V
    .locals 1

    .prologue
    .line 1288
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsUpdateApnParams:Z

    if-eqz v0, :cond_0

    .line 1289
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->restoreApnParams()V

    .line 1293
    :goto_0
    return-void

    .line 1291
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->deleteApnParams()V

    goto :goto_0
.end method

.method private disconnect()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 285
    const/4 v7, 0x0

    .line 286
    .local v7, "ret":I
    const/4 v6, 0x0

    .line 288
    .local v6, "response":Landroid/os/Message;
    const-string v8, "[BIP]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnect: opening ? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->deleteOrRestoreApnParams()V

    .line 292
    iget-boolean v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    if-ne v12, v8, :cond_2

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_2

    .line 294
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v2

    .line 295
    .local v2, "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    const/4 v7, 0x2

    .line 297
    if-eqz v2, :cond_1

    .line 298
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/bip/Channel;->closeChannel()I

    .line 299
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->removeChannel(I)I

    .line 303
    :goto_0
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cat/bip/BipManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 304
    iput v13, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    .line 305
    const-string v8, "[BIP]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnect(): mCurrentCmd = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    if-eqz v8, :cond_0

    .line 307
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput v11, v8, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 309
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput-boolean v11, v8, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->isActivated:Z

    .line 311
    :cond_0
    iput-boolean v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 312
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x28

    iget-object v10, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8, v9, v7, v11, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 313
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 374
    .end local v2    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    :goto_1
    return-void

    .line 301
    .restart local v2    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    iget-object v10, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v10, v10, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->releaseChannelId(II)V

    goto :goto_0

    .line 315
    .end local v2    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_2
    const/4 v3, 0x0

    .line 316
    .local v3, "i":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v1, "alByte":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    .line 318
    .local v0, "additionalInfo":[B
    const-string v8, "[BIP]"

    const-string v9, "this is a drop link"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iput v13, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    .line 320
    const-string v8, "[BIP]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnect(): mCurrentCmd = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    if-eqz v8, :cond_3

    .line 322
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput v11, v8, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 324
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput-boolean v11, v8, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->isActivated:Z

    .line 327
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/cat/CatResponseMessage;

    const/16 v8, 0xa

    invoke-direct {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(I)V

    .line 329
    .local v5, "resMsg":Lcom/android/internal/telephony/cat/CatResponseMessage;
    const/4 v3, 0x1

    :goto_2
    const/4 v8, 0x7

    if-gt v3, v8, :cond_7

    .line 330
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->isChannelIdOccupied(I)Z

    move-result v8

    if-ne v12, v8, :cond_5

    .line 332
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v2

    .line 333
    .restart local v2    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    const-string v8, "[BIP]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "channel protocolType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget v8, v2, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    if-eq v12, v8, :cond_4

    iget v8, v2, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    if-ne v13, v8, :cond_5

    .line 336
    :cond_4
    const-string v8, "ro.mtk_gemini_support"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v12, :cond_6

    .line 339
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cat/bip/BipManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 340
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->resetLocked()V

    .line 346
    :goto_3
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/bip/Channel;->closeChannel()I

    .line 347
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->removeChannel(I)I

    .line 348
    const/16 v8, -0x48

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iget v8, v2, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelId:I

    or-int/lit8 v8, v8, 0x0

    int-to-byte v8, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    .end local v2    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 343
    .restart local v2    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cat/bip/BipManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 344
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->resetLocked()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 353
    .end local v2    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    :catch_0
    move-exception v4

    .line 354
    .local v4, "ne":Ljava/lang/NullPointerException;
    const-string v8, "[BIP]"

    const-string v9, "NPE, channel null."

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_4

    .line 359
    .end local v4    # "ne":Ljava/lang/NullPointerException;
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_9

    .line 360
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v0, v8, [B

    .line 361
    const/4 v3, 0x0

    :goto_5
    array-length v8, v0

    if-ge v3, v8, :cond_8

    .line 362
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v0, v3

    .line 361
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 364
    :cond_8
    const/16 v8, 0x82

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setSourceId(I)V

    .line 365
    const/16 v8, 0x81

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setDestinationId(I)V

    .line 366
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 367
    invoke-virtual {v5, v11}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setOneShot(Z)V

    .line 368
    const-string v8, "[BIP]"

    const-string v9, "onEventDownload: for channel status"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v8, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/cat/CatService;->onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_1

    .line 371
    :cond_9
    const-string v8, "[BIP]"

    const-string v9, "onEventDownload: No client channels are opened."

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private establishLink()I
    .locals 12

    .prologue
    .line 1084
    const/4 v11, 0x0

    .line 1085
    .local v11, "ret":I
    const/4 v9, 0x0

    .line 1087
    .local v9, "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v1, v1, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1088
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: establish a TCPServer link"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    iget v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLinkMode:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v3, v3, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v4, v4, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->portNumber:I

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBufferSize:I

    iget-object v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v6, Lcom/android/internal/telephony/cat/CatService;

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;-><init>(IIIIILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/bip/BipManager;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .local v0, "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/bip/Channel;->openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I

    move-result v11

    .line 1098
    if-eqz v11, :cond_0

    const/4 v1, 0x3

    if-ne v11, v1, :cond_2

    .line 1099
    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    .line 1100
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->addChannel(ILcom/android/internal/telephony/cat/bip/Channel;)I

    .line 1155
    :cond_1
    :goto_0
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BM-establishLink: ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v11

    .line 1156
    :goto_1
    return v1

    .line 1092
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    :catch_0
    move-exception v10

    .line 1093
    .local v10, "ne":Ljava/lang/NullPointerException;
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: NE,new TCP server channel fail."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1095
    const/4 v1, 0x5

    move-object v0, v9

    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    goto :goto_1

    .line 1102
    .end local v10    # "ne":Ljava/lang/NullPointerException;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->releaseChannelId(II)V

    .line 1103
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    goto :goto_0

    .line 1105
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v1, v1, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 1106
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: establish a TCP link"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/cat/bip/TcpChannel;

    iget v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLinkMode:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v3, v3, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/bip/OtherAddress;->address:Ljava/net/InetAddress;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->portNumber:I

    iget v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBufferSize:I

    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v7, Lcom/android/internal/telephony/cat/CatService;

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cat/bip/TcpChannel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/bip/BipManager;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1119
    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/bip/Channel;->openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I

    move-result v11

    .line 1120
    const/16 v1, 0xa

    if-eq v11, v1, :cond_1

    .line 1121
    if-eqz v11, :cond_4

    const/4 v1, 0x3

    if-ne v11, v1, :cond_6

    .line 1122
    :cond_4
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    .line 1123
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->addChannel(ILcom/android/internal/telephony/cat/bip/Channel;)I

    goto :goto_0

    .line 1111
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    :catch_1
    move-exception v10

    .line 1112
    .restart local v10    # "ne":Ljava/lang/NullPointerException;
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: NE,new TCP client channel fail."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1114
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    if-nez v1, :cond_5

    .line 1115
    const/16 v1, 0x9

    move-object v0, v9

    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    goto :goto_1

    .line 1117
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_5
    const/4 v1, 0x5

    move-object v0, v9

    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    goto :goto_1

    .line 1125
    .end local v10    # "ne":Ljava/lang/NullPointerException;
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->releaseChannelId(II)V

    .line 1126
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    goto/16 :goto_0

    .line 1129
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v1, v1, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 1131
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: establish a UDP link"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    :try_start_2
    new-instance v0, Lcom/android/internal/telephony/cat/bip/UdpChannel;

    iget v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLinkMode:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v3, v3, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/bip/OtherAddress;->address:Ljava/net/InetAddress;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->portNumber:I

    iget v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBufferSize:I

    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v7, Lcom/android/internal/telephony/cat/CatService;

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cat/bip/UdpChannel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/bip/BipManager;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1141
    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/bip/Channel;->openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I

    move-result v11

    .line 1142
    if-eqz v11, :cond_8

    const/4 v1, 0x3

    if-ne v11, v1, :cond_9

    .line 1143
    :cond_8
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    .line 1144
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->addChannel(ILcom/android/internal/telephony/cat/bip/Channel;)I

    goto/16 :goto_0

    .line 1136
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    :catch_2
    move-exception v10

    .line 1137
    .restart local v10    # "ne":Ljava/lang/NullPointerException;
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: NE,new UDP client channel fail."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1139
    const/4 v1, 0x5

    move-object v0, v9

    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    goto/16 :goto_1

    .line 1146
    .end local v10    # "ne":Ljava/lang/NullPointerException;
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->releaseChannelId(II)V

    .line 1147
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    goto/16 :goto_0

    .line 1150
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_a
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: unsupported channel type"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    const/4 v11, 0x4

    .line 1152
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    move-object v0, v9

    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    goto/16 :goto_0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getDataConnectionFromSetting()I
    .locals 4

    .prologue
    .line 248
    const/4 v0, -0x1

    .line 250
    .local v0, "currentDataConnectionSimId":I
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_connection_setting"

    const/4 v3, -0x4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 252
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default Data Setting value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;I)Lcom/android/internal/telephony/cat/bip/BipManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    const/4 v1, 0x0

    .line 210
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInstance sim : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sget-object v2, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    if-nez v2, :cond_0

    .line 212
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    sput v2, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimCount:I

    .line 213
    sget v2, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimCount:I

    new-array v2, v2, [Lcom/android/internal/telephony/cat/bip/BipManager;

    sput-object v2, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    .line 214
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimCount:I

    if-ge v0, v2, :cond_0

    .line 215
    sget-object v2, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    aput-object v1, v2, v0

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    .end local v0    # "i":I
    :cond_0
    if-ltz p2, :cond_1

    sget v2, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimCount:I

    if-le p2, v2, :cond_2

    .line 219
    :cond_1
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInstance invalid sim : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_1
    return-object v1

    .line 222
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    aget-object v1, v1, p2

    if-nez v1, :cond_3

    .line 223
    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    new-instance v2, Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/telephony/cat/bip/BipManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    aput-object v2, v1, p2

    .line 225
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    aget-object v1, v1, p2

    goto :goto_1
.end method

.method private getUri(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "slodId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1160
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1162
    .local v0, "subId":[I
    aget v1, v0, v3

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1166
    :goto_0
    return-object v1

    .line 1165
    :cond_0
    const-string v1, "[BIP]"

    const-string v2, "BM-getUri: invalid subId."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private newRequest()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 847
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 848
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    new-instance v2, Lcom/android/internal/telephony/cat/bip/BipManager$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/bip/BipManager$2;-><init>(Lcom/android/internal/telephony/cat/bip/BipManager;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 903
    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 904
    .local v1, "subId":[I
    aget v2, v1, v3

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 905
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    aget v3, v1, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 923
    :goto_0
    const-string v2, "[BIP]"

    const-string v3, "Start request network timer."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cat/bip/BipManager;->sendBipConnTimeOutMsg(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 925
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestNetwork: mNetworkRequest:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNetworkCallback:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/16 v4, 0x7530

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    .line 929
    return-void

    .line 911
    :cond_0
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkRequest:Landroid/net/NetworkRequest;

    goto :goto_0
.end method

.method private releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 945
    if-eqz p1, :cond_0

    .line 946
    const-string v1, "[BIP]"

    const-string v2, "releaseRequest"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 948
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 952
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 950
    :cond_0
    const-string v1, "[BIP]"

    const-string v2, "releaseRequest: networkCallback is null."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestRouteToHost()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 1049
    const-string v3, "[BIP]"

    const-string v4, "requestRouteToHost"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const/4 v1, 0x0

    .line 1051
    .local v1, "addressBytes":[B
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    if-eqz v3, :cond_0

    .line 1052
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/bip/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 1057
    const/4 v0, 0x0

    .line 1058
    .local v0, "addr":I
    aget-byte v3, v1, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v3, v2

    .line 1063
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v5, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v2

    .end local v0    # "addr":I
    :goto_0
    return v2

    .line 1054
    :cond_0
    const-string v3, "[BIP]"

    const-string v4, "mDataDestinationAddress is null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetLocked()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 935
    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 936
    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetwork:Landroid/net/Network;

    .line 937
    return-void
.end method

.method private restoreApnParams()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apn = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' COLLATE NOCASE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "numeric"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1265
    .local v3, "selection":Ljava/lang/String;
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BM-restoreApnParams: selection = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1268
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 1269
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    const-string v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1272
    .local v6, "apnTypeDb":Ljava/lang/String;
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BM-restoreApnParams: apnTypeDb before = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    if-eqz v6, :cond_0

    const-string v0, "supl"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1274
    const-string v0, ",supl"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1275
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BM-restoreApnParams: apnTypeDb after = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1277
    .local v8, "updateValues":Landroid/content/ContentValues;
    const-string v0, "type"

    invoke-virtual {v8, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsUpdateApnParams:Z

    .line 1283
    .end local v6    # "apnTypeDb":Ljava/lang/String;
    .end local v8    # "updateValues":Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1285
    :cond_1
    return-void
.end method

.method private sendBipConnTimeOutMsg(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 4
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 1028
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1029
    .local v0, "bipTimerMsg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1030
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1031
    return-void
.end method

.method private sendBipDisconnectTimeOutMsg(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 4
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 1034
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1035
    .local v0, "bipTimerMsg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1036
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1037
    return-void
.end method

.method private setApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;

    .prologue
    .line 1186
    const-string v2, "[BIP]"

    const-string v3, "BM-setApnParams: enter"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    if-nez p1, :cond_0

    .line 1188
    const-string v2, "[BIP]"

    const-string v3, "BM-setApnParams: No apn parameters"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    :goto_0
    return-void

    .line 1192
    :cond_0
    const/4 v14, 0x0

    .line 1193
    .local v14, "numeric":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1194
    .local v11, "mcc":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1195
    .local v12, "mnc":Ljava/lang/String;
    const-string v8, "supl"

    .line 1196
    .local v8, "apnType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v15

    .line 1198
    .local v15, "subId":[I
    const/4 v2, 0x0

    aget v2, v15, v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1199
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v15, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v14

    .line 1202
    :cond_1
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_3

    .line 1203
    const/4 v10, 0x0

    .line 1204
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v14, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1205
    const/4 v2, 0x3

    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 1206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNumeric:Ljava/lang/String;

    .line 1207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apn = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' COLLATE NOCASE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "numeric"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1209
    .local v5, "selection":Ljava/lang/String;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BM-setApnParams: selection = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1213
    if-eqz v10, :cond_3

    .line 1214
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1215
    .local v17, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    const-string v3, "__M-BIP__"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    const-string v2, "apn"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const-string v2, "user"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const-string v2, "password"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    const-string v2, "type"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    const-string v2, "mcc"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    const-string v2, "mnc"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    const-string v2, "numeric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    const-string v2, "sub_id"

    const/4 v3, 0x0

    aget v3, v15, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1225
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 1228
    const-string v2, "[BIP]"

    const-string v3, "BM-setApnParams: insert one record"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 1231
    .local v13, "newRow":Landroid/net/Uri;
    if-eqz v13, :cond_4

    .line 1232
    const-string v2, "[BIP]"

    const-string v3, "insert a new record into db"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsApnInserting:Z

    .line 1256
    .end local v13    # "newRow":Landroid/net/Uri;
    :cond_2
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1259
    .end local v5    # "selection":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v17    # "values":Landroid/content/ContentValues;
    :cond_3
    const-string v2, "[BIP]"

    const-string v3, "BM-setApnParams: exit"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1235
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "newRow":Landroid/net/Uri;
    .restart local v17    # "values":Landroid/content/ContentValues;
    :cond_4
    const-string v2, "[BIP]"

    const-string v3, "Fail to insert apn params into db"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1237
    .end local v13    # "newRow":Landroid/net/Uri;
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1238
    const-string v2, "[BIP]"

    const-string v3, "BM-setApnParams: count = 1"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1240
    const-string v2, "type"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1242
    .local v9, "apnTypeDb":Ljava/lang/String;
    if-eqz v9, :cond_6

    const-string v2, "supl"

    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "supl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1244
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 1245
    .local v16, "updateValues":Landroid/content/ContentValues;
    const-string v2, "type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0, v5, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1248
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsUpdateApnParams:Z

    goto :goto_1

    .line 1250
    .end local v16    # "updateValues":Landroid/content/ContentValues;
    :cond_6
    const-string v2, "[BIP]"

    const-string v3, "No need update APN db"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1254
    .end local v9    # "apnTypeDb":Ljava/lang/String;
    :cond_7
    const-string v2, "[BIP]"

    const-string v3, "BM-setApnParams: do not update,more one record"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private updateCurrentChannelStatus(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 1041
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->updateChannelStatus(II)V

    .line 1042
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput p1, v1, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    :goto_0
    return-void

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "ne":Ljava/lang/NullPointerException;
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCurrentChannelStatus id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public acquireNetwork()V
    .locals 6

    .prologue
    .line 377
    const/4 v1, 0x2

    .line 378
    .local v1, "result":I
    const/4 v2, 0x0

    .line 380
    .local v2, "ret":I
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 381
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetwork:Landroid/net/Network;

    if-eqz v3, :cond_1

    .line 383
    const-string v3, "[BIP]"

    const-string v4, "acquireNetwork: already available"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v0

    .line 385
    .local v0, "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    if-nez v0, :cond_0

    .line 386
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->connect()V

    .line 393
    .end local v0    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestNetwork: slotId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->newRequest()V

    goto :goto_0
.end method

.method public closeChannel(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 717
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 719
    .local v0, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new closeChannel, mCloseCid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseCid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->closeChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 722
    return-void
.end method

.method public closeChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 12
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x7

    .line 642
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: enter"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const/4 v3, 0x0

    .line 645
    .local v3, "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    iget v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseCid:I

    .line 647
    .local v1, "cId":I
    iput v9, p2, Landroid/os/Message;->arg1:I

    .line 648
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 649
    if-ltz v1, :cond_0

    if-ge v8, v1, :cond_1

    .line 650
    :cond_0
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: channel id is wrong"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iput v8, p2, Landroid/os/Message;->arg1:I

    .line 705
    :goto_0
    iput-boolean v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isParamsValid:Z

    .line 706
    iget-boolean v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsCloseInProgress:Z

    if-nez v5, :cond_a

    .line 707
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 708
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 712
    :goto_1
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: exit"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    return-void

    .line 654
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getBipChannelStatus(I)I

    move-result v5

    if-nez v5, :cond_2

    .line 655
    const/4 v5, 0x7

    iput v5, p2, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 700
    :catch_0
    move-exception v2

    .line 701
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BM-closeChannel: IndexOutOfBoundsException cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iput v8, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 656
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getBipChannelStatus(I)I

    move-result v5

    if-ne v10, v5, :cond_3

    .line 657
    const/16 v5, 0x8

    iput v5, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 659
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v3

    .line 660
    if-nez v3, :cond_4

    .line 661
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: channel has already been closed"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const/4 v5, 0x7

    iput v5, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 665
    :cond_4
    const/4 v4, 0x0

    .line 666
    .local v4, "tcpSerCh":Lcom/android/internal/telephony/cat/bip/TcpServerChannel;
    iget v5, v3, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    if-ne v11, v5, :cond_7

    .line 667
    instance-of v5, v3, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    if-eqz v5, :cond_5

    .line 668
    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    move-object v4, v0

    .line 669
    iget-boolean v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseBackToTcpListen:Z

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->setCloseBackToTcpListen(Z)V

    .line 686
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->deleteOrRestoreApnParams()V

    .line 687
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/bip/Channel;->closeChannel()I

    move-result v5

    iput v5, p2, Landroid/os/Message;->arg1:I

    .line 688
    iget v5, v3, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    if-ne v11, v5, :cond_9

    .line 689
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->isCloseBackToTcpListen()Z

    move-result v5

    if-nez v5, :cond_6

    .line 690
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->removeChannel(I)I

    .line 696
    :cond_6
    :goto_3
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannel:Lcom/android/internal/telephony/cat/bip/Channel;

    .line 697
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    goto/16 :goto_0

    .line 672
    :cond_7
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: stop data connection"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsCloseInProgress:Z

    .line 674
    const-string v5, "ro.mtk_gemini_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v7, :cond_8

    .line 675
    const-string v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stopUsingNetworkFeature getDataConnectionFromSetting  =="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/bip/BipManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 679
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->resetLocked()V

    goto :goto_2

    .line 682
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/bip/BipManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 683
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->resetLocked()V

    goto :goto_2

    .line 693
    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->removeChannel(I)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 710
    .end local v4    # "tcpSerCh":Lcom/android/internal/telephony/cat/bip/TcpServerChannel;
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->sendBipDisconnectTimeOutMsg(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto/16 :goto_1
.end method

.method public dispose()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "i":I
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispose slotId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    if-eqz v1, :cond_0

    .line 232
    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 233
    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    aput-object v4, v1, v2

    .line 237
    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimCount:I

    if-ge v0, v1, :cond_1

    .line 238
    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 243
    :cond_1
    sget v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimCount:I

    if-ne v0, v1, :cond_2

    .line 244
    sput-object v4, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    .line 246
    :cond_2
    return-void

    .line 237
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getBipChannelManager()Lcom/android/internal/telephony/cat/bip/BipChannelManager;
    .locals 1

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    return-object v0
.end method

.method public getChannelId()I
    .locals 3

    .prologue
    .line 1330
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BM-getChannelId: channel id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    return v0
.end method

.method public getChannelStatus(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 832
    const-string v1, "[BIP]"

    const-string v2, "new getChannelStatus"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 835
    .local v0, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->getChannelStatus(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 836
    return-void
.end method

.method public getChannelStatus(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 7
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1005
    const/4 v3, 0x0

    .line 1006
    .local v3, "ret":I
    const/4 v0, 0x1

    .line 1007
    .local v0, "cId":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1010
    .local v1, "csList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/bip/ChannelStatus;>;"
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    const/4 v4, 0x7

    if-gt v0, v4, :cond_1

    .line 1011
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->isChannelIdOccupied(I)Z

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1012
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getChannelStatus: cId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1017
    :catch_0
    move-exception v2

    .line 1018
    .local v2, "ne":Ljava/lang/NullPointerException;
    const-string v4, "[BIP]"

    const-string v5, "getChannelStatus: NE"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1021
    .end local v2    # "ne":Ljava/lang/NullPointerException;
    :cond_1
    iput-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusList:Ljava/util/List;

    .line 1022
    iput v3, p2, Landroid/os/Message;->arg1:I

    .line 1023
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1024
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1025
    return-void
.end method

.method public getFreeChannelId()I
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getFreeChannelId()I

    move-result v0

    return v0
.end method

.method public openChannel(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 839
    const-string v1, "[BIP]"

    const-string v2, "new openChannel"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 841
    .local v0, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 842
    return-void
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 16
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 396
    const/4 v8, 0x2

    .line 397
    .local v8, "result":I
    const-string v12, "[BIP]"

    const-string v13, "BM-openChannel: enter"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const/4 v9, 0x0

    .line 399
    .local v9, "ret":I
    const/4 v2, 0x0

    .line 407
    .local v2, "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->checkDataCapability(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 408
    new-instance v12, Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Lcom/android/internal/telephony/cat/bip/ChannelStatus;-><init>(III)V

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    .line 411
    const/4 v12, 0x5

    move-object/from16 v0, p2

    iput v12, v0, Landroid/os/Message;->arg1:I

    .line 412
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 413
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 639
    :goto_0
    return-void

    .line 417
    :cond_0
    const-string v12, "[BIP]"

    const-string v13, "BM-openChannel: init channel status object"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z

    .line 421
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v13, v13, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->acquireChannelId(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    .line 422
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    if-nez v12, :cond_1

    .line 423
    const-string v12, "[BIP]"

    const-string v13, "BM-openChannel: acquire channel id = 0"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const/4 v12, 0x5

    move-object/from16 v0, p2

    iput v12, v0, Landroid/os/Message;->arg1:I

    .line 425
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 426
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 427
    const-string v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BM-openChannel: channel id = 0. mCurrentCmd = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_1
    new-instance v12, Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Lcom/android/internal/telephony/cat/bip/ChannelStatus;-><init>(III)V

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    .line 431
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 432
    const-string v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BM-openChannel: mCurrentCmd = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    .line 435
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    if-eqz v12, :cond_4

    .line 436
    const-string v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BM-openChannel: bearer type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iget v14, v14, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :goto_1
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBufferSize:I

    .line 442
    const-string v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BM-openChannel: buffer size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    .line 445
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    if-eqz v12, :cond_5

    .line 446
    const-string v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BM-openChannel: local address "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iget-object v14, v14, Lcom/android/internal/telephony/cat/bip/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v14}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :goto_2
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    .line 452
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    if-eqz v12, :cond_6

    .line 453
    const-string v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BM-openChannel: transport protocol type/port "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v14, v14, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v14, v14, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->portNumber:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :goto_3
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    .line 460
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    if-eqz v12, :cond_7

    .line 461
    const-string v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BM-openChannel: dest address "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iget-object v14, v14, Lcom/android/internal/telephony/cat/bip/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v14}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :goto_4
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    .line 467
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    if-eqz v12, :cond_8

    .line 468
    const-string v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BM-openChannel: apn "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :goto_5
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLogin:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLogin:Ljava/lang/String;

    .line 474
    const-string v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BM-openChannel: login "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLogin:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mPwd:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mPassword:Ljava/lang/String;

    .line 476
    const-string v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BM-openChannel: password "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mPwd:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v12

    and-int/lit8 v12, v12, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    const/4 v12, 0x0

    :goto_6
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLinkMode:I

    .line 481
    const-string v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BM-openChannel: mLinkMode "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v12

    and-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_a

    const/4 v12, 0x0

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mAutoReconnected:Z

    .line 485
    const-string v12, "ril.pdn.reuse"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 486
    .local v5, "isPdnReuse":Ljava/lang/String;
    const-string v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BM-openChannel: isPdnReuse: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    if-eqz v12, :cond_10

    .line 489
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iget v12, v12, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_c

    .line 491
    const-string v12, "ril.pdn.reuse"

    const-string v13, "2"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_b

    .line 493
    const-string v12, "ril.pdn.name.reuse"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_2
    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLogin:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/internal/telephony/cat/bip/BipManager;->setApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v12, "gsm.stk.bip"

    const-string v13, "1"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BM-openChannel: call startUsingNetworkFeature:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v12, "[BIP]"

    const-string v13, "MAXCHANNELID :7"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const/4 v12, 0x3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v13, v13, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    if-ne v12, v13, :cond_12

    .line 559
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->establishLink()I

    move-result v9

    .line 561
    if-eqz v9, :cond_3

    const/4 v12, 0x3

    if-ne v9, v12, :cond_11

    .line 562
    :cond_3
    const-string v12, "[BIP]"

    const-string v13, "BM-openChannel: channel is activated"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v2

    .line 564
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget-object v13, v2, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget v13, v13, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    iput v13, v12, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 570
    :goto_9
    move-object/from16 v0, p2

    iput v9, v0, Landroid/os/Message;->arg1:I

    .line 571
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v0, p2

    iput-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 572
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 638
    :goto_a
    const-string v12, "[BIP]"

    const-string v13, "BM-openChannel: exit"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 438
    .end local v5    # "isPdnReuse":Ljava/lang/String;
    :cond_4
    const-string v12, "[BIP]"

    const-string v13, "BM-openChannel: bearer type is null"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 448
    :cond_5
    const-string v12, "[BIP]"

    const-string v13, "BM-openChannel: local address is null"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 456
    :cond_6
    const-string v12, "[BIP]"

    const-string v13, "BM-openChannel: transport protocol is null"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 463
    :cond_7
    const-string v12, "[BIP]"

    const-string v13, "BM-openChannel: dest address is null"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 470
    :cond_8
    const-string v12, "[BIP]"

    const-string v13, "BM-openChannel: apn is null."

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 478
    :cond_9
    const/4 v12, 0x1

    goto/16 :goto_6

    .line 483
    :cond_a
    const/4 v12, 0x1

    goto/16 :goto_7

    .line 495
    .restart local v5    # "isPdnReuse":Ljava/lang/String;
    :cond_b
    const-string v12, "ril.pdn.name.reuse"

    const-string v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 499
    :cond_c
    const-string v12, "ril.pdn.reuse"

    const-string v13, "0"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 501
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v10

    .line 502
    .local v10, "subId":[I
    const/4 v7, -0x1

    .line 503
    .local v7, "phoneId":I
    if-eqz v10, :cond_d

    .line 504
    const/4 v12, 0x0

    aget v12, v10, v12

    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v7

    .line 506
    :cond_d
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 508
    .local v6, "myPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v6, :cond_f

    .line 509
    const/4 v3, 0x0

    .line 510
    .local v3, "dataNetworkType":I
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v3

    .line 511
    const-string v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "dataNetworkType: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const/16 v12, 0xd

    if-ne v12, v3, :cond_e

    .line 513
    const-string v12, "ril.radio.ia-apn"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 514
    .local v4, "iaApn":Ljava/lang/String;
    const-string v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "iaApn: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 518
    const-string v12, "ril.pdn.reuse"

    const-string v13, "2"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    .end local v3    # "dataNetworkType":I
    .end local v4    # "iaApn":Ljava/lang/String;
    :cond_e
    :goto_b
    const-string v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BM-openChannel: override apn: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v12, "ril.pdn.overrideApn"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 522
    :cond_f
    const-string v12, "[BIP]"

    const-string v13, "myPhone is null"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 530
    .end local v6    # "myPhone":Lcom/android/internal/telephony/Phone;
    .end local v7    # "phoneId":I
    .end local v10    # "subId":[I
    :cond_10
    const/4 v12, 0x3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v13, v13, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    if-eq v12, v13, :cond_2

    const/4 v12, 0x4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v13, v13, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    if-eq v12, v13, :cond_2

    const/4 v12, 0x5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v13, v13, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    if-eq v12, v13, :cond_2

    .line 533
    const-string v12, "[BIP]"

    const-string v13, "BM-openChannel: miss bearer info."

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const/4 v12, 0x5

    move-object/from16 v0, p2

    iput v12, v0, Landroid/os/Message;->arg1:I

    .line 535
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v0, p2

    iput-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 536
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 566
    :cond_11
    const-string v12, "[BIP]"

    const-string v13, "BM-openChannel: channel is un-activated"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    const/4 v13, 0x0

    iput v13, v12, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    goto/16 :goto_9

    .line 576
    :cond_12
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsApnInserting:Z

    if-ne v12, v13, :cond_13

    .line 577
    const-string v12, "[BIP]"

    const-string v13, "BM-openChannel: startUsingNetworkFeature delay trigger."

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    const/16 v13, 0xb

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 579
    .local v11, "timerMsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 580
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    const-wide/16 v14, 0x1388

    invoke-virtual {v12, v11, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 581
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsApnInserting:Z

    goto/16 :goto_a

    .line 586
    .end local v11    # "timerMsg":Landroid/os/Message;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->acquireNetwork()V

    goto/16 :goto_a
.end method

.method public openChannelCompleted(ILcom/android/internal/telephony/cat/bip/Channel;)V
    .locals 6
    .param p1, "ret"    # I
    .param p2, "lChannel"    # Lcom/android/internal/telephony/cat/bip/Channel;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1339
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BM-openChannelCompleted: ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    if-ne p1, v5, :cond_0

    .line 1342
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBufferSize:I

    iput v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    .line 1344
    :cond_0
    if-eqz p1, :cond_1

    if-ne p1, v5, :cond_3

    .line 1345
    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    .line 1346
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, p2}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->addChannel(ILcom/android/internal/telephony/cat/bip/Channel;)I

    .line 1351
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, p2, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    .line 1353
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z

    if-nez v1, :cond_2

    .line 1354
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 1355
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsNetworkAvailableReceived:Z

    .line 1356
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x28

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1, v2, p1, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1357
    .local v0, "response":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1358
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1359
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1361
    .end local v0    # "response":Landroid/os/Message;
    :cond_2
    return-void

    .line 1348
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->releaseChannelId(II)V

    .line 1349
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    goto :goto_0
.end method

.method public receiveData(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 758
    const-string v1, "[BIP]"

    const-string v2, "new receiveData"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 760
    .local v0, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->receiveData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 761
    return-void
.end method

.method public receiveData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 9
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x5

    .line 725
    iget v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelDataLength:I

    .line 726
    .local v2, "requestCount":I
    new-instance v3, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;-><init>()V

    .line 727
    .local v3, "result":Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;
    const/4 v7, 0x0

    .line 728
    .local v7, "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    iget v6, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mReceiveDataCid:I

    .line 730
    .local v6, "cId":I
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v7

    .line 731
    const-string v0, "[BIP]"

    const-string v1, "BM-receiveData: receiveData enter"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    if-nez v7, :cond_0

    .line 734
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lChannel is null cid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iput v5, p2, Landroid/os/Message;->arg1:I

    .line 736
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 737
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 755
    :goto_0
    return-void

    .line 740
    :cond_0
    iget v0, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 742
    :cond_1
    const/16 v0, 0xed

    if-le v2, v0, :cond_2

    .line 743
    const-string v0, "[BIP]"

    const-string v1, "BM-receiveData: Modify channel data length to MAX_APDU_SIZE"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const/16 v2, 0xed

    .line 746
    :cond_2
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;-><init>(Lcom/android/internal/telephony/cat/bip/BipManager;ILcom/android/internal/telephony/cat/bip/ReceiveDataResult;Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 747
    .local v8, "recvThread":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 750
    .end local v8    # "recvThread":Ljava/lang/Thread;
    :cond_3
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BM-receiveData: Channel status is invalid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iput v5, p2, Landroid/os/Message;->arg1:I

    .line 752
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 753
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public sendData(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 826
    const-string v1, "[BIP]"

    const-string v2, "new sendData: Enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 828
    .local v0, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->sendData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 829
    return-void
.end method

.method public sendData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 3
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 765
    const-string v1, "[BIP]"

    const-string v2, "sendData: Enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;-><init>(Lcom/android/internal/telephony/cat/bip/BipManager;Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 821
    .local v0, "rt":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 822
    const-string v1, "[BIP]"

    const-string v2, "sendData: Leave"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    return-void
.end method

.method public setConnMgrTimeoutFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1461
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z

    .line 1462
    return-void
.end method

.method public setOpenInProgressFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1464
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 1465
    return-void
.end method
