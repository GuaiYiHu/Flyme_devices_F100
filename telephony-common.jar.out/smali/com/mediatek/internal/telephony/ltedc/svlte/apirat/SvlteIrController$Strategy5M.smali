.class Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;
.super Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;
.source "SvlteIrController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Strategy5M"
.end annotation


# static fields
.field private static final CHINA_TELECOM_MACCO_MCC:Ljava/lang/String; = "455"

.field private static final CHINA_TELECOM_MAINLAND_MCC:Ljava/lang/String; = "460"

.field protected static final EVENT_NO_SEERVICE_WATCHDOG:I = 0x65

.field protected static final EVENT_RETRY_PLMN_CHANGED:I = 0x66

.field protected static final EVENT_ROAMING_MODE_CHANGED:I = 0x67

.field protected static final EVENT_ROAMING_MODE_CHANGED_FORALL:I = 0x68

.field protected static final EVENT_ROAMING_MODE_CHANGED_FORCDMA:I = 0x6a

.field protected static final EVENT_ROAMING_MODE_CHANGED_FORLTE:I = 0x69

.field private static final MAX_WATCHDOG_RETRY_DELAY:I = 0x1b7740

.field private static final WATCHDOG_RETRY_DELAY_STEP:I = 0x7530


# instance fields
.field private mCdmaListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

.field protected mCdmaPlmnForCriticalArea:Ljava/lang/String;

.field protected mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

.field protected mCdmaServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

.field private mContinousRetryCount:I

.field protected mFailedNetworkInfoArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLteListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

.field protected mLteServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

.field protected mNoServiceTimeStamp:J

.field protected mPlmnToSelectNetworkManually:Ljava/lang/String;

.field private mPlusCodeUtils:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

.field private mRatModeChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

.field private mWatchdogStartTime:J

.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;)V
    .locals 4
    .param p2, "controller"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
    .param p3, "lteController"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;
    .param p4, "cdmaController"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1448
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    .line 1449
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;)V

    .line 1391
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_UNKNOWN:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1393
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->OUT_OF_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    .line 1394
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->OUT_OF_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    .line 1403
    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mFailedNetworkInfoArray:Ljava/util/List;

    .line 1404
    iput-wide v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mNoServiceTimeStamp:J

    .line 1406
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->getPlusCodeUtils()Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mPlusCodeUtils:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    .line 1407
    iput-wide v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mWatchdogStartTime:J

    .line 1408
    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mPlmnToSelectNetworkManually:Ljava/lang/String;

    .line 1409
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mContinousRetryCount:I

    .line 1410
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$1;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mRatModeChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    .line 1860
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    .line 1932
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$3;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$3;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    .line 1451
    const-string v0, "persist.sys.ct.ir.wd"

    const v1, 0x493e0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sWatchdogDelayTime:I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1702(I)I

    .line 1454
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-interface {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->registerListener(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;)V

    .line 1455
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-interface {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->registerListener(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;)V

    .line 1456
    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-static {p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mRatModeChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->registerSvlteRatModeChangedListener(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;)V

    .line 1459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mFailedNetworkInfoArray:Ljava/util/List;

    .line 1460
    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1385
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    .prologue
    .line 1385
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->isDualRadioOff()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    .prologue
    .line 1385
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->isDualServiceNotInService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    .prologue
    .line 1385
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->cancelToRetryLwgPlmnChanged()V

    return-void
.end method

.method static synthetic access$2100(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;)Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mPlusCodeUtils:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    return-object v0
.end method

.method private cancelToRetryLwgPlmnChanged()V
    .locals 1

    .prologue
    .line 1747
    const-string v0, "cancelToRetryLwgPlmnChanged"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1748
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mFailedNetworkInfoArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1749
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->removeMessages(I)V

    .line 1750
    return-void
.end method

.method private getRoamingModeByPlmn5M(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 2
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1488
    if-eqz p1, :cond_2

    .line 1490
    const-string v0, "460"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "455"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1492
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRoamingModeByPlmn5M, plmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1494
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1503
    :goto_0
    return-object v0

    .line 1496
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRoamingModeByPlmn5M, plmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1498
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    goto :goto_0

    .line 1501
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRoamingModeByPlmn5M, plmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1503
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    goto :goto_0
.end method

.method private isDualRadioOff()Z
    .locals 3

    .prologue
    .line 1514
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIsLwgRadioOn:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIsCdmaRadioOn:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1515
    .local v0, "ret":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDualRadioOff() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1516
    return v0

    .line 1514
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDualServiceNotInService()Z
    .locals 3

    .prologue
    .line 1508
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->IN_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->IN_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1510
    .local v0, "ret":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDualServiceNotInService() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1511
    return v0

    .line 1508
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFailedNetwork(Lcom/android/internal/telephony/OperatorInfo;)Z
    .locals 12
    .param p1, "oi"    # Lcom/android/internal/telephony/OperatorInfo;

    .prologue
    .line 1753
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mFailedNetworkInfoArray:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    .line 1754
    .local v0, "count":I
    const/4 v6, 0x0

    .line 1755
    .local v6, "isFailed":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 1756
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mFailedNetworkInfoArray:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/OperatorInfo;

    .line 1757
    .local v3, "foi":Lcom/android/internal/telephony/OperatorInfo;
    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 1758
    .local v1, "foal":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    .line 1760
    .local v2, "foas":Ljava/lang/String;
    :goto_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 1762
    .local v4, "fon":Ljava/lang/String;
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v7

    .line 1763
    .local v7, "oal":Ljava/lang/String;
    :goto_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v8

    .line 1764
    .local v8, "oas":Ljava/lang/String;
    :goto_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    .line 1766
    .local v9, "on":Ljava/lang/String;
    :goto_6
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1767
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "found failed op: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1768
    const/4 v6, 0x1

    .line 1772
    .end local v1    # "foal":Ljava/lang/String;
    .end local v2    # "foas":Ljava/lang/String;
    .end local v3    # "foi":Lcom/android/internal/telephony/OperatorInfo;
    .end local v4    # "fon":Ljava/lang/String;
    .end local v7    # "oal":Ljava/lang/String;
    .end local v8    # "oas":Ljava/lang/String;
    .end local v9    # "on":Ljava/lang/String;
    :cond_0
    return v6

    .line 1757
    .restart local v3    # "foi":Lcom/android/internal/telephony/OperatorInfo;
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 1758
    .restart local v1    # "foal":Ljava/lang/String;
    :cond_2
    const-string v2, ""

    goto :goto_2

    .line 1760
    .restart local v2    # "foas":Ljava/lang/String;
    :cond_3
    const-string v4, ""

    goto :goto_3

    .line 1762
    .restart local v4    # "fon":Ljava/lang/String;
    :cond_4
    const-string v7, ""

    goto :goto_4

    .line 1763
    .restart local v7    # "oal":Ljava/lang/String;
    :cond_5
    const-string v8, ""

    goto :goto_5

    .line 1764
    .restart local v8    # "oas":Ljava/lang/String;
    :cond_6
    const-string v9, ""

    goto :goto_6

    .line 1755
    .restart local v9    # "on":Ljava/lang/String;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method private logdForStrategy(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [Strategy5M], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Ljava/lang/String;)V

    .line 1777
    return-void
.end method

.method private retryLwgPlmnChanged()V
    .locals 2

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mPlmnToSelectNetworkManually:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LTE]retry check plmn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mPlmnToSelectNetworkManually:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1732
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mPlmnToSelectNetworkManually:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->onLwgPlmnChanged(Ljava/lang/String;)V

    .line 1734
    :cond_0
    return-void
.end method

.method private waitForRetryLwgPlmnChanged()V
    .locals 4

    .prologue
    const/16 v1, 0x66

    .line 1737
    const-string v0, "[LTE]waitForRetryLwgPlmnChanged"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1739
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1740
    const-string v0, "really wait for retry"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1741
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sFindNetworkDelayTime:I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1900()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1744
    :cond_0
    return-void
.end method


# virtual methods
.method protected getRoamingModeByPlmnCdma(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 1
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1519
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->getRoamingModeByPlmn5M(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v0

    return-object v0
.end method

.method protected getRoamingModeByPlmnLwg(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 1
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1523
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->getRoamingModeByPlmn5M(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage, msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1465
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1485
    :cond_0
    :goto_0
    return-void

    .line 1467
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->triggerNoServiceWatchdog()V

    goto :goto_0

    .line 1470
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->retryLwgPlmnChanged()V

    goto :goto_0

    .line 1473
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_1

    .line 1474
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->startNewSearchRound()V

    .line 1475
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->startNewSearchRound()V

    goto :goto_0

    .line 1476
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x6a

    if-ne v0, v1, :cond_2

    .line 1477
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->startNewSearchRound()V

    goto :goto_0

    .line 1478
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->startNewSearchRound()V

    goto :goto_0

    .line 1465
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected isInCriticalAreaSameWithCdmaRoamingMode(Lcom/android/internal/telephony/OperatorInfo;)Z
    .locals 4
    .param p1, "oi"    # Lcom/android/internal/telephony/OperatorInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LTE]isSameWithCdmaRatModeAndArea, oi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCdmaPlmnForCriticalArea="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaPlmnForCriticalArea:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCdmaRoamingMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1682
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    if-eq v2, v3, :cond_3

    .line 1683
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaPlmnForCriticalArea:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaPlmnForCriticalArea:Ljava/lang/String;

    const-string v3, "455"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v3, "455"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1700
    :cond_0
    :goto_0
    return v0

    .line 1689
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->getRoamingModeByPlmnLwg(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 1691
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_UNKNOWN:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->getRoamingModeByPlmnLwg(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v3

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    .line 1697
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1700
    goto :goto_0
.end method

.method protected isSimReady()Z
    .locals 4

    .prologue
    .line 1537
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isSimReady, slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mActivePhoneId:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLteDcPhoneProxy.getIccCard().getState()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Ljava/lang/String;)V

    .line 1540
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1542
    .local v0, "bSimReady":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimReady, slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mActivePhoneId:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bSimReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1543
    return v0

    .line 1540
    .end local v0    # "bSimReady":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCdmaPlmnChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1831
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->getRoamingModeByPlmnCdma(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1832
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaPlmnForCriticalArea:Ljava/lang/String;

    .line 1834
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->supportRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1837
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-eq v0, v1, :cond_0

    .line 1839
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->resumeNetwork()V

    .line 1841
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1842
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->cancelAvailableNetworks()V

    .line 1844
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-interface {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    .line 1853
    :cond_2
    :goto_0
    return-void

    .line 1845
    :cond_3
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mActivePhoneId:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-eq v0, v1, :cond_2

    .line 1850
    :cond_4
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->resumeNetwork()V

    .line 1851
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-interface {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    goto :goto_0
.end method

.method protected onLwgPlmnChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLwgPlmnChanged plmn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1782
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->supportRoaming()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1783
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->getRoamingModeByPlmnLwg(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v1

    .line 1784
    .local v1, "targetMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    const/4 v0, 0x0

    .line 1786
    .local v0, "registerManually":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLwgPlmnChanged mCdmaRoamingMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " targetMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1791
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_UNKNOWN:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v2, v3, :cond_4

    .line 1806
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v2

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    .line 1808
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->resumeNetwork()V

    .line 1810
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 1811
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->cancelAvailableNetworks()V

    .line 1813
    :cond_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v2, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    .line 1815
    if-eqz v0, :cond_3

    .line 1818
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mPlmnToSelectNetworkManually:Ljava/lang/String;

    .line 1819
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->findAvailabeNetwork()V

    .line 1825
    .end local v0    # "registerManually":Z
    .end local v1    # "targetMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    :cond_3
    :goto_1
    return-void

    .line 1793
    .restart local v0    # "registerManually":Z
    .restart local v1    # "targetMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    :cond_4
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v2, v3, :cond_6

    .line 1794
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-eq v1, v2, :cond_5

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaPlmnForCriticalArea:Ljava/lang/String;

    const-string v3, "455"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "455"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1797
    :cond_5
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1798
    const/4 v0, 0x1

    goto :goto_0

    .line 1800
    :cond_6
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v2, v3, :cond_0

    .line 1801
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v1, v2, :cond_0

    .line 1802
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1803
    const/4 v0, 0x1

    goto :goto_0

    .line 1822
    .end local v0    # "registerManually":Z
    .end local v1    # "targetMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    :cond_7
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->resumeNetwork()V

    .line 1823
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-interface {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    goto :goto_1
.end method

.method protected onRadioStateChanged()V
    .locals 3

    .prologue
    .line 1605
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v0

    .line 1607
    .local v0, "roamingMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRadioStateChanged mIsLwgRadioOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIsLwgRadioOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsCdmaRadioOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIsCdmaRadioOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " roamingMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1610
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->isDualRadioOff()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1611
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_UNKNOWN:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1612
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaPlmnForCriticalArea:Ljava/lang/String;

    .line 1615
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->updateWatchdog()V

    .line 1616
    return-void
.end method

.method protected onSetIfEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1857
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->updateWatchdog()V

    .line 1858
    return-void
.end method

.method protected postponeNoServiceWatchdogIfNeeded()V
    .locals 11

    .prologue
    const/16 v10, 0x65

    .line 1652
    const-string v1, "postponeNoServiceWatchdogIfNeeded"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1653
    invoke-virtual {p0, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1654
    invoke-virtual {p0, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->removeMessages(I)V

    .line 1655
    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sWatchdogDelayTime:I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1700()I

    move-result v1

    int-to-long v4, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mWatchdogStartTime:J

    sub-long/2addr v6, v8

    sub-long v2, v4, v6

    .line 1657
    .local v2, "remainingTime":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 1658
    const-wide/16 v2, 0x0

    .line 1660
    :cond_0
    long-to-int v1, v2

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sSwitchModeOrResumeDelayTime:I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1800()I

    move-result v4

    add-int v0, v1, v4

    .line 1661
    .local v0, "newDelay":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remainingTime = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " newDelay = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1662
    invoke-virtual {p0, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v4, v0

    invoke-virtual {p0, v1, v4, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1665
    .end local v0    # "newDelay":I
    .end local v2    # "remainingTime":J
    :cond_1
    return-void
.end method

.method protected restartNoSerivceWatchdogIfNeeded()V
    .locals 1

    .prologue
    .line 1668
    const-string v0, "restartNoSerivceWatchdogIfNeeded"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1669
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1670
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->stopNoServiceWatchdog()V

    .line 1671
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mContinousRetryCount:I

    if-lez v0, :cond_0

    .line 1672
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mContinousRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mContinousRetryCount:I

    .line 1674
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->startNoServiceWatchdog()V

    .line 1676
    :cond_1
    return-void
.end method

.method protected startNoServiceWatchdog()V
    .locals 4

    .prologue
    const v3, 0x1b7740

    const/16 v2, 0x65

    .line 1628
    const-string v0, "startNoServiceWatchdog"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1629
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1630
    const-string v0, "persist.sys.ct.ir.wd"

    const v1, 0x493e0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sWatchdogDelayTime:I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1702(I)I

    .line 1632
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mContinousRetryCount:I

    mul-int/lit16 v0, v0, 0x7530

    # += operator for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sWatchdogDelayTime:I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1712(I)I

    .line 1633
    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sWatchdogDelayTime:I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1700()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 1634
    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sWatchdogDelayTime:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1702(I)I

    .line 1636
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mWatchdogStartTime:J

    .line 1637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "really start watchdog sWatchdogDelayTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sWatchdogDelayTime:I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1700()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mContinousRetryCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mContinousRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1639
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sWatchdogDelayTime:I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1700()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1641
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mContinousRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mContinousRetryCount:I

    .line 1643
    :cond_1
    return-void
.end method

.method protected stopNoServiceWatchdog()V
    .locals 2

    .prologue
    .line 1646
    const-string v0, "stopNoServiceWatchdog"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1647
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->removeMessages(I)V

    .line 1648
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mWatchdogStartTime:J

    .line 1649
    return-void
.end method

.method protected supportRoaming()Z
    .locals 4

    .prologue
    .line 1527
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " supportRoaming, slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mActivePhoneId:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLteDcPhoneProxy.getIccCard().getState()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Ljava/lang/String;)V

    .line 1530
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mActivePhoneId:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)I

    move-result v2

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->isCtDualModeSimCard(I)Z
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;I)Z

    move-result v0

    .line 1531
    .local v0, "bSupportRoaming":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportRoaming, slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mActivePhoneId:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bSupportRoaming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1533
    return v0
.end method

.method protected switchForNoService(Z)Z
    .locals 10
    .param p1, "forceSwitch"    # Z

    .prologue
    .line 1547
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchForNoService mLteServiceState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mCdmaServiceState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1549
    const/4 v5, 0x0

    .line 1550
    .local v5, "reallySwitchForNoService":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->isDualRadioOff()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->supportRoaming()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->isSimReady()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1552
    .local v0, "curTime":J
    iget-wide v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mNoServiceTimeStamp:J

    sub-long v2, v0, v6

    .line 1554
    .local v2, "duration":J
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->stopNoServiceWatchdog()V

    .line 1558
    iget-wide v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mNoServiceTimeStamp:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sWatchdogDelayTime:I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1700()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-gtz v6, :cond_0

    if-eqz p1, :cond_3

    .line 1561
    :cond_0
    const-string v6, "switchForNoService realy siwtched"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1563
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->cancelToRetryLwgPlmnChanged()V

    .line 1564
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->cancelAvailableNetworks()V

    .line 1566
    const/16 v6, 0x67

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1567
    .local v4, "msg":Landroid/os/Message;
    const/16 v6, 0x68

    iput v6, v4, Landroid/os/Message;->arg1:I

    .line 1569
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v6

    sget-object v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v6, v7, :cond_2

    .line 1570
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    sget-object v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->setRoaming(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z
    invoke-static {v6, v7, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z

    .line 1574
    :goto_0
    iput-wide v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mNoServiceTimeStamp:J

    .line 1576
    sget-object v6, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_UNKNOWN:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iput-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1577
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaPlmnForCriticalArea:Ljava/lang/String;

    .line 1578
    const/4 v5, 0x1

    .line 1585
    .end local v0    # "curTime":J
    .end local v2    # "duration":J
    .end local v4    # "msg":Landroid/os/Message;
    :cond_1
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchForNoService reallySwitchForNoService="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1587
    return v5

    .line 1572
    .restart local v0    # "curTime":J
    .restart local v2    # "duration":J
    .restart local v4    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    sget-object v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->setRoaming(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z
    invoke-static {v6, v7, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z

    goto :goto_0

    .line 1580
    .end local v4    # "msg":Landroid/os/Message;
    :cond_3
    const-string v6, "switchForNoService delay switch"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1581
    const/16 v6, 0x65

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sWatchdogDelayTime:I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1700()I

    move-result v7

    int-to-long v8, v7

    sub-long/2addr v8, v2

    invoke-virtual {p0, v6, v8, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method protected triggerNoServiceWatchdog()V
    .locals 2

    .prologue
    .line 1619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerNoServiceWatchdog mLteServiceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCdmaServiceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1621
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->isDualServiceNotInService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1622
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->switchForNoService(Z)Z

    .line 1624
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->updateWatchdog()V

    .line 1625
    return-void
.end method

.method protected tryNetworkManually(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1706
    .local p1, "networkInfoArray":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v2, 0x0

    .line 1708
    .local v2, "matched":Z
    if-eqz p1, :cond_0

    .line 1709
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1711
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1712
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/OperatorInfo;

    .line 1713
    .local v3, "oi":Lcom/android/internal/telephony/OperatorInfo;
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->isInCriticalAreaSameWithCdmaRoamingMode(Lcom/android/internal/telephony/OperatorInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->isFailedNetwork(Lcom/android/internal/telephony/OperatorInfo;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1714
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LTE]registerNetworkManually: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1715
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v4, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->registerNetworkManually(Lcom/android/internal/telephony/OperatorInfo;)V

    .line 1716
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->resumeNetwork()V

    .line 1717
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mFailedNetworkInfoArray:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1718
    const/4 v2, 0x1

    .line 1724
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "oi":Lcom/android/internal/telephony/OperatorInfo;
    :cond_0
    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mPlmnToSelectNetworkManually:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1725
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->waitForRetryLwgPlmnChanged()V

    .line 1727
    :cond_1
    return-void

    .line 1711
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "oi":Lcom/android/internal/telephony/OperatorInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected updateWatchdog()V
    .locals 2

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->IN_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->IN_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->isDualRadioOff()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1594
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mContinousRetryCount:I

    .line 1597
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->isDualRadioOff()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->isDualServiceNotInService()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->getIfEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1598
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->startNoServiceWatchdog()V

    .line 1602
    :goto_0
    return-void

    .line 1600
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->stopNoServiceWatchdog()V

    goto :goto_0
.end method
