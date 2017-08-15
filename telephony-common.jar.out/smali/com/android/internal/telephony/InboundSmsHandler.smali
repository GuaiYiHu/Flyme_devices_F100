.class public abstract Lcom/android/internal/telephony/InboundSmsHandler;
.super Lcom/android/internal/util/StateMachine;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;,
        Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;,
        Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;,
        Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;,
        Lcom/android/internal/telephony/InboundSmsHandler$IdleState;,
        Lcom/android/internal/telephony/InboundSmsHandler$StartupState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;
    }
.end annotation


# static fields
.field static final ADDRESS_COLUMN:I = 0x6

.field static final COUNT_COLUMN:I = 0x5

.field static final DATE_COLUMN:I = 0x3

.field protected static final DBG:Z = true

.field static final DESTINATION_PORT_COLUMN:I = 0x2

.field static final EVENT_BROADCAST_COMPLETE:I = 0x3

.field static final EVENT_BROADCAST_SMS:I = 0x2

.field public static final EVENT_INJECT_SMS:I = 0x8

.field public static final EVENT_NEW_SMS:I = 0x1

.field static final EVENT_RELEASE_WAKELOCK:I = 0x5

.field static final EVENT_RETURN_TO_IDLE:I = 0x4

.field static final EVENT_START_ACCEPTING_SMS:I = 0x6

.field static final EVENT_UPDATE_PHONE_OBJECT:I = 0x7

.field static final ID_COLUMN:I = 0x7

.field static final PDU_COLUMN:I = 0x0

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field private static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

.field static final REFERENCE_NUMBER_COLUMN:I = 0x4

.field static final SELECT_BY_ID:Ljava/lang/String; = "_id=?"

.field static final SELECT_BY_REFERENCE:Ljava/lang/String; = "address=? AND reference_number=? AND count=? AND sub_id=?"

.field static final SEQUENCE_COLUMN:I = 0x1

.field static final SUB_ID_COLUMN:I = 0x8

.field private static final VDBG:Z = false

.field private static final WAKELOCK_TIMEOUT:I = 0xbb8

.field private static final sRawUri:Landroid/net/Uri;


# instance fields
.field protected mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

.field private mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

.field protected final mContext:Landroid/content/Context;

.field final mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

.field final mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

.field final mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

.field private mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

.field private mMomsReceiver:Landroid/content/BroadcastReceiver;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;

.field protected mRawLock:Ljava/lang/Object;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSmsReceiveDisabled:Z

.field final mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

.field public mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field private mUserManager:Landroid/os/UserManager;

.field final mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    .line 134
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    const-string v1, "sequence"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 186
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p4, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p5, "cellBroadcastHandler"    # Lcom/android/internal/telephony/CellBroadcastHandler;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 247
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 198
    new-instance v5, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    .line 201
    new-instance v5, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    .line 204
    new-instance v5, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    .line 207
    new-instance v5, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    .line 210
    new-instance v5, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    .line 227
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mRawLock:Ljava/lang/Object;

    .line 230
    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    .line 233
    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    .line 236
    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;

    .line 1752
    new-instance v5, Lcom/android/internal/telephony/InboundSmsHandler$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/InboundSmsHandler$1;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMomsReceiver:Landroid/content/BroadcastReceiver;

    .line 249
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 250
    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 251
    iput-object p4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 252
    iput-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    .line 253
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    .line 254
    new-instance v5, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {v5, p2}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 256
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x1120050

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 258
    .local v4, "smsCapable":Z
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v7

    invoke-virtual {v5, v7, v4}, Landroid/telephony/TelephonyManager;->getSmsReceiveCapableForPhone(IZ)Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    .line 261
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 262
    .local v3, "pm":Landroid/os/PowerManager;
    invoke-virtual {v3, v6, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 263
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 264
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    .line 266
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;)V

    .line 267
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 268
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 269
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 270
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 272
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->setInitialState(Lcom/android/internal/util/State;)V

    .line 273
    const-string v5, "created InboundSmsHandler"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 277
    const-string v5, "ro.mtk_bsp_package"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 279
    :try_start_0
    const-class v5, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    .line 281
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    if-eqz v5, :cond_5

    .line 282
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->setPhoneId(I)V

    .line 283
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "actualClassName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initial IConcatenatedSmsFwkExt done, actual class name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v0    # "actualClassName":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 296
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    if-nez v5, :cond_1

    .line 297
    const-string v5, "mobile"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    .line 302
    :cond_1
    new-instance v5, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;

    .line 304
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/SmsConstants;->isPrivacyLockSupport()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 306
    :cond_2
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 307
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MOMS_SMS_RECEIVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMomsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 311
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_3
    return-void

    .line 258
    .end local v3    # "pm":Landroid/os/PowerManager;
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 287
    .restart local v3    # "pm":Landroid/os/PowerManager;
    :cond_5
    :try_start_1
    const-string v5, "FAIL! intial mConcatenatedSmsFwkExt"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 289
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v5, "FAIL! No IConcatenatedSmsFwkExt"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/InboundSmsHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->isCTSRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 27
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mRawLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 1195
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 1197
    const/4 v10, 0x0

    .line 1200
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSequenceNumber()I

    move-result v23

    .line 1203
    .local v23, "sequence":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 1204
    .local v8, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 1205
    .local v19, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 1207
    .local v9, "count":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    .line 1209
    .local v22, "seqNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    .line 1214
    .local v24, "subId":Ljava/lang/String;
    const/4 v2, 0x4

    new-array v11, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v8, v11, v2

    const/4 v2, 0x1

    aput-object v19, v11, v2

    const/4 v2, 0x2

    aput-object v9, v11, v2

    const/4 v2, 0x3

    aput-object v24, v11, v2

    .line 1216
    .local v11, "deleteWhereArgs":[Ljava/lang/String;
    const-string v2, "address=? AND reference_number=? AND count=? AND sub_id=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v5, "address=? AND reference_number=? AND count=? AND sequence=? AND sub_id=?"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v19, v6, v7

    const/4 v7, 0x2

    aput-object v9, v6, v7

    const/4 v7, 0x3

    aput-object v22, v6, v7

    const/4 v7, 0x4

    aput-object v24, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1226
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding duplicate message segment, refNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seqNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1229
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1230
    .local v16, "oldPduString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v17

    .line 1231
    .local v17, "pdu":[B
    invoke-static/range {v16 .. v16}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 1232
    .local v15, "oldPdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v2

    invoke-static {v15, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: dup message segment PDU of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is different from existing PDU of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v15

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1236
    :cond_0
    const/4 v2, 0x5

    .line 1243
    if-eqz v10, :cond_1

    .line 1244
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    monitor-exit v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1296
    .end local v8    # "address":Ljava/lang/String;
    .end local v9    # "count":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v15    # "oldPdu":[B
    .end local v16    # "oldPduString":Ljava/lang/String;
    .end local v17    # "pdu":[B
    .end local v19    # "refNumber":Ljava/lang/String;
    .end local v22    # "seqNumber":Ljava/lang/String;
    .end local v23    # "sequence":I
    .end local v24    # "subId":Ljava/lang/String;
    :goto_0
    return v2

    .line 1238
    .restart local v8    # "address":Ljava/lang/String;
    .restart local v9    # "count":Ljava/lang/String;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "deleteWhereArgs":[Ljava/lang/String;
    .restart local v19    # "refNumber":Ljava/lang/String;
    .restart local v22    # "seqNumber":Ljava/lang/String;
    .restart local v23    # "sequence":I
    .restart local v24    # "subId":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1243
    if-eqz v10, :cond_3

    .line 1244
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1252
    .end local v8    # "address":Ljava/lang/String;
    .end local v9    # "count":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v19    # "refNumber":Ljava/lang/String;
    .end local v22    # "seqNumber":Ljava/lang/String;
    .end local v23    # "sequence":I
    .end local v24    # "subId":Ljava/lang/String;
    :cond_3
    const/4 v13, 0x0

    .line 1253
    .local v13, "isFirstSegment":Z
    const-string v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1256
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 1257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->isFirstConcatenatedSegment(Ljava/lang/String;I)Z

    move-result v13

    .line 1263
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getContentValues()Landroid/content/ContentValues;

    move-result-object v25

    .line 1266
    .local v25, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 1267
    .local v14, "newUri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI of new row -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1270
    const-string v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1272
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    if-ne v13, v2, :cond_6

    .line 1274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConcatenatedSmsFwkExt: the first segment, ref = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1276
    const-string v2, "ConcatenatedSmsFwkExt: start a new timer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1277
    new-instance v18, Lcom/mediatek/common/sms/TimerRecord;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v4

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3, v4}, Lcom/mediatek/common/sms/TimerRecord;-><init>(Ljava/lang/String;II)V

    .line 1279
    .local v18, "record":Lcom/mediatek/common/sms/TimerRecord;
    if-nez v18, :cond_5

    .line 1280
    const-string v2, "ConcatenatedSmsFwkExt: fail to new TimerRecord to start timer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1282
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v2, v3, v0}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->startTimer(Landroid/os/Handler;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1288
    .end local v18    # "record":Lcom/mediatek/common/sms/TimerRecord;
    :cond_6
    :try_start_5
    invoke-static {v14}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v20

    .line 1289
    .local v20, "rowId":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1291
    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1293
    :cond_7
    const/4 v2, 0x1

    :try_start_6
    monitor-exit v26

    goto/16 :goto_0

    .line 1298
    .end local v13    # "isFirstSegment":Z
    .end local v14    # "newUri":Landroid/net/Uri;
    .end local v20    # "rowId":J
    .end local v25    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit v26
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    .line 1239
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v12

    .line 1240
    .local v12, "e":Landroid/database/SQLException;
    :try_start_7
    const-string v2, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1241
    const/4 v2, 0x2

    .line 1243
    if-eqz v10, :cond_8

    .line 1244
    :try_start_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    monitor-exit v26

    goto/16 :goto_0

    .line 1243
    .end local v12    # "e":Landroid/database/SQLException;
    :catchall_1
    move-exception v2

    if-eqz v10, :cond_9

    .line 1244
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    .line 1294
    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "isFirstSegment":Z
    .restart local v14    # "newUri":Landroid/net/Uri;
    .restart local v25    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v12

    .line 1295
    .local v12, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error parsing URI for new row: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1296
    const/4 v2, 0x2

    monitor-exit v26
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method private static buildMessageBodyFromPdus([Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 7
    .param p0, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    .line 1657
    array-length v5, p0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1659
    const/4 v5, 0x0

    aget-object v5, p0, v5

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/InboundSmsHandler;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1667
    :goto_0
    return-object v5

    .line 1662
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1663
    .local v1, "body":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[Landroid/telephony/SmsMessage;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 1665
    .local v4, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1663
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1667
    .end local v4    # "msg":Landroid/telephony/SmsMessage;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/InboundSmsHandler;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private getSystemAppForIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 996
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 997
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 998
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v3, p1, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 999
    .local v6, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v0, "android.permission.CARRIER_FILTER_SMS"

    .line 1001
    .local v0, "carrierFilterSmsPerm":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1002
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v7, :cond_1

    .line 1003
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t get service information from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1006
    :cond_1
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1007
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 1009
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSystemAppForIntent: added package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1013
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method private isCTSRunning()Z
    .locals 3

    .prologue
    .line 1448
    const-string v1, "persist.sys.cts.test"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1449
    .local v0, "ctsTestRunning":Z
    return v0
.end method

.method static isCurrentFormat3gpp2()Z
    .locals 2

    .prologue
    .line 1306
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 1307
    .local v0, "activePhone":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseSmsMessage([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 8
    .param p0, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    const/4 v3, 0x0

    .line 1632
    aget-object v0, p0, v3

    .line 1633
    .local v0, "sms":Landroid/telephony/SmsMessage;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1634
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "address"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    const-string v4, "body"

    invoke-static {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->buildMessageBodyFromPdus([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    const-string v4, "date_sent"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1637
    const-string v4, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1638
    const-string v4, "protocol"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1639
    const-string v4, "seen"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1640
    const-string v4, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1641
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v1

    .line 1642
    .local v1, "subject":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1643
    const-string v4, "subject"

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    :cond_0
    const-string v4, "reply_path_present"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1646
    const-string v3, "service_center"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    return-object v2
.end method

.method private static replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1673
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xc

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeInboxMessage(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 1597
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v6

    .line 1598
    .local v6, "messages":[Landroid/telephony/SmsMessage;
    if-eqz v6, :cond_0

    array-length v10, v6

    const/4 v11, 0x1

    if-ge v10, v11, :cond_1

    .line 1599
    :cond_0
    const-string v10, "Failed to parse SMS pdu"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1622
    :goto_0
    return-object v9

    .line 1605
    :cond_1
    move-object v0, v6

    .local v0, "arr$":[Landroid/telephony/SmsMessage;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v7, v0, v2

    .line 1607
    .local v7, "sms":Landroid/telephony/SmsMessage;
    :try_start_0
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1605
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1608
    :catch_0
    move-exception v1

    .line 1609
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v10, "NPE inside SmsMessage"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1613
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v7    # "sms":Landroid/telephony/SmsMessage;
    :cond_2
    invoke-static {v6}, Lcom/android/internal/telephony/InboundSmsHandler;->parseSmsMessage([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v8

    .line 1614
    .local v8, "values":Landroid/content/ContentValues;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1616
    .local v4, "identity":J
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 1620
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1617
    :catch_1
    move-exception v1

    .line 1618
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v10, "Failed to persist inbox message"

    invoke-virtual {p0, v10, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1620
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method


# virtual methods
.method protected MomsPermissionCheck(Landroid/content/Intent;)I
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1783
    const-string v10, "[Moms] PermissionCheck"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1784
    const/4 v2, 0x0

    .line 1786
    .local v2, "checkResult":I
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/SmsConstants;->isPrivacyLockSupport()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1789
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/SmsConstants;->isPrivacyLockSupport()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1790
    if-nez v2, :cond_2

    .line 1791
    const-string v10, "[Moms] Phone privacy check start"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1793
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1794
    .local v8, "pplData":Landroid/os/Bundle;
    const-string v10, "pdus"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    .line 1795
    .local v5, "messages":[Ljava/lang/Object;
    array-length v10, v5

    new-array v7, v10, [[B

    .line 1796
    .local v7, "pdus":[[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v10, v5

    if-ge v4, v10, :cond_1

    .line 1797
    aget-object v10, v5, v4

    check-cast v10, [B

    check-cast v10, [B

    aput-object v10, v7, v4

    .line 1796
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1800
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;

    const-string v10, "pdus"

    invoke-virtual {v8, v10, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1801
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;

    const-string v11, "format"

    const-string v10, "format"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;

    const-string v10, "subId"

    iget-object v11, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1804
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;

    const-string v10, "smsType"

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1806
    const/4 v9, 0x0

    .line 1807
    .local v9, "pplResult":Z
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;

    invoke-interface {v10, v8}, Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;->pplFilter(Landroid/os/Bundle;)Z

    move-result v9

    .line 1808
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Moms] Phone privacy check end, Need to filter(result) = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1809
    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 1810
    const/4 v2, -0x1

    .line 1815
    .end local v4    # "i":I
    .end local v5    # "messages":[Ljava/lang/Object;
    .end local v7    # "pdus":[[B
    .end local v8    # "pplData":Landroid/os/Bundle;
    .end local v9    # "pplResult":Z
    :cond_2
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1816
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Moms] getInterceptionEnabledSetting = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v11}, Lcom/mediatek/common/mom/IMobileManagerService;->getInterceptionEnabledSetting()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1818
    if-nez v2, :cond_3

    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v10}, Lcom/mediatek/common/mom/IMobileManagerService;->getInterceptionEnabledSetting()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1820
    const/4 v2, -0x1

    .line 1821
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1822
    .local v6, "params":Landroid/os/Bundle;
    const-string v10, "intent"

    invoke-virtual {v6, v10, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1823
    const-string v10, "subId"

    iget-object v11, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v11

    int-to-long v12, v11

    invoke-virtual {v6, v10, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1824
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    const/4 v11, 0x5

    const/4 v12, 0x0

    invoke-interface {v10, v11, v6, v12}, Lcom/mediatek/common/mom/IMobileManagerService;->triggerManagerApListener(ILandroid/os/Bundle;I)I

    move-result v2

    .line 1827
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Moms] dispatchPdus, checkResult="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1836
    .end local v6    # "params":Landroid/os/Bundle;
    :cond_3
    :goto_1
    return v2

    .line 1831
    :catch_0
    move-exception v3

    .line 1832
    .local v3, "e":Landroid/os/RemoteException;
    const-string v10, "[Moms] Suppressing notification faild!"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method protected addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 774
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 784
    :goto_0
    :sswitch_0
    return v0

    .line 776
    :sswitch_1
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 774
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;

    .prologue
    .line 1074
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1077
    const-string v1, "No rows need be deleted from raw table!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1090
    :goto_0
    return-void

    .line 1081
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mRawLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1083
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    invoke-virtual {v1, v3, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1084
    .local v0, "rows":I
    if-nez v0, :cond_1

    .line 1085
    const-string v1, "No rows were deleted from raw table!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1089
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "rows":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1087
    .restart local v0    # "rows":I
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rows from raw table."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected dispatchConcateSmsParts(Lcom/mediatek/common/sms/TimerRecord;)Z
    .locals 13
    .param p1, "record"    # Lcom/mediatek/common/sms/TimerRecord;

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1678
    const/4 v9, 0x0

    .line 1680
    .local v9, "handled":Z
    const-string v3, "ConcatenatedSmsFwkExt: receive timeout message"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1681
    if-nez p1, :cond_0

    .line 1682
    const-string v1, "ConcatenatedSmsFwkExt: null TimerRecord in msg"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1745
    :goto_0
    return v4

    .line 1685
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConcatenatedSmsFwkExt: timer is expired, dispatch existed segments. refNumber = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p1, Lcom/mediatek/common/sms/TimerRecord;->refNumber:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1689
    new-instance v0, Lcom/android/internal/telephony/InboundSmsTracker;

    const-wide/16 v2, 0x0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZZ)V

    .line 1690
    .local v0, "smsTracker":Lcom/android/internal/telephony/InboundSmsTracker;
    invoke-virtual {v0, v1, v1}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1691
    new-instance v5, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    invoke-direct {v5, p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 1693
    .local v5, "receiver":Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    iget-object v11, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mRawLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1694
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-interface {v1, p1}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->queryExistedSegments(Lcom/mediatek/common/sms/TimerRecord;)[[B

    move-result-object v10

    .line 1695
    .local v10, "pdus":[[B
    if-eqz v10, :cond_7

    array-length v1, v10

    if-lez v1, :cond_7

    .line 1696
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-interface {v1, p1}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->getUploadFlag(Lcom/mediatek/common/sms/TimerRecord;)I

    move-result v8

    .line 1697
    .local v8, "flag":I
    const/4 v1, 0x2

    if-eq v8, v1, :cond_1

    if-ne v8, v12, :cond_6

    .line 1699
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-interface {v1, p1}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->setUploadFlag(Lcom/mediatek/common/sms/TimerRecord;)V

    .line 1701
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1704
    .local v2, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v7

    .line 1706
    .local v7, "componentName":Landroid/content/ComponentName;
    if-eqz v7, :cond_2

    .line 1708
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delivering SMS to: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1716
    :cond_2
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/SmsConstants;->isPrivacyLockSupport()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1719
    :cond_3
    const-string v1, "android.intent.action.MOMS_SMS_RECEIVED"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1720
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1723
    :cond_4
    const-string v1, "pdus"

    invoke-virtual {v2, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1724
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1725
    const-string v1, "format"

    const-string v3, "3gpp"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1729
    :goto_1
    const-string v1, "upload_flag"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1730
    const-string v3, "android.permission.RECEIVE_SMS"

    const/16 v4, 0x10

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1733
    const/4 v9, 0x1

    .line 1741
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "flag":I
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConcatenatedSmsFwkExt: delete segment(s), ref = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/mediatek/common/sms/TimerRecord;->refNumber:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1742
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-interface {v1, p1}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->deleteExistedSegments(Lcom/mediatek/common/sms/TimerRecord;)V

    .line 1743
    monitor-exit v11

    move v4, v9

    .line 1745
    goto/16 :goto_0

    .line 1727
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v7    # "componentName":Landroid/content/ComponentName;
    .restart local v8    # "flag":I
    :cond_5
    const-string v1, "format"

    const-string v3, "3gpp2"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1743
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "flag":I
    .end local v10    # "pdus":[[B
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1735
    .restart local v8    # "flag":I
    .restart local v10    # "pdus":[[B
    :cond_6
    :try_start_1
    const-string v1, "ConcatenatedSmsFwkExt: invalid upload flag"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1738
    .end local v8    # "flag":I
    :cond_7
    const-string v1, "ConcatenatedSmsFwkExt: no pdus to be dispatched"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method protected dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1027
    const/high16 v2, 0x8000000

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1029
    const-string v2, "rTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1031
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1032
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1034
    const/16 v17, 0x0

    .line 1036
    .local v17, "users":[I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningUserIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 1039
    :goto_0
    if-nez v17, :cond_0

    .line 1040
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .end local v17    # "users":[I
    const/4 v2, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    aput v3, v17, v2

    .line 1044
    .restart local v17    # "users":[I
    :cond_0
    move-object/from16 v0, v17

    array-length v2, v0

    add-int/lit8 v15, v2, -0x1

    .local v15, "i":I
    :goto_1
    if-ltz v15, :cond_6

    .line 1045
    new-instance v4, Landroid/os/UserHandle;

    aget v2, v17, v15

    invoke-direct {v4, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 1046
    .local v4, "targetUser":Landroid/os/UserHandle;
    aget v2, v17, v15

    if-eqz v2, :cond_3

    .line 1048
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    const-string v3, "no_sms"

    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1044
    :cond_1
    :goto_2
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 1052
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    aget v3, v17, v15

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v16

    .line 1053
    .local v16, "info":Landroid/content/pm/UserInfo;
    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1058
    .end local v16    # "info":Landroid/content/pm/UserInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    aget v3, v17, v15

    if-nez v3, :cond_4

    move-object/from16 v7, p4

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 1063
    .end local v4    # "targetUser":Landroid/os/UserHandle;
    .end local v15    # "i":I
    .end local v17    # "users":[I
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v11

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v5 .. v14}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1067
    :cond_6
    return-void

    .line 1037
    .restart local v17    # "users":[I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 1
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 651
    if-nez p1, :cond_0

    .line 652
    const-string v0, "dispatchSmsMessage: message is null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 653
    const/4 v0, 0x2

    .line 663
    :goto_0
    return v0

    .line 656
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    if-eqz v0, :cond_1

    .line 658
    const-string v0, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 660
    const/4 v0, 0x1

    goto :goto_0

    .line 663
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v0

    goto :goto_0
.end method

.method protected abstract dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 15
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 733
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v14

    .line 736
    .local v14, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v14, :cond_0

    iget-object v2, v14, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v2, :cond_2

    .line 738
    :cond_0
    const/4 v6, -0x1

    .line 739
    .local v6, "destPort":I
    if-eqz v14, :cond_1

    iget-object v2, v14, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v2, :cond_1

    .line 741
    iget-object v2, v14, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v6, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destination port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 746
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/InboundSmsTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(I[BJIZZ)V

    .line 763
    .local v1, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v2

    return v2

    .line 751
    .end local v1    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v6    # "destPort":I
    :cond_2
    iget-object v0, v14, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 752
    .local v0, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iget-object v13, v14, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 753
    .local v13, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    if-eqz v13, :cond_3

    iget v6, v13, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 756
    .restart local v6    # "destPort":I
    :goto_1
    new-instance v1, Lcom/android/internal/telephony/InboundSmsTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    iget v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget v10, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v11, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(I[BJIZLjava/lang/String;IIIZ)V

    .restart local v1    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    goto :goto_0

    .line 753
    .end local v1    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v6    # "destPort":I
    :cond_3
    const/4 v6, -0x1

    goto :goto_1
.end method

.method dispatchSmsDeliveryIntent([[BLjava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 12
    .param p1, "pdus"    # [[B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1102
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1103
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1104
    const-string v0, "format"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1106
    const/4 v0, -0x1

    if-ne p3, v0, :cond_7

    .line 1107
    const-string v0, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v6

    .line 1112
    .local v6, "componentName":Landroid/content/ComponentName;
    if-eqz v6, :cond_6

    .line 1114
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delivering SMS to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1122
    :goto_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->writeInboxMessage(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v11

    .line 1124
    .local v11, "uri":Landroid/net/Uri;
    if-eqz v11, :cond_0

    .line 1126
    const-string v0, "uri"

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1132
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_0
    const-string v0, "ro.mtk_bsp_package"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1134
    const/4 v10, 0x1

    .line 1135
    .local v10, "uploadFlag":I
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v7

    .line 1136
    .local v7, "msg":Landroid/telephony/SmsMessage;
    if-eqz v7, :cond_1

    .line 1137
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    .line 1138
    .local v9, "udh":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v9, :cond_1

    iget-object v0, v9, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-eqz v0, :cond_1

    .line 1139
    new-instance v8, Lcom/mediatek/common/sms/TimerRecord;

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v9, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget-object v3, v9, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-direct {v8, v0, v2, v3}, Lcom/mediatek/common/sms/TimerRecord;-><init>(Ljava/lang/String;II)V

    .line 1141
    .local v8, "tr":Lcom/mediatek/common/sms/TimerRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-interface {v0, v8}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->getUploadFlag(Lcom/mediatek/common/sms/TimerRecord;)I

    move-result v10

    .line 1144
    .end local v8    # "tr":Lcom/mediatek/common/sms/TimerRecord;
    .end local v9    # "udh":Lcom/android/internal/telephony/SmsHeader;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadFlag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1146
    const/4 v0, 0x2

    if-ne v10, v0, :cond_2

    .line 1147
    const-string v0, "dispatch all pdus with upload flag"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1148
    const-string v0, "upload_flag"

    invoke-virtual {v1, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1155
    .end local v7    # "msg":Landroid/telephony/SmsMessage;
    .end local v10    # "uploadFlag":I
    :cond_2
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/SmsConstants;->isPrivacyLockSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1158
    :cond_3
    const-string v0, "android.intent.action.MOMS_SMS_RECEIVED"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1159
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1170
    .end local v6    # "componentName":Landroid/content/ComponentName;
    :cond_4
    :goto_1
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->isCTSRunning()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1172
    const-string v0, "amigo.provider.Telephony.Secured_SMS_DELIVER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1173
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1176
    :cond_5
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1178
    return-void

    .line 1118
    .restart local v6    # "componentName":Landroid/content/ComponentName;
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1163
    .end local v6    # "componentName":Landroid/content/ComponentName;
    :cond_7
    const-string v0, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sms://localhost:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 1165
    .restart local v11    # "uri":Landroid/net/Uri;
    invoke-virtual {v1, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1166
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->quit()V

    .line 318
    return-void
.end method

.method public getPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method handleInjectSms(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 620
    const/4 v2, 0x0

    .line 622
    .local v2, "receivedIntent":Landroid/app/PendingIntent;
    :try_start_0
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, Landroid/app/PendingIntent;

    move-object v2, v0

    .line 623
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/SmsMessage;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    .local v4, "sms":Landroid/telephony/SmsMessage;
    if-nez v4, :cond_1

    .line 625
    const/4 v3, 0x2

    .line 634
    .end local v4    # "sms":Landroid/telephony/SmsMessage;
    .local v3, "result":I
    :goto_0
    if-eqz v2, :cond_0

    .line 636
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 639
    :cond_0
    :goto_1
    return-void

    .line 627
    .end local v3    # "result":I
    .restart local v4    # "sms":Landroid/telephony/SmsMessage;
    :cond_1
    :try_start_2
    iget-object v5, v4, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    .restart local v3    # "result":I
    goto :goto_0

    .line 629
    .end local v3    # "result":I
    .end local v4    # "sms":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v1

    .line 630
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v5, "Exception dispatching message"

    invoke-virtual {p0, v5, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 631
    const/4 v3, 0x2

    .restart local v3    # "result":I
    goto :goto_0

    .line 637
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method handleNewSms(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v1, 0x1

    .line 592
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 593
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception processing incoming SMS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    :try_start_0
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/SmsMessage;

    .line 600
    .local v3, "sms":Landroid/telephony/SmsMessage;
    iget-object v4, v3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 608
    .end local v3    # "sms":Landroid/telephony/SmsMessage;
    .local v2, "result":I
    :goto_1
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 609
    if-ne v2, v1, :cond_2

    .line 610
    .local v1, "handled":Z
    :goto_2
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_0

    .line 601
    .end local v1    # "handled":Z
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 602
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v4, "Exception dispatching message"

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 603
    const/4 v2, 0x2

    .restart local v2    # "result":I
    goto :goto_1

    .line 609
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected abstract is3gpp2()Z
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1577
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1587
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1588
    return-void
.end method

.method notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 708
    if-nez p1, :cond_0

    .line 710
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 711
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 712
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 714
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 715
    return-void
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispose()V

    .line 334
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 340
    :cond_0
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/SmsConstants;->isPrivacyLockSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMomsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 344
    :cond_2
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 694
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 695
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdatePhoneObject: phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 38
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 796
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v25

    .line 798
    .local v25, "messageCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v10

    .line 800
    .local v10, "destPort":I
    const/4 v2, 0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_1

    .line 802
    const/4 v2, 0x1

    new-array v9, v2, [[B

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v3

    aput-object v3, v9, v2

    .line 907
    .local v9, "pdus":[[B
    :goto_0
    new-instance v12, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v12, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 909
    .local v12, "resultReceiver":Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    const/16 v2, 0xb84

    if-ne v10, v2, :cond_13

    .line 911
    new-instance v27, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v27 .. v27}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 912
    .local v27, "output":Ljava/io/ByteArrayOutputStream;
    move-object v14, v9

    .local v14, "arr$":[[B
    array-length v0, v14

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v22, 0x0

    .local v22, "i$":I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_d

    aget-object v28, v14, v22

    .line 914
    .local v28, "pdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v2

    if-nez v2, :cond_0

    .line 915
    const-string v2, "3gpp"

    move-object/from16 v0, v28

    invoke-static {v0, v2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v26

    .line 917
    .local v26, "msg":Landroid/telephony/SmsMessage;
    if-eqz v26, :cond_0

    .line 918
    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v28

    .line 922
    .end local v26    # "msg":Landroid/telephony/SmsMessage;
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, v28

    array-length v3, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 912
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 807
    .end local v9    # "pdus":[[B
    .end local v12    # "resultReceiver":Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    .end local v14    # "arr$":[[B
    .end local v22    # "i$":I
    .end local v24    # "len$":I
    .end local v27    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v28    # "pdu":[B
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mRawLock:Ljava/lang/Object;

    monitor-enter v8

    .line 810
    const/16 v19, 0x0

    .line 813
    .local v19, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v13

    .line 814
    .local v13, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    .line 815
    .local v31, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 817
    .local v18, "count":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    .line 822
    .local v36, "subId":Ljava/lang/String;
    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v13, v6, v2

    const/4 v2, 0x1

    aput-object v31, v6, v2

    const/4 v2, 0x2

    aput-object v18, v6, v2

    const/4 v2, 0x3

    aput-object v36, v6, v2

    .line 824
    .local v6, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const-string v5, "address=? AND reference_number=? AND count=? AND sub_id=?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 827
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v20

    .line 828
    .local v20, "cursorCount":I
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    .line 837
    const-string v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 838
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 839
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConcatenatedSmsFwkExt: refresh timer, ref = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->queryTimerRecord(Ljava/lang/String;II)Lcom/mediatek/common/sms/TimerRecord;

    move-result-object v30

    .line 844
    .local v30, "record":Lcom/mediatek/common/sms/TimerRecord;
    if-nez v30, :cond_4

    .line 845
    const-string v2, "ConcatenatedSmsFwkExt: fail to get TimerRecord to refresh timer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 853
    .end local v30    # "record":Lcom/mediatek/common/sms/TimerRecord;
    :cond_2
    :goto_2
    const/4 v2, 0x0

    .line 898
    if-eqz v19, :cond_3

    .line 899
    :try_start_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 992
    .end local v6    # "whereArgs":[Ljava/lang/String;
    .end local v13    # "address":Ljava/lang/String;
    .end local v18    # "count":Ljava/lang/String;
    .end local v19    # "cursor":Landroid/database/Cursor;
    .end local v20    # "cursorCount":I
    .end local v31    # "refNumber":Ljava/lang/String;
    .end local v36    # "subId":Ljava/lang/String;
    :goto_3
    return v2

    .line 848
    .restart local v6    # "whereArgs":[Ljava/lang/String;
    .restart local v13    # "address":Ljava/lang/String;
    .restart local v18    # "count":Ljava/lang/String;
    .restart local v19    # "cursor":Landroid/database/Cursor;
    .restart local v20    # "cursorCount":I
    .restart local v30    # "record":Lcom/mediatek/common/sms/TimerRecord;
    .restart local v31    # "refNumber":Ljava/lang/String;
    .restart local v36    # "subId":Ljava/lang/String;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-interface {v2, v3, v0}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->refreshTimer(Landroid/os/Handler;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 894
    .end local v6    # "whereArgs":[Ljava/lang/String;
    .end local v13    # "address":Ljava/lang/String;
    .end local v18    # "count":Ljava/lang/String;
    .end local v20    # "cursorCount":I
    .end local v30    # "record":Lcom/mediatek/common/sms/TimerRecord;
    .end local v31    # "refNumber":Ljava/lang/String;
    .end local v36    # "subId":Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 895
    .local v21, "e":Landroid/database/SQLException;
    :try_start_3
    const-string v2, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 896
    const/4 v2, 0x0

    .line 898
    if-eqz v19, :cond_5

    .line 899
    :try_start_4
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_5
    monitor-exit v8

    goto :goto_3

    .line 902
    .end local v21    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 857
    .restart local v6    # "whereArgs":[Ljava/lang/String;
    .restart local v13    # "address":Ljava/lang/String;
    .restart local v18    # "count":Ljava/lang/String;
    .restart local v20    # "cursorCount":I
    .restart local v31    # "refNumber":Ljava/lang/String;
    .restart local v36    # "subId":Ljava/lang/String;
    :cond_6
    :try_start_5
    const-string v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 858
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    .line 860
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConcatenatedSmsFwkExt: cancel timer, ref = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->queryTimerRecord(Ljava/lang/String;II)Lcom/mediatek/common/sms/TimerRecord;

    move-result-object v30

    .line 865
    .restart local v30    # "record":Lcom/mediatek/common/sms/TimerRecord;
    if-nez v30, :cond_9

    .line 866
    const-string v2, "ConcatenatedSmsFwkExt: fail to get TimerRecord to cancel timer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 876
    .end local v30    # "record":Lcom/mediatek/common/sms/TimerRecord;
    :cond_7
    :goto_4
    move/from16 v0, v25

    new-array v9, v0, [[B

    .line 877
    .restart local v9    # "pdus":[[B
    :cond_8
    :goto_5
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 879
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v3

    sub-int v23, v2, v3

    .line 881
    .local v23, "index":I
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v9, v23

    .line 885
    if-nez v23, :cond_8

    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 886
    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 888
    .local v29, "port":I
    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I

    move-result v29

    .line 889
    const/4 v2, -0x1

    move/from16 v0, v29

    if-eq v0, v2, :cond_8

    .line 890
    move/from16 v10, v29

    goto :goto_5

    .line 869
    .end local v9    # "pdus":[[B
    .end local v23    # "index":I
    .end local v29    # "port":I
    .restart local v30    # "record":Lcom/mediatek/common/sms/TimerRecord;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-interface {v2, v3, v0}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->cancelTimer(Landroid/os/Handler;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .line 898
    .end local v6    # "whereArgs":[Ljava/lang/String;
    .end local v13    # "address":Ljava/lang/String;
    .end local v18    # "count":Ljava/lang/String;
    .end local v20    # "cursorCount":I
    .end local v30    # "record":Lcom/mediatek/common/sms/TimerRecord;
    .end local v31    # "refNumber":Ljava/lang/String;
    .end local v36    # "subId":Ljava/lang/String;
    :catchall_1
    move-exception v2

    if-eqz v19, :cond_a

    .line 899
    :try_start_6
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v2

    .line 898
    .restart local v6    # "whereArgs":[Ljava/lang/String;
    .restart local v9    # "pdus":[[B
    .restart local v13    # "address":Ljava/lang/String;
    .restart local v18    # "count":Ljava/lang/String;
    .restart local v20    # "cursorCount":I
    .restart local v31    # "refNumber":Ljava/lang/String;
    .restart local v36    # "subId":Ljava/lang/String;
    :cond_b
    if-eqz v19, :cond_c

    .line 899
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 902
    :cond_c
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 928
    .end local v6    # "whereArgs":[Ljava/lang/String;
    .end local v13    # "address":Ljava/lang/String;
    .end local v18    # "count":Ljava/lang/String;
    .end local v19    # "cursor":Landroid/database/Cursor;
    .end local v20    # "cursorCount":I
    .end local v31    # "refNumber":Ljava/lang/String;
    .end local v36    # "subId":Ljava/lang/String;
    .restart local v12    # "resultReceiver":Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    .restart local v14    # "arr$":[[B
    .restart local v22    # "i$":I
    .restart local v24    # "len$":I
    .restart local v27    # "output":Ljava/io/ByteArrayOutputStream;
    :cond_d
    invoke-static {}, Lcom/android/internal/telephony/SmsConstants;->isWapPushSupport()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 929
    const-string v2, "dispatch wap push pdu with addr & sc addr"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 930
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 931
    .local v15, "bundle":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2WapPdu()Z

    move-result v2

    if-nez v2, :cond_10

    .line 932
    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v34

    .line 933
    .local v34, "sms":Landroid/telephony/SmsMessage;
    if-eqz v34, :cond_f

    .line 934
    const-string v2, "address"

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    invoke-virtual/range {v34 .. v34}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v33

    .line 936
    .local v33, "sca":Ljava/lang/String;
    if-nez v33, :cond_e

    .line 938
    const-string v33, ""

    .line 940
    :cond_e
    const-string v2, "service_center"

    move-object/from16 v0, v33

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    .end local v33    # "sca":Ljava/lang/String;
    .end local v34    # "sms":Landroid/telephony/SmsMessage;
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v27 .. v27}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v12, v0, v15}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Bundle;)I

    move-result v32

    .line 956
    .end local v15    # "bundle":Landroid/os/Bundle;
    .local v32, "result":I
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchWapPdu() returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 958
    const/4 v2, -0x1

    move/from16 v0, v32

    if-ne v0, v2, :cond_12

    const/4 v2, 0x1

    goto/16 :goto_3

    .line 944
    .end local v32    # "result":I
    .restart local v15    # "bundle":Landroid/os/Bundle;
    :cond_10
    const-string v2, "address"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    const-string v2, "service_center"

    const-string v3, ""

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 951
    .end local v15    # "bundle":Landroid/os/Bundle;
    :cond_11
    const-string v2, "dispatch wap push pdu"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v27 .. v27}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v12, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I

    move-result v32

    .restart local v32    # "result":I
    goto :goto_7

    .line 958
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 961
    .end local v14    # "arr$":[[B
    .end local v22    # "i$":I
    .end local v24    # "len$":I
    .end local v27    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v32    # "result":I
    :cond_13
    const/16 v17, 0x0

    .line 962
    .local v17, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v16

    .line 963
    .local v16, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v16, :cond_14

    .line 964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v17

    .line 971
    :goto_8
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->getSystemAppForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v37

    .line 974
    .local v37, "systemPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v17, :cond_15

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 975
    const-string v2, "Found carrier package."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 976
    new-instance v7, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILjava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    .line 978
    .local v7, "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    new-instance v35, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)V

    .line 979
    .local v35, "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-virtual {v7, v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->filterSms(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;)V

    .line 992
    .end local v7    # "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    .end local v35    # "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    :goto_9
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 968
    .end local v37    # "systemPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_14
    const-string v2, "UiccCard not initialized."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_8

    .line 980
    .restart local v37    # "systemPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_15
    if-eqz v37, :cond_16

    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    .line 981
    const-string v2, "Found system package."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 982
    new-instance v7, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILjava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    .line 984
    .restart local v7    # "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    new-instance v35, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)V

    .line 985
    .restart local v35    # "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    const/4 v2, 0x0

    move-object/from16 v0, v37

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-virtual {v7, v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->filterSms(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;)V

    goto :goto_9

    .line 987
    .end local v7    # "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    .end local v35    # "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find carrier package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nor systemPackages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->logv(Ljava/lang/String;)V

    .line 989
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2, v10, v12}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchSmsDeliveryIntent([[BLjava/lang/String;ILandroid/content/BroadcastReceiver;)V

    goto :goto_9
.end method

.method protected storeVoiceMailCount()V
    .locals 6

    .prologue
    .line 1312
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 1313
    .local v1, "imsi":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getVoiceMessageCount()I

    move-result v2

    .line 1315
    .local v2, "mwi":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Storing Voice Mail Count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for mVmCountKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "vm_count_key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vmId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "vm_id_key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in preferences."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1320
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1321
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1322
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "vm_count_key"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1323
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "vm_id_key"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1324
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1325
    return-void
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 324
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    .line 325
    return-void
.end method
