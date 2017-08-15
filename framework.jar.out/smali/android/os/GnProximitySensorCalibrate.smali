.class public Landroid/os/GnProximitySensorCalibrate;
.super Ljava/lang/Object;
.source "GnProximitySensorCalibrate.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GnProximitySensorCalibrate"

.field private static final TYPE_CANCEL_CALIBRATE:I = 0x12

.field private static final TYPE_DO_CALIBRATE:I = 0x11

.field private static final TYPE_HAND_ANSWER:I = 0x1

.field private static isDoubleCall:Z

.field private static isListened:Z

.field private static mCallState:I

.field private static mSlotCount:I


# instance fields
.field private final mAmigoService:Landroid/os/amigoserver/IAmigoServerManager;

.field private mContext:Landroid/content/Context;

.field mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    sput-boolean v0, Landroid/os/GnProximitySensorCalibrate;->isListened:Z

    .line 53
    sput-boolean v0, Landroid/os/GnProximitySensorCalibrate;->isDoubleCall:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/GnProximitySensorCalibrate;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 59
    const-string v0, "GnProximitySensorCalibrate"

    const-string v1, " init "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v0, "amigoserver"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/amigoserver/IAmigoServerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/amigoserver/IAmigoServerManager;

    move-result-object v0

    iput-object v0, p0, Landroid/os/GnProximitySensorCalibrate;->mAmigoService:Landroid/os/amigoserver/IAmigoServerManager;

    .line 63
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Landroid/os/GnProximitySensorCalibrate;->isDoubleCall:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 44
    sput-boolean p0, Landroid/os/GnProximitySensorCalibrate;->isDoubleCall:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Landroid/os/GnProximitySensorCalibrate;->isListened:Z

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 44
    sget v0, Landroid/os/GnProximitySensorCalibrate;->mCallState:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 44
    sput p0, Landroid/os/GnProximitySensorCalibrate;->mCallState:I

    return p0
.end method

.method private getAmigoServerManager()Landroid/os/amigoserver/IAmigoServerManager;
    .locals 1

    .prologue
    .line 83
    const-string v0, "amigoserver"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/amigoserver/IAmigoServerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/amigoserver/IAmigoServerManager;

    move-result-object v0

    return-object v0
.end method

.method private static getFirstSubInSlot(I)I
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 160
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 161
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 162
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 165
    :goto_0
    return v1

    .line 164
    :cond_0
    const-string v1, "GnProximitySensorCalibrate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get first sub in slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 192
    new-instance v0, Landroid/os/GnProximitySensorCalibrate$1;

    invoke-direct {v0, p0, p1}, Landroid/os/GnProximitySensorCalibrate$1;-><init>(Landroid/os/GnProximitySensorCalibrate;I)V

    return-object v0
.end method

.method private static getSlotCount()I
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method private getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 79
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static isSupportPsCalibrationOffhook()Z
    .locals 5

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "result":Z
    const-string/jumbo v2, "ro.gn.pscali.incall.support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 74
    const-string v2, "GnProximitySensorCalibrate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportIncallPsCalibration : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return v0
.end method

.method private registerPhoneStateListener(Landroid/telephony/TelephonyManager;)V
    .locals 4
    .param p1, "mPhone"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 169
    invoke-static {}, Landroid/os/GnProximitySensorCalibrate;->getSlotCount()I

    move-result v2

    sput v2, Landroid/os/GnProximitySensorCalibrate;->mSlotCount:I

    .line 170
    sget v2, Landroid/os/GnProximitySensorCalibrate;->mSlotCount:I

    new-array v2, v2, [Landroid/telephony/PhoneStateListener;

    iput-object v2, p0, Landroid/os/GnProximitySensorCalibrate;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Landroid/os/GnProximitySensorCalibrate;->mSlotCount:I

    if-ge v0, v2, :cond_1

    .line 172
    invoke-static {v0}, Landroid/os/GnProximitySensorCalibrate;->getFirstSubInSlot(I)I

    move-result v1

    .line 173
    .local v1, "subId":I
    if-ltz v1, :cond_0

    .line 174
    iget-object v2, p0, Landroid/os/GnProximitySensorCalibrate;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Landroid/os/GnProximitySensorCalibrate;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    aput-object v3, v2, v0

    .line 175
    iget-object v2, p0, Landroid/os/GnProximitySensorCalibrate;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/16 v3, 0x20

    invoke-virtual {p1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 176
    const-string v2, "GnProximitySensorCalibrate"

    const-string v3, "Register PhoneStateListener"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_0
    iget-object v2, p0, Landroid/os/GnProximitySensorCalibrate;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    goto :goto_1

    .line 181
    .end local v1    # "subId":I
    :cond_1
    return-void
.end method

.method private setIncallCaliNodeByAmigoService(I)Z
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 89
    iget-object v1, p0, Landroid/os/GnProximitySensorCalibrate;->mAmigoService:Landroid/os/amigoserver/IAmigoServerManager;

    if-nez v1, :cond_0

    .line 90
    const-string v1, "GnProximitySensorCalibrate"

    const-string/jumbo v2, "setIncallCaliNodeByAmigoService mAmigoService is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v1, 0x0

    .line 100
    :goto_0
    return v1

    .line 93
    :cond_0
    const-string v1, "GnProximitySensorCalibrate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIncallCaliNodeByAmigoService  isListened = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/os/GnProximitySensorCalibrate;->isListened:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v1, "GnProximitySensorCalibrate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIncallCaliNodeByAmigoService value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :try_start_0
    iget-object v1, p0, Landroid/os/GnProximitySensorCalibrate;->mAmigoService:Landroid/os/amigoserver/IAmigoServerManager;

    const/16 v2, 0x11

    invoke-interface {v1, v2, p1}, Landroid/os/amigoserver/IAmigoServerManager;->setNodeState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "GnProximitySensorCalibrate"

    const-string v2, " RemoteException from setNodeState()"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private unregisterPhoneStateListener(Landroid/telephony/TelephonyManager;)V
    .locals 3
    .param p1, "mPhone"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Landroid/os/GnProximitySensorCalibrate;->mSlotCount:I

    if-ge v0, v1, :cond_1

    .line 185
    iget-object v1, p0, Landroid/os/GnProximitySensorCalibrate;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Landroid/os/GnProximitySensorCalibrate;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 184
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_1
    return-void
.end method


# virtual methods
.method public callPsCalibrationOffhook(Landroid/content/Context;Z)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enable"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 107
    const-string v5, "GnProximitySensorCalibrate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callPsCalibrationOffhook, enable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz p2, :cond_2

    .line 109
    iget-object v5, p0, Landroid/os/GnProximitySensorCalibrate;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v5, :cond_0

    .line 110
    const-string/jumbo v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Landroid/os/GnProximitySensorCalibrate;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 112
    :cond_0
    sget-boolean v5, Landroid/os/GnProximitySensorCalibrate;->isListened:Z

    if-nez v5, :cond_1

    .line 113
    iget-object v5, p0, Landroid/os/GnProximitySensorCalibrate;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v5}, Landroid/os/GnProximitySensorCalibrate;->registerPhoneStateListener(Landroid/telephony/TelephonyManager;)V

    .line 114
    sput-boolean v9, Landroid/os/GnProximitySensorCalibrate;->isListened:Z

    .line 140
    :cond_1
    :goto_0
    return v9

    .line 118
    :cond_2
    const/4 v2, 0x0

    .line 120
    .local v2, "mIsOffhook":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/GnProximitySensorCalibrate;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 121
    .local v4, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_5

    .line 122
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget v5, Landroid/os/GnProximitySensorCalibrate;->mSlotCount:I

    if-ge v1, v5, :cond_3

    .line 123
    invoke-static {v1}, Landroid/os/GnProximitySensorCalibrate;->getFirstSubInSlot(I)I

    move-result v3

    .line 124
    .local v3, "subId":I
    invoke-interface {v4, v3}, Lcom/android/internal/telephony/ITelephony;->isOffhookForSubscriber(I)Z

    move-result v5

    or-int/2addr v2, v5

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 126
    .end local v3    # "subId":I
    :cond_3
    const-string v5, "GnProximitySensorCalibrate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isOffhook: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v1    # "i":I
    .end local v4    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :goto_2
    iget-object v5, p0, Landroid/os/GnProximitySensorCalibrate;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v5, :cond_4

    if-nez v2, :cond_4

    .line 134
    iget-object v5, p0, Landroid/os/GnProximitySensorCalibrate;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v5}, Landroid/os/GnProximitySensorCalibrate;->unregisterPhoneStateListener(Landroid/telephony/TelephonyManager;)V

    .line 135
    sput-boolean v8, Landroid/os/GnProximitySensorCalibrate;->isListened:Z

    .line 138
    :cond_4
    invoke-direct {p0, v8}, Landroid/os/GnProximitySensorCalibrate;->setIncallCaliNodeByAmigoService(I)Z

    goto :goto_0

    .line 128
    .restart local v4    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_5
    :try_start_1
    const-string v5, "GnProximitySensorCalibrate"

    const-string/jumbo v6, "telephonyService is null "

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 130
    .end local v4    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v5, "GnProximitySensorCalibrate"

    const-string v6, "RemoteException from getPhoneInterface()"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public setHandAnswer(Z)Z
    .locals 3
    .param p1, "mIsHandAnswer"    # Z

    .prologue
    const/4 v0, 0x1

    .line 144
    if-eqz p1, :cond_0

    .line 145
    const-string v1, "GnProximitySensorCalibrate"

    const-string v2, "handanswer event occured  \n"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-direct {p0, v0}, Landroid/os/GnProximitySensorCalibrate;->setIncallCaliNodeByAmigoService(I)Z

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
