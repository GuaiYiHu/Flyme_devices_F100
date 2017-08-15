.class public Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
.super Landroid/os/Handler;
.source "DataSubSelector.java"


# static fields
.field public static final ACTION_MOBILE_DATA_ENABLE:Ljava/lang/String; = "android.intent.action.ACTION_MOBILE_DATA_ENABLE"

.field private static final BSP_PACKAGE:Z

.field private static final DBG:Z = true

.field private static final EVENT_SET_DEFAULT_DATA:I = 0x1e

.field public static final EXTRA_MOBILE_DATA_ENABLE_REASON:Ljava/lang/String; = "reason"

.field private static final NO_SIM_VALUE:Ljava/lang/String; = "N/A"

.field private static final OPERATOR_OM:Ljava/lang/String; = "OM"

.field private static final OPERATOR_OP01:Ljava/lang/String; = "OP01"

.field private static final OPERATOR_OP02:Ljava/lang/String; = "OP02"

.field private static final OPERATOR_OP09:Ljava/lang/String; = "OP09"

.field private static final PROPERTY_3G_SIM:Ljava/lang/String; = "persist.radio.simswitch"

.field private static final PROPERTY_DEFAULT_DATA_ICCID:Ljava/lang/String; = "persist.radio.data.iccid"

.field private static final PROPERTY_DEFAULT_SIMSWITCH_ICCID:Ljava/lang/String; = "persist.radio.simswitch.iccid"

.field private static final PROPERTY_MOBILE_DATA_ENABLE:Ljava/lang/String; = "persist.radio.mobile.data"

.field public static final REASON_MOBILE_DATA_ENABLE_SYSTEM:Ljava/lang/String; = "system"

.field public static final REASON_MOBILE_DATA_ENABLE_USER:Ljava/lang/String; = "user"

.field private static mOperatorSpec:Ljava/lang/String;


# instance fields
.field private PROPERTY_ICCID:[Ljava/lang/String;

.field private PROPERTY_ICCID_SIM:[Ljava/lang/String;

.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIsNeedWaitImsi:Z

.field private mIsNeedWaitUnlock:Z

.field private mIsSubReady:Z

.field private mPhoneNum:I

.field private mRadioTechDone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "ro.mtk_bsp_package"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->BSP_PACKAGE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneNum"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 49
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    .line 50
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z

    .line 53
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "ril.iccid.sim1"

    aput-object v2, v1, v3

    const-string v2, "ril.iccid.sim2"

    aput-object v2, v1, v4

    const-string v2, "ril.iccid.sim3"

    aput-object v2, v1, v5

    const-string v2, "ril.iccid.sim4"

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    .line 81
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "ril.iccid.sim1"

    aput-object v2, v1, v3

    const-string v2, "ril.iccid.sim2"

    aput-object v2, v1, v4

    const-string v2, "ril.iccid.sim3"

    aput-object v2, v1, v5

    const-string v2, "ril.iccid.sim4"

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    .line 96
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsSubReady:Z

    .line 97
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mRadioTechDone:Z

    .line 99
    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 184
    const-string v1, "DataSubSelector is created"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 185
    iput p2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    .line 186
    const-string v1, "ro.operator.optr"

    const-string v2, "OM"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operator Spec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 188
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    .line 190
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsSubReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapabilityIfNeeded(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->onSubInfoReady(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z

    return p1
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp01CapSwitch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForSvlte(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$902(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mRadioTechDone:Z

    return p1
.end method

.method private checkCdmaCardInsert()Z
    .locals 4

    .prologue
    .line 296
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 297
    .local v1, "phoneCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 298
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isRuimCsim(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CDMA sim is inserted in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 300
    const/4 v2, 0x1

    .line 303
    :goto_1
    return v2

    .line 297
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private checkOp01CapSwitch()Z
    .locals 17

    .prologue
    .line 963
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v12, v15, [I

    .line 964
    .local v12, "simOpInfo":[I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v13, v15, [I

    .line 965
    .local v13, "simType":[I
    const/4 v14, -0x1

    .line 966
    .local v14, "targetSim":I
    const/4 v5, 0x0

    .line 967
    .local v5, "insertedSimCount":I
    const/4 v6, 0x0

    .line 968
    .local v6, "insertedStatus":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v8, v15, [Z

    .line 969
    .local v8, "op01Usim":[Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v7, v15, [Z

    .line 970
    .local v7, "op01Sim":[Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v10, v15, [Z

    .line 971
    .local v10, "overseaUsim":[Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v9, v15, [Z

    .line 972
    .local v9, "overseaSim":[Z
    const-string v15, "persist.radio.simswitch.iccid"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 973
    .local v1, "capabilitySimIccid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v3, v15, [Ljava/lang/String;

    .line 975
    .local v3, "currIccId":[Ljava/lang/String;
    const-string v15, "checkOp01CapSwitch start"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 977
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v15, :cond_3

    .line 978
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v15, v15, v4

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v4

    .line 979
    aget-object v15, v3, v4

    if-eqz v15, :cond_0

    const-string v15, ""

    aget-object v16, v3, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 980
    :cond_0
    const-string v15, "error: iccid not found, wait for next sub ready"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 981
    const/4 v15, 0x0

    .line 1112
    :goto_1
    return v15

    .line 983
    :cond_1
    const-string v15, "N/A"

    aget-object v16, v3, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 984
    add-int/lit8 v5, v5, 0x1

    .line 985
    const/4 v15, 0x1

    shl-int/2addr v15, v4

    or-int/2addr v6, v15

    .line 977
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 988
    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkOp01CapSwitch : Inserted SIM count: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", insertedStatus: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 990
    invoke-static {v12, v13, v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v15

    if-nez v15, :cond_4

    .line 991
    const/4 v15, 0x0

    goto :goto_1

    .line 995
    :cond_4
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v15, :cond_7

    .line 996
    if-nez v4, :cond_6

    .line 997
    const-string v11, "gsm.sim.ril.mcc.mnc"

    .line 1001
    .local v11, "propStr":Ljava/lang/String;
    :goto_3
    const-string v15, ""

    invoke-static {v11, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "sim_lock"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1002
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkOp01CapSwitch : phone "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is sim lock"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1003
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z

    .line 995
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 999
    .end local v11    # "propStr":Ljava/lang/String;
    :cond_6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "gsm.sim.ril.mcc.mnc."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v16, v4, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "propStr":Ljava/lang/String;
    goto :goto_3

    .line 1006
    .end local v11    # "propStr":Ljava/lang/String;
    :cond_7
    const-string v15, "persist.radio.simswitch"

    const-string v16, "1"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/lit8 v2, v15, -0x1

    .line 1008
    .local v2, "capabilitySimId":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "op01: capabilitySimIccid:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "capabilitySimId:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1010
    const/4 v4, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v15, :cond_c

    .line 1012
    aget v15, v12, v4

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 1013
    aget v15, v13, v4

    if-eqz v15, :cond_9

    .line 1014
    const/4 v15, 0x1

    aput-boolean v15, v8, v4

    .line 1010
    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1016
    :cond_9
    const/4 v15, 0x1

    aput-boolean v15, v7, v4

    goto :goto_5

    .line 1018
    :cond_a
    aget v15, v12, v4

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 1019
    aget v15, v13, v4

    if-eqz v15, :cond_b

    .line 1020
    const/4 v15, 0x1

    aput-boolean v15, v10, v4

    goto :goto_5

    .line 1022
    :cond_b
    const/4 v15, 0x1

    aput-boolean v15, v9, v4

    goto :goto_5

    .line 1027
    :cond_c
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "op01Usim: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v8}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1028
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "op01Sim: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v7}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1029
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "overseaUsim: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v10}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1030
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "overseaSim: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v9}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1032
    const/4 v4, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v15, :cond_1a

    .line 1033
    aget-object v15, v3, v4

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_19

    .line 1034
    invoke-static {v4, v8, v7, v10, v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getHigherPrioritySimForOp01(I[Z[Z[Z[Z)I

    move-result v14

    .line 1036
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "op01: i = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", currIccId : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v3, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", targetSim : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1038
    aget-boolean v15, v8, v4

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 1039
    const-string v15, "op01-C1: cur is old op01 USIM, no change"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1040
    if-eq v2, v4, :cond_d

    .line 1041
    const-string v15, "op01-C1a: old op01 USIM change slot, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1042
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1044
    :cond_d
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1045
    :cond_e
    aget-boolean v15, v7, v4

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_11

    .line 1046
    const/4 v15, -0x1

    if-eq v14, v15, :cond_10

    .line 1047
    const-string v15, "op01-C2: cur is old op01 SIM but find op01 USIM, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1048
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1053
    :cond_f
    :goto_7
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1049
    :cond_10
    if-eq v2, v4, :cond_f

    .line 1050
    const-string v15, "op01-C2a: old op01 SIM change slot, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1051
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_7

    .line 1054
    :cond_11
    aget-boolean v15, v10, v4

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_14

    .line 1055
    const/4 v15, -0x1

    if-eq v14, v15, :cond_13

    .line 1056
    const-string v15, "op01-C3: cur is old OS USIM but find op01 SIMs, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1057
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1062
    :cond_12
    :goto_8
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1058
    :cond_13
    if-eq v2, v4, :cond_12

    .line 1059
    const-string v15, "op01-C3a: old OS USIM change slot, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1060
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_8

    .line 1063
    :cond_14
    aget-boolean v15, v9, v4

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_17

    .line 1064
    const/4 v15, -0x1

    if-eq v14, v15, :cond_16

    .line 1065
    const-string v15, "op01-C4: cur is old OS SIM but find op01 SIMs/OS USIM, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1066
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1071
    :cond_15
    :goto_9
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1067
    :cond_16
    if-eq v2, v4, :cond_15

    .line 1068
    const-string v15, "op01-C4a: old OS SIM change slot, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1069
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_9

    .line 1072
    :cond_17
    const/4 v15, -0x1

    if-eq v14, v15, :cond_18

    .line 1073
    const-string v15, "op01-C5: cur is old non-op01 SIM/USIM but find higher SIM, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1074
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1075
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1077
    :cond_18
    const-string v15, "op01-C6: no higher priority SIM, no cahnge"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1078
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1032
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 1082
    :cond_1a
    invoke-static {v2, v8, v7, v10, v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getHigherPrioritySimForOp01(I[Z[Z[Z[Z)I

    move-result v14

    .line 1084
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "op01: target SIM :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1085
    aget-boolean v15, v8, v2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1b

    .line 1086
    const-string v15, "op01-C7: cur is new op01 USIM, no change"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1087
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1088
    :cond_1b
    aget-boolean v15, v7, v2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1d

    .line 1089
    const/4 v15, -0x1

    if-eq v14, v15, :cond_1c

    .line 1090
    const-string v15, "op01-C8: cur is new op01 SIM but find op01 USIM, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1091
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1093
    :cond_1c
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1094
    :cond_1d
    aget-boolean v15, v10, v2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1f

    .line 1095
    const/4 v15, -0x1

    if-eq v14, v15, :cond_1e

    .line 1096
    const-string v15, "op01-C9: cur is new OS USIM but find op01 SIMs, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1097
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1099
    :cond_1e
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1100
    :cond_1f
    aget-boolean v15, v9, v2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_21

    .line 1101
    const/4 v15, -0x1

    if-eq v14, v15, :cond_20

    .line 1102
    const-string v15, "op01-C10: cur is new OS SIM but find op01 SIMs/OS USIM, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1103
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1105
    :cond_20
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1106
    :cond_21
    const/4 v15, -0x1

    if-eq v14, v15, :cond_22

    .line 1107
    const-string v15, "op01-C11: cur is non-op01 but find higher priority SIM, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1108
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1112
    :goto_a
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1110
    :cond_22
    const-string v15, "op01-C12: no higher priority SIM, no cahnge"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_a
.end method

.method private checkSimCardChanged(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1812
    .local p1, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v1, 0x0

    .line 1814
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1815
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 1816
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    .line 1817
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubscriptionInfo sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", prop_subId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persist.radio.sim.subId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->logd(Ljava/lang/String;)V

    .line 1818
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-ne v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persist.radio.sim.subId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1819
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persist.radio.sim.subId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    const/4 v1, 0x1

    .line 1814
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1825
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return v1
.end method

.method private clearDefaultsForInactiveSubIds()V
    .locals 4

    .prologue
    .line 1703
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    .line 1705
    .local v1, "subController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 1706
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[clearDefaultsForInactiveSubIds] records: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1707
    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->shouldDefaultBeCleared(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1708
    const-string v2, "[clearDefaultsForInactiveSubIds] clearing default data sub id"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1709
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V

    .line 1711
    :cond_0
    return-void
.end method

.method private getCapability()I
    .locals 4

    .prologue
    .line 623
    const-string v2, "persist.radio.simswitch"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, "curr3GSim":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCapability 3G Sim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 626
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 627
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 628
    .local v0, "curr3GPhoneId":I
    add-int/lit8 v2, v0, -0x1

    .line 630
    .end local v0    # "curr3GPhoneId":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getLastDataEnabled()I
    .locals 5

    .prologue
    .line 1760
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 1761
    .local v1, "subId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataSubselector getLastDataEnable subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1762
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobile_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1764
    .local v0, "enabled":I
    return v0
.end method

.method private getOperatorForSlotId(I[Ljava/lang/String;)I
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "currIccId"    # [Ljava/lang/String;

    .prologue
    .line 1801
    aget-object v0, p2, p1

    .line 1802
    .local v0, "iccId":Ljava/lang/String;
    const-string v1, "898603"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "898606"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "898611"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "898530"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1803
    :cond_0
    const/4 v1, 0x2

    .line 1807
    :goto_0
    return v1

    .line 1804
    :cond_1
    const-string v1, "898601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "898609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1805
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1807
    :cond_3
    const-string v1, "8986"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private isUsimCard(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 1793
    if-nez p1, :cond_0

    .line 1794
    const-string v0, "USIM"

    const-string v1, "gsm.ril.uicctype"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1796
    :goto_0
    return v0

    :cond_0
    const-string v0, "USIM"

    const-string v1, "gsm.ril.uicctype.2"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private isValidSubId(J)Z
    .locals 5
    .param p1, "subId"    # J

    .prologue
    .line 636
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v1

    .line 637
    .local v1, "subList":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 638
    aget v2, v1, v0

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 639
    const/4 v2, 0x1

    .line 641
    :goto_1
    return v2

    .line 637
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 641
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 1738
    const-string v0, "DataSubSelector"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 1746
    const-string v0, "DataSubSelector"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 1753
    const-string v0, "DataSubSelector"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    return-void
.end method

.method private onSubInfoReady(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 204
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->BSP_PACKAGE:Z

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "Don\'t support BSP Package."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 234
    :goto_0
    return-void

    .line 209
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    const-string v1, "OP01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp01(Landroid/content/Intent;)V

    goto :goto_0

    .line 211
    :cond_1
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    const-string v1, "OP02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02(Landroid/content/Intent;)V

    goto :goto_0

    .line 213
    :cond_2
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    const-string v1, "OP09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp09(Landroid/content/Intent;)V

    goto :goto_0

    .line 230
    :cond_3
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOm(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setCapability(I)Z
    .locals 12
    .param p1, "phoneId"    # I

    .prologue
    .line 1498
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v8, v10, [I

    .line 1499
    .local v8, "phoneRat":[I
    const/4 v7, 0x1

    .line 1501
    .local v7, "isSwitchSuccess":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setCapability: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1503
    const-string v10, "persist.radio.simswitch"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1504
    .local v1, "curr3GSim":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "current 3G Sim = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1506
    if-eqz v1, :cond_0

    const-string v10, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1507
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1508
    .local v0, "curr3GPhoneId":I
    add-int/lit8 v10, p1, 0x1

    if-ne v0, v10, :cond_0

    .line 1509
    const-string v10, "Current 3G phone equals target phone, don\'t trigger switch"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    move v10, v7

    .line 1549
    .end local v0    # "curr3GPhoneId":I
    :goto_0
    return v10

    .line 1515
    :cond_0
    :try_start_0
    const-string v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 1517
    .local v5, "iTel":Lcom/android/internal/telephony/ITelephony;
    const-string v10, "phoneEx"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v6

    .line 1519
    .local v6, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v5, :cond_1

    .line 1520
    const-string v10, "Can not get phone service"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    .line 1521
    const/4 v10, 0x0

    goto :goto_0

    .line 1524
    :cond_1
    invoke-interface {v5, p1}, Lcom/android/internal/telephony/ITelephony;->getRadioAccessFamily(I)I

    move-result v2

    .line 1525
    .local v2, "currRat":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Current phoneRat:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1527
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v9, v10, [Landroid/telephony/RadioAccessFamily;

    .line 1528
    .local v9, "rat":[Landroid/telephony/RadioAccessFamily;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v10, :cond_4

    .line 1529
    if-ne p1, v4, :cond_2

    .line 1530
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIM switch to Phone"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1531
    const v10, 0x14008

    aput v10, v8, v4

    .line 1537
    :goto_2
    new-instance v10, Landroid/telephony/RadioAccessFamily;

    aget v11, v8, v4

    invoke-direct {v10, v4, v11}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v10, v9, v4

    .line 1528
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1535
    :cond_2
    const/high16 v10, 0x10000

    aput v10, v8, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1543
    .end local v2    # "currRat":I
    .end local v4    # "i":I
    .end local v5    # "iTel":Lcom/android/internal/telephony/ITelephony;
    .end local v6    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .end local v9    # "rat":[Landroid/telephony/RadioAccessFamily;
    :catch_0
    move-exception v3

    .line 1544
    .local v3, "ex":Landroid/os/RemoteException;
    const-string v10, "Set phone rat fail!!!"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1545
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1546
    const/4 v7, 0x0

    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_3
    move v10, v7

    .line 1549
    goto :goto_0

    .line 1539
    .restart local v2    # "currRat":I
    .restart local v4    # "i":I
    .restart local v5    # "iTel":Lcom/android/internal/telephony/ITelephony;
    .restart local v6    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .restart local v9    # "rat":[Landroid/telephony/RadioAccessFamily;
    :cond_4
    :try_start_1
    invoke-interface {v6, v9}, Lcom/mediatek/internal/telephony/ITelephonyEx;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1540
    const-string v10, "Set phone rat fail!!!"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1541
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private setCapabilityForC2K6M(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1453
    const-string v6, "DataSubSelector for setCapabilityForC2K6M: only for capability switch"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1456
    const/4 v5, -0x1

    .line 1457
    .local v5, "phoneId":I
    iget v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v6, [Ljava/lang/String;

    .line 1463
    .local v0, "currIccId":[Ljava/lang/String;
    const-string v3, ""

    .line 1464
    .local v3, "defaultIccid":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 1465
    .local v2, "defDataSubId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 1466
    .local v1, "defDataPhoneId":I
    if-ltz v1, :cond_0

    .line 1467
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    array-length v6, v6

    if-lt v1, v6, :cond_3

    .line 1468
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phoneId out of boundary :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1474
    :cond_0
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default data Iccid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1475
    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "N/A"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1476
    :cond_1
    const-string v6, "Default data Iccid N/A or null,return"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1495
    :cond_2
    :goto_1
    return-void

    .line 1470
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "defDataPhoneId ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1471
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1479
    :cond_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v6, :cond_7

    .line 1480
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    .line 1481
    aget-object v6, v0, v4

    if-eqz v6, :cond_5

    const-string v6, ""

    aget-object v7, v0, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1482
    :cond_5
    const-string v6, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1485
    :cond_6
    aget-object v6, v0, v4

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1486
    move v5, v4

    .line 1490
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default data phoneid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1491
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 1493
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_1

    .line 1479
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private setCapabilityIfNeeded(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCapabilityIfNeeded,mIsSubReady = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsSubReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRadioTechDone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mRadioTechDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1447
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsSubReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mRadioTechDone:Z

    if-eqz v0, :cond_0

    .line 1448
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapabilityForC2K6M(Landroid/content/Intent;)V

    .line 1450
    :cond_0
    return-void
.end method

.method private setDataEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataEnabled: , enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 660
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 661
    .local v0, "currSub":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 662
    .local v1, "phoneId":I
    invoke-direct {p0, v1, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 663
    return-void
.end method

.method private setDataEnabled(IZ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataEnabled: phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1300
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1301
    .local v2, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 1302
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 1303
    invoke-virtual {v2, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 1324
    :cond_0
    :goto_0
    return-void

    .line 1305
    :cond_1
    const/4 v1, 0x0

    .line 1306
    .local v1, "phoneSubId":I
    if-nez p2, :cond_2

    .line 1307
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 1308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to disable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v2, v1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_0

    .line 1311
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v0, v3, :cond_0

    .line 1312
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 1313
    if-eq v0, p1, :cond_3

    .line 1314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to disable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1315
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 1311
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1317
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to enable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1318
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_2
.end method

.method private setDefaultData(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    const/16 v6, 0x1e

    .line 1403
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    .line 1404
    .local v3, "subController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v2

    .line 1405
    .local v2, "sub":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    int-to-long v0, v4

    .line 1407
    .local v0, "currSub":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDefaultData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", current default sub:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1410
    if-gez v2, :cond_0

    .line 1411
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->removeMessages(I)V

    .line 1412
    const/4 v4, 0x0

    invoke-virtual {p0, v6, p1, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x1388

    invoke-virtual {p0, v4, v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1422
    :goto_0
    return-void

    .line 1417
    :cond_0
    int-to-long v4, v2

    cmp-long v4, v4, v0

    if-eqz v4, :cond_1

    .line 1418
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V

    goto :goto_0

    .line 1420
    :cond_1
    const-string v4, "setDefaultData: default data unchanged"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDefaultDataFromDataBase(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 648
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 649
    .local v0, "currSub":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobile_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 652
    .local v1, "mUserDataEnabled":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "liuwei setDefaultDataFromDataBase ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mUserDataEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 653
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnable(Z)V

    .line 654
    return-void

    .line 649
    .end local v1    # "mUserDataEnabled":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private shouldDefaultBeCleared(Ljava/util/List;I)Z
    .locals 7
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1714
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[shouldDefaultBeCleared: subId] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1715
    if-nez p1, :cond_0

    .line 1716
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[shouldDefaultBeCleared] return true no records subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1733
    :goto_0
    return v3

    .line 1719
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1721
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[shouldDefaultBeCleared] return false only one subId, subId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    move v3, v4

    .line 1722
    goto :goto_0

    .line 1724
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 1725
    .local v2, "record":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 1726
    .local v1, "id":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[shouldDefaultBeCleared] Record.id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1727
    if-ne v1, p2, :cond_2

    .line 1728
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[shouldDefaultBeCleared] return false subId is active, subId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    move v3, v4

    .line 1729
    goto :goto_0

    .line 1732
    .end local v1    # "id":I
    .end local v2    # "record":Landroid/telephony/SubscriptionInfo;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[shouldDefaultBeCleared] return true not active subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private subSelectorForOm(Landroid/content/Intent;)V
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 306
    const/16 v19, -0x1

    .line 307
    .local v19, "phoneId":I
    const/4 v13, 0x0

    .line 308
    .local v13, "insertedSimCount":I
    const/4 v14, 0x0

    .line 309
    .local v14, "insertedStatus":I
    const-string v21, "simDetectStatus"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 310
    .local v10, "detectedType":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v4, v0, [Ljava/lang/String;

    .line 312
    .local v4, "currIccId":[Ljava/lang/String;
    const-string v21, "DataSubSelector for OM"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 314
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_1

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v12

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v4, v12

    .line 316
    const-string v21, "N/A"

    aget-object v22, v4, v12

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 317
    add-int/lit8 v13, v13, 0x1

    .line 318
    const/16 v21, 0x1

    shl-int v21, v21, v12

    or-int v14, v14, v21

    .line 314
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 321
    :cond_1
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Inserted SIM count: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", insertedStatus: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 324
    const-string v21, "persist.radio.data.iccid"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 325
    .local v8, "defaultIccid":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Default data Iccid = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 327
    if-nez v13, :cond_3

    .line 332
    const-string v21, "C0: No SIM inserted, set data unset"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 337
    const-string v21, "persist.radio.sim.subId0"

    const-string v22, ""

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v21, "persist.radio.sim.subId1"

    const-string v22, ""

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :cond_2
    :goto_1
    return-void

    .line 340
    :cond_3
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v13, v0, :cond_f

    .line 341
    const/4 v12, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_4

    .line 342
    const/16 v21, 0x1

    shl-int v21, v21, v12

    and-int v21, v21, v14

    if-eqz v21, :cond_6

    .line 343
    move/from16 v19, v12

    .line 348
    :cond_4
    xor-int/lit8 v18, v19, 0x1

    .line 349
    .local v18, "noSimSlot":I
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "persist.radio.sim.subId"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v10, v0, :cond_9

    .line 356
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "C1: Single SIM + New SIM: Set Default data to phone:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 357
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 358
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 363
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "multi_sim_data_call"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v6

    .line 365
    .local v6, "defaultDataSub":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "default_data_on"

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    const/4 v5, 0x1

    .line 367
    .local v5, "defaultDataOn":Z
    :goto_3
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "C1: Single SIM + New SIM: Set Default data to phone: defaultDataOn="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 368
    if-eqz v5, :cond_8

    .line 369
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnable(Z)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "default_data_on"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 375
    .end local v5    # "defaultDataOn":Z
    .end local v6    # "defaultDataSub":J
    :catch_0
    move-exception v11

    .line 377
    .local v11, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnable(Z)V

    goto/16 :goto_1

    .line 341
    .end local v11    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v18    # "noSimSlot":I
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 365
    .restart local v6    # "defaultDataSub":J
    .restart local v18    # "noSimSlot":I
    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    .line 374
    .restart local v5    # "defaultDataOn":Z
    :cond_8
    :try_start_1
    const-string v21, "C1: Single SIM + New SIM: Set Default data to phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultDataFromDataBase(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 381
    .end local v5    # "defaultDataOn":Z
    .end local v6    # "defaultDataSub":J
    :cond_9
    if-eqz v8, :cond_a

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 387
    :cond_a
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "C3: Single SIM + Non Data SIM: Set Default data to phone:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 388
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 389
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 393
    :cond_b
    const-string v21, "C3: Single SIM + Non Data SIM: Set Default data to pho"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultDataFromDataBase(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 396
    :cond_c
    aget-object v21, v4, v19

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 401
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "C2: Single SIM + Data SIM: Set Default data to phone:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 402
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 403
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    goto/16 :goto_1

    .line 410
    :cond_d
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "C3: Single SIM + Non Data SIM: Set Default data to phone:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 411
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 412
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 414
    :cond_e
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnable(Z)V

    goto/16 :goto_1

    .line 418
    .end local v18    # "noSimSlot":I
    :cond_f
    const/16 v21, 0x2

    move/from16 v0, v21

    if-lt v13, v0, :cond_2

    .line 420
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v20

    .line 421
    .local v20, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const-string v21, "ro.gn.custom.operators"

    const-string v22, ""

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "cmcc"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkSimCardChanged(Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 422
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getChinaMobileCardSlot([Ljava/lang/String;)I

    move-result v9

    .line 423
    .local v9, "defautDataIndex":I
    if-ltz v9, :cond_10

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v22

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v21

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    goto/16 :goto_1

    .line 429
    .end local v9    # "defautDataIndex":I
    :cond_10
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v10, v0, :cond_23

    .line 430
    const-string v21, "newSIMSlot"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 433
    .local v17, "newSimStatus":I
    const/4 v15, 0x1

    .line 434
    .local v15, "isAllNewSim":Z
    const/4 v12, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_13

    .line 435
    const/16 v21, 0x1

    shl-int v21, v21, v12

    and-int v21, v21, v17

    if-nez v21, :cond_11

    .line 436
    const/4 v15, 0x0

    .line 439
    :cond_11
    if-eqz v8, :cond_12

    aget-object v21, v4, v12

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 440
    const/4 v15, 0x0

    .line 434
    :cond_12
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 445
    :cond_13
    if-eqz v15, :cond_1b

    .line 450
    const-string v21, "C4: Multi SIM + All New SIM: Set 34G to sub1"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 452
    if-eqz v8, :cond_14

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 453
    :cond_14
    const-string v21, "C4: Multi SIM + All New SIM: Set 34G to sub1"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 455
    const/16 v21, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "multi_sim_data_call"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v6

    .line 458
    .restart local v6    # "defaultDataSub":J
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "C4: Multi SIM + All New SIM: Set 34G to sub1 defaultDataSub="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 460
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isValidSubId(J)Z

    move-result v21

    if-nez v21, :cond_15

    .line 461
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 466
    :goto_5
    const-string v21, "C4: Multi SIM + All New SIM: Set 34G to sub1"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultDataFromDataBase(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 471
    .end local v6    # "defaultDataSub":J
    :catch_1
    move-exception v11

    .line 473
    .restart local v11    # "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 474
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnable(Z)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "default_data_on"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 463
    .end local v11    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v6    # "defaultDataSub":J
    :cond_15
    long-to-int v0, v6

    move/from16 v21, v0

    :try_start_3
    invoke-static/range {v21 .. v21}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    goto :goto_5

    .line 468
    .end local v6    # "defaultDataSub":J
    :cond_16
    const-string v21, "C4: Multi SIM + All New SIM:  Not defaultIccid, and setCapability is fail : setDefaultData slot = 0"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 469
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 480
    :cond_17
    const/16 v16, 0x0

    .line 482
    .local v16, "isDefaultIccEqual":Z
    const/4 v12, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_18

    .line 483
    aget-object v21, v4, v12

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19

    .line 484
    move/from16 v19, v12

    .line 486
    const/16 v16, 0x1

    .line 492
    :cond_18
    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_1a

    if-eqz v16, :cond_1a

    .line 497
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "C4: Multi SIM + All New SIM: Set 34G to phone:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 499
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 500
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    goto/16 :goto_1

    .line 482
    :cond_19
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 503
    :cond_1a
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 504
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    goto/16 :goto_1

    .line 513
    .end local v16    # "isDefaultIccEqual":Z
    :cond_1b
    if-eqz v8, :cond_1c

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1e

    .line 519
    :cond_1c
    const-string v21, "C6: Multi SIM + New SIM + Non Default SIM: No Change"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 523
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "multi_sim_data_call"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v6

    .line 525
    .restart local v6    # "defaultDataSub":J
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "C6: Multi SIM + New SIM + Non Default SIM: No Change defaultDataSub="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 527
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isValidSubId(J)Z

    move-result v21

    if-nez v21, :cond_1d

    .line 528
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 537
    .end local v6    # "defaultDataSub":J
    :goto_7
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnable(Z)V

    goto/16 :goto_1

    .line 530
    .restart local v6    # "defaultDataSub":J
    :cond_1d
    long-to-int v0, v6

    move/from16 v21, v0

    :try_start_5
    invoke-static/range {v21 .. v21}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V
    :try_end_5
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_7

    .line 533
    .end local v6    # "defaultDataSub":J
    :catch_2
    move-exception v21

    goto :goto_7

    .line 539
    :cond_1e
    const/4 v12, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_1f

    .line 540
    aget-object v21, v4, v12

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_20

    .line 541
    move/from16 v19, v12

    .line 546
    :cond_1f
    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_21

    .line 551
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "C5: Multi SIM + New SIM + Default SIM: Set Default data to phone:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 553
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 554
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    goto/16 :goto_1

    .line 539
    :cond_20
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 561
    :cond_21
    const-string v21, "C6: Multi SIM + New SIM + Non Default SIM: No Change"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 565
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "multi_sim_data_call"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v6

    .line 567
    .restart local v6    # "defaultDataSub":J
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "C6: Multi SIM + New SIM + Non Default SIM: No Change defaultDataSub="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 569
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isValidSubId(J)Z

    move-result v21

    if-nez v21, :cond_22

    .line 570
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getCapability()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V
    :try_end_6
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    .line 579
    .end local v6    # "defaultDataSub":J
    :goto_9
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnable(Z)V

    goto/16 :goto_1

    .line 572
    .restart local v6    # "defaultDataSub":J
    :cond_22
    long-to-int v0, v6

    move/from16 v21, v0

    :try_start_7
    invoke-static/range {v21 .. v21}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_9

    .line 575
    .end local v6    # "defaultDataSub":J
    :catch_3
    move-exception v21

    goto :goto_9

    .line 584
    .end local v15    # "isAllNewSim":Z
    .end local v17    # "newSimStatus":I
    :cond_23
    if-eqz v8, :cond_24

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_25

    .line 590
    :cond_24
    const-string v21, "C8: Do nothing"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 592
    :cond_25
    const/4 v12, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_26

    .line 593
    aget-object v21, v4, v12

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_27

    .line 594
    move/from16 v19, v12

    .line 598
    :cond_26
    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_28

    .line 603
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "C7: Multi SIM + New SIM + Default SIM: Set Default data to phone:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 605
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 606
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    goto/16 :goto_1

    .line 592
    :cond_27
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 614
    :cond_28
    const-string v21, "C8: Do nothing"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private subSelectorForOp01(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 745
    const/4 v9, -0x1

    .line 746
    .local v9, "phoneId":I
    const/4 v4, 0x0

    .line 747
    .local v4, "insertedSimCount":I
    const/4 v5, 0x0

    .line 748
    .local v5, "insertedStatus":I
    const-string v11, "simDetectStatus"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 749
    .local v2, "detectedType":I
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v11, [Ljava/lang/String;

    .line 751
    .local v0, "currIccId":[Ljava/lang/String;
    const-string v11, "DataSubSelector for op01"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 753
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_5

    .line 754
    iget-object v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v3

    .line 755
    aget-object v11, v0, v3

    if-eqz v11, :cond_0

    const-string v11, ""

    aget-object v12, v0, v3

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 756
    :cond_0
    const-string v11, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 958
    :cond_1
    :goto_1
    return-void

    .line 759
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "currIccId["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v0, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 760
    const-string v11, "N/A"

    aget-object v12, v0, v3

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 761
    add-int/lit8 v4, v4, 0x1

    .line 762
    const/4 v11, 0x1

    shl-int/2addr v11, v3

    or-int/2addr v5, v11

    .line 753
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 764
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "clear mcc.mnc:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 766
    if-nez v3, :cond_4

    .line 767
    const-string v10, "gsm.sim.ril.mcc.mnc"

    .line 771
    .local v10, "propStr":Ljava/lang/String;
    :goto_3
    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 769
    .end local v10    # "propStr":Ljava/lang/String;
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "propStr":Ljava/lang/String;
    goto :goto_3

    .line 774
    .end local v10    # "propStr":Ljava/lang/String;
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Inserted SIM count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", insertedStatus: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 777
    const-string v11, "persist.radio.data.iccid"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 778
    .local v1, "defaultIccid":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Default data Iccid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 780
    if-nez v4, :cond_6

    .line 785
    const-string v11, "C0: No SIM inserted, set data unset"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 786
    const/4 v11, -0x1

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    goto/16 :goto_1

    .line 787
    :cond_6
    const/4 v11, 0x1

    if-ne v4, v11, :cond_10

    .line 788
    const/4 v3, 0x0

    :goto_4
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_7

    .line 789
    const/4 v11, 0x1

    shl-int/2addr v11, v3

    and-int/2addr v11, v5

    if-eqz v11, :cond_9

    .line 790
    move v9, v3

    .line 795
    :cond_7
    const/4 v11, 0x1

    if-ne v2, v11, :cond_a

    .line 800
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "C1: Single SIM + New SIM: Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 801
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 802
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 804
    :cond_8
    const/4 v11, 0x0

    invoke-direct {p0, v9, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 788
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 806
    :cond_a
    if-eqz v1, :cond_b

    const-string v11, ""

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 812
    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "C3: Single SIM + Non Data SIM: Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 813
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 814
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 816
    :cond_c
    const/4 v11, 0x0

    invoke-direct {p0, v9, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 818
    :cond_d
    aget-object v11, v0, v9

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 823
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "C2: Single SIM + Data SIM: Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 824
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 825
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    goto/16 :goto_1

    .line 832
    :cond_e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "C3: Single SIM + Non Data SIM: Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 833
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 834
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 836
    :cond_f
    const/4 v11, 0x0

    invoke-direct {p0, v9, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 841
    :cond_10
    const/4 v11, 0x2

    if-lt v4, v11, :cond_1

    .line 842
    const/4 v11, 0x1

    if-ne v2, v11, :cond_1a

    .line 843
    const-string v11, "newSIMSlot"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 846
    .local v7, "newSimStatus":I
    const/4 v6, 0x1

    .line 847
    .local v6, "isAllNewSim":Z
    const/4 v3, 0x0

    :goto_5
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_12

    .line 848
    const/4 v11, 0x1

    shl-int/2addr v11, v3

    and-int/2addr v11, v7

    if-nez v11, :cond_11

    .line 849
    const/4 v6, 0x0

    .line 847
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 853
    :cond_12
    if-eqz v6, :cond_13

    .line 858
    const-string v11, "C4: Multi SIM + All New SIM: Set 34G to sub1"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 859
    const/4 v11, -0x1

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 860
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 861
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 952
    .end local v6    # "isAllNewSim":Z
    .end local v7    # "newSimStatus":I
    :goto_6
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp01CapSwitch()Z

    move-result v11

    if-nez v11, :cond_1

    .line 954
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    goto/16 :goto_1

    .line 863
    .restart local v6    # "isAllNewSim":Z
    .restart local v7    # "newSimStatus":I
    :cond_13
    if-eqz v1, :cond_14

    const-string v11, ""

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 869
    :cond_14
    const-string v11, "C6: Multi SIM + New SIM + Non Default SIM: No Change"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 870
    const/4 v11, -0x1

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 871
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 872
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_6

    .line 874
    :cond_15
    const/4 v3, 0x0

    :goto_7
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_16

    .line 875
    aget-object v11, v0, v3

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 876
    move v9, v3

    .line 881
    :cond_16
    const/4 v11, -0x1

    if-eq v9, v11, :cond_19

    .line 886
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "C5: Multi SIM + New SIM + Default SIM: Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 888
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 891
    const/4 v8, 0x0

    .line 892
    .local v8, "nonDefaultPhoneId":I
    if-nez v9, :cond_18

    .line 893
    const/4 v8, 0x1

    .line 897
    :goto_8
    const/4 v11, 0x0

    invoke-direct {p0, v8, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_6

    .line 874
    .end local v8    # "nonDefaultPhoneId":I
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 895
    .restart local v8    # "nonDefaultPhoneId":I
    :cond_18
    const/4 v8, 0x0

    goto :goto_8

    .line 903
    .end local v8    # "nonDefaultPhoneId":I
    :cond_19
    const-string v11, "C6: Multi SIM + New SIM + Non Default SIM: No Change"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 904
    const/4 v11, -0x1

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 905
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 906
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_6

    .line 911
    .end local v6    # "isAllNewSim":Z
    .end local v7    # "newSimStatus":I
    :cond_1a
    if-eqz v1, :cond_1b

    const-string v11, ""

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 917
    :cond_1b
    const-string v11, "C8: Do nothing"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 919
    :cond_1c
    const/4 v3, 0x0

    :goto_9
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_1d

    .line 920
    aget-object v11, v0, v3

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 921
    move v9, v3

    .line 925
    :cond_1d
    const/4 v11, -0x1

    if-eq v9, v11, :cond_20

    .line 930
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "C7: Multi SIM + All Old SIM + Default SIM: Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 932
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 935
    const/4 v8, 0x0

    .line 936
    .restart local v8    # "nonDefaultPhoneId":I
    if-nez v9, :cond_1f

    .line 937
    const/4 v8, 0x1

    .line 941
    :goto_a
    const/4 v11, 0x0

    invoke-direct {p0, v8, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_6

    .line 919
    .end local v8    # "nonDefaultPhoneId":I
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 939
    .restart local v8    # "nonDefaultPhoneId":I
    :cond_1f
    const/4 v8, 0x0

    goto :goto_a

    .line 948
    .end local v8    # "nonDefaultPhoneId":I
    :cond_20
    const-string v11, "C8: Do nothing"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method private subSelectorForOp02(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 667
    const/4 v6, -0x1

    .line 668
    .local v6, "phoneId":I
    const/4 v3, 0x0

    .line 669
    .local v3, "insertedSimCount":I
    const/4 v4, 0x0

    .line 670
    .local v4, "insertedStatus":I
    const-string v9, "simDetectStatus"

    invoke-virtual {p1, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 671
    .local v1, "detectedType":I
    iget v9, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v9, [Ljava/lang/String;

    .line 673
    .local v0, "currIccId":[Ljava/lang/String;
    const-string v9, "DataSubSelector for OP02"

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 675
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v9, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v9, :cond_4

    .line 676
    iget-object v9, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v2

    .line 677
    aget-object v9, v0, v2

    if-eqz v9, :cond_0

    const-string v9, ""

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 678
    :cond_0
    const-string v9, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 742
    :cond_1
    :goto_1
    return-void

    .line 681
    :cond_2
    const-string v9, "N/A"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 682
    add-int/lit8 v3, v3, 0x1

    .line 683
    shl-int v9, v11, v2

    or-int/2addr v4, v9

    .line 675
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 686
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Inserted SIM count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", insertedStatus: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 688
    const/4 v9, 0x4

    if-ne v1, v9, :cond_5

    .line 690
    const-string v9, "OP02 C0: Inserted status no change, do nothing"

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 691
    :cond_5
    if-nez v3, :cond_6

    .line 696
    const-string v9, "OP02 C1: No SIM inserted, set data unset"

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 697
    const/4 v9, -0x1

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    goto :goto_1

    .line 698
    :cond_6
    if-ne v3, v11, :cond_a

    .line 699
    const/4 v2, 0x0

    :goto_2
    iget v9, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v9, :cond_7

    .line 700
    shl-int v9, v11, v2

    and-int/2addr v9, v4

    if-eqz v9, :cond_8

    .line 701
    move v6, v2

    .line 709
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OP02 C2: Single SIM: Set Default data to phone:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 710
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 713
    const-string v7, "0"

    .line 714
    .local v7, "strEnabled":Ljava/lang/String;
    if-nez v6, :cond_9

    .line 715
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v9, "persist.radio.mobile.data"

    const-string v10, "0"

    invoke-static {v11, v9, v10}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 721
    :goto_3
    const-string v9, "0"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_1

    .line 722
    invoke-direct {p0, v6, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 699
    .end local v7    # "strEnabled":Ljava/lang/String;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 718
    .restart local v7    # "strEnabled":Ljava/lang/String;
    :cond_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v9, "persist.radio.mobile.data"

    const-string v10, "0"

    invoke-static {v12, v9, v10}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 724
    .end local v7    # "strEnabled":Ljava/lang/String;
    :cond_a
    const/4 v9, 0x2

    if-lt v3, v9, :cond_1

    .line 729
    const-string v9, "OP02 C3: Multi SIM: Set Default data to phone1"

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 730
    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 735
    invoke-static {v11}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    .line 736
    .local v5, "phone2SubId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    .line 737
    .local v8, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v8, :cond_b

    invoke-virtual {v8, v5}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 738
    invoke-direct {p0, v12, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 740
    :cond_b
    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1
.end method

.method private subSelectorForOp09(Landroid/content/Intent;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1116
    const/4 v11, -0x1

    .line 1117
    .local v11, "phoneId":I
    const/4 v5, 0x0

    .line 1118
    .local v5, "insertedSimCount":I
    const/4 v6, 0x0

    .line 1119
    .local v6, "insertedStatus":I
    const-string v13, "simDetectStatus"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1120
    .local v3, "detectedType":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v1, v13, [Ljava/lang/String;

    .line 1122
    .local v1, "currIccId":[Ljava/lang/String;
    const-string v13, "DataSubSelector for op09"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1124
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v13, :cond_4

    .line 1125
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v13, v13, v4

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v1, v4

    .line 1126
    aget-object v13, v1, v4

    if-eqz v13, :cond_0

    const-string v13, ""

    aget-object v14, v1, v4

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1127
    :cond_0
    const-string v13, "error: iccid not found, wait for next sub ready"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1295
    :cond_1
    :goto_1
    return-void

    .line 1130
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "currIccId["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v1, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1131
    const-string v13, "N/A"

    aget-object v14, v1, v4

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1132
    add-int/lit8 v5, v5, 0x1

    .line 1133
    const/4 v13, 0x1

    shl-int/2addr v13, v4

    or-int/2addr v6, v13

    .line 1124
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1136
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Inserted SIM count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", insertedStatus: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1139
    const-string v13, "persist.radio.data.iccid"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1140
    .local v2, "defaultIccid":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Default data Iccid = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1142
    if-nez v5, :cond_5

    .line 1147
    const-string v13, "OP09 C0: No SIM inserted, set data unset"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1148
    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1149
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v13, :cond_1

    .line 1150
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1149
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1152
    :cond_5
    const/4 v13, 0x1

    if-ne v5, v13, :cond_b

    .line 1153
    const/4 v4, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v13, :cond_6

    .line 1154
    const/4 v13, 0x1

    shl-int/2addr v13, v4

    and-int/2addr v13, v6

    if-eqz v13, :cond_7

    .line 1155
    move v11, v4

    .line 1160
    :cond_6
    const/4 v13, 0x4

    if-ne v3, v13, :cond_8

    .line 1161
    const-string v13, "OP09 C1: Single SIM unchange: do nothing"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1153
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1162
    :cond_8
    const/4 v13, 0x1

    if-ne v3, v13, :cond_9

    .line 1166
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OP09 C2: Single SIM + New SIM: Set Default data to phone:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1167
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1168
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 1173
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1175
    const-string v13, "OP09 C3: Single SIM + Old SIM: check data enable"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1179
    const-string v12, "0"

    .line 1180
    .local v12, "strEnabled":Ljava/lang/String;
    if-nez v11, :cond_a

    .line 1181
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const/4 v13, 0x1

    const-string v14, "persist.radio.mobile.data"

    const-string v15, "0"

    invoke-static {v13, v14, v15}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1187
    :goto_4
    const-string v13, "0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_1

    .line 1188
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 1184
    :cond_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const/4 v13, 0x0

    const-string v14, "persist.radio.mobile.data"

    const-string v15, "0"

    invoke-static {v13, v14, v15}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    .line 1191
    .end local v12    # "strEnabled":Ljava/lang/String;
    :cond_b
    const/4 v13, 0x2

    if-lt v5, v13, :cond_1

    .line 1192
    const/4 v13, 0x1

    if-ne v3, v13, :cond_16

    .line 1193
    const-string v13, "newSIMSlot"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1196
    .local v9, "newSimStatus":I
    const/4 v7, 0x1

    .line 1197
    .local v7, "isAllNewSim":Z
    const/4 v4, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v13, :cond_d

    .line 1198
    const/4 v13, 0x1

    shl-int/2addr v13, v4

    and-int/2addr v13, v9

    if-nez v13, :cond_c

    .line 1199
    const/4 v7, 0x0

    .line 1197
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1203
    :cond_d
    if-eqz v7, :cond_e

    .line 1208
    const-string v13, "C4: Multi SIM + All New SIM: Set 34G to sub1"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1209
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1210
    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 1213
    :cond_e
    if-eqz v2, :cond_f

    const-string v13, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 1218
    :cond_f
    const-string v13, "C6: Multi SIM + New SIM + Non Default SIM: No Change"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1219
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1221
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 1223
    :cond_10
    const/4 v4, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v13, :cond_11

    .line 1224
    aget-object v13, v1, v4

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 1225
    move v11, v4

    .line 1230
    :cond_11
    const/4 v13, -0x1

    if-eq v11, v13, :cond_14

    .line 1234
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "C5: Multi SIM + New SIM + Default SIM: Set Default data to phone:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1238
    const/4 v10, 0x0

    .line 1239
    .local v10, "nonDefaultPhoneId":I
    if-nez v11, :cond_13

    .line 1240
    const/4 v10, 0x1

    .line 1244
    :goto_7
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 1223
    .end local v10    # "nonDefaultPhoneId":I
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1242
    .restart local v10    # "nonDefaultPhoneId":I
    :cond_13
    const/4 v10, 0x0

    goto :goto_7

    .line 1249
    .end local v10    # "nonDefaultPhoneId":I
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getLastDataEnabled()I

    move-result v8

    .line 1250
    .local v8, "isLastDataEnabled":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "C9: Multi SIM + New SIM + isLastDataEnabled = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1252
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1253
    const/4 v14, 0x0

    if-nez v8, :cond_15

    const/4 v13, 0x0

    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1256
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 1253
    :cond_15
    const/4 v13, 0x1

    goto :goto_8

    .line 1261
    .end local v7    # "isAllNewSim":Z
    .end local v8    # "isLastDataEnabled":I
    .end local v9    # "newSimStatus":I
    :cond_16
    if-eqz v2, :cond_17

    const-string v13, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 1264
    :cond_17
    const-string v13, "C8: Do nothing"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1266
    :cond_18
    const/4 v4, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v13, :cond_19

    .line 1267
    aget-object v13, v1, v4

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 1268
    move v11, v4

    .line 1272
    :cond_19
    const/4 v13, -0x1

    if-eq v11, v13, :cond_1c

    .line 1276
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "C7: Multi SIM + All Old SIM + Default SIM: Set Default data to phone:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1280
    const/4 v10, 0x0

    .line 1281
    .restart local v10    # "nonDefaultPhoneId":I
    if-nez v11, :cond_1b

    .line 1282
    const/4 v10, 0x1

    .line 1286
    :goto_a
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 1266
    .end local v10    # "nonDefaultPhoneId":I
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1284
    .restart local v10    # "nonDefaultPhoneId":I
    :cond_1b
    const/4 v10, 0x0

    goto :goto_a

    .line 1290
    .end local v10    # "nonDefaultPhoneId":I
    :cond_1c
    const-string v13, "C8: Do nothing"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private subSelectorForOp09C(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1553
    const/4 v9, -0x1

    .line 1554
    .local v9, "phoneId":I
    const/4 v4, 0x0

    .line 1555
    .local v4, "insertedSimCount":I
    const/4 v5, 0x0

    .line 1556
    .local v5, "insertedStatus":I
    const-string v11, "simDetectStatus"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1557
    .local v2, "detectedType":I
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v11, [Ljava/lang/String;

    .line 1559
    .local v0, "currIccId":[Ljava/lang/String;
    const-string v11, "DataSubSelector for op09 C"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1561
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_3

    .line 1562
    iget-object v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v3

    .line 1563
    aget-object v11, v0, v3

    if-eqz v11, :cond_0

    const-string v11, ""

    aget-object v12, v0, v3

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1564
    :cond_0
    const-string v11, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1701
    :goto_1
    return-void

    .line 1567
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "currIccId["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v0, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1568
    const-string v11, "N/A"

    aget-object v12, v0, v3

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1569
    add-int/lit8 v4, v4, 0x1

    .line 1570
    const/4 v11, 0x1

    shl-int/2addr v11, v3

    or-int/2addr v5, v11

    .line 1561
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1573
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Inserted SIM count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", insertedStatus: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1576
    const-string v11, "persist.radio.data.iccid"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1577
    .local v1, "defaultIccid":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Default data Iccid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1579
    if-nez v4, :cond_5

    .line 1580
    const-string v11, "OP09 C0: No SIM inserted, do nothing."

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1700
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->updateDataEnableProperty()V

    goto :goto_1

    .line 1581
    :cond_5
    const/4 v11, 0x1

    if-ne v4, v11, :cond_b

    .line 1582
    const/4 v3, 0x0

    :goto_3
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_6

    .line 1583
    const/4 v11, 0x1

    shl-int/2addr v11, v3

    and-int/2addr v11, v5

    if-eqz v11, :cond_7

    .line 1584
    move v9, v3

    .line 1589
    :cond_6
    const/4 v11, 0x4

    if-ne v2, v11, :cond_8

    .line 1590
    const-string v11, "OP09 C1: Single SIM unchange: do nothing"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1582
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1591
    :cond_8
    const/4 v11, 0x1

    if-ne v2, v11, :cond_9

    .line 1595
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OP09 C2: Single SIM + New SIM: Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1596
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1597
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1599
    const/4 v11, 0x1

    invoke-direct {p0, v9, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_2

    .line 1604
    :cond_9
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1605
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1606
    const-string v11, "OP09 C3: Single SIM + Old SIM: set as default data."

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1609
    const-string v10, "0"

    .line 1610
    .local v10, "strEnabled":Ljava/lang/String;
    if-nez v9, :cond_a

    .line 1611
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const/4 v11, 0x1

    const-string v12, "persist.radio.mobile.data"

    const-string v13, "0"

    invoke-static {v11, v12, v13}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1617
    :goto_4
    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    .line 1618
    const/4 v11, 0x1

    invoke-direct {p0, v9, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_2

    .line 1614
    :cond_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const/4 v11, 0x0

    const-string v12, "persist.radio.mobile.data"

    const-string v13, "0"

    invoke-static {v11, v12, v13}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 1621
    .end local v10    # "strEnabled":Ljava/lang/String;
    :cond_b
    const/4 v11, 0x2

    if-lt v4, v11, :cond_4

    .line 1622
    const/4 v11, 0x1

    if-ne v2, v11, :cond_15

    .line 1623
    const-string v11, "newSIMSlot"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1626
    .local v7, "newSimStatus":I
    const/4 v6, 0x1

    .line 1627
    .local v6, "isAllNewSim":Z
    const/4 v3, 0x0

    :goto_5
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_d

    .line 1628
    const/4 v11, 0x1

    shl-int/2addr v11, v3

    and-int/2addr v11, v7

    if-nez v11, :cond_c

    .line 1629
    const/4 v6, 0x0

    .line 1627
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1633
    :cond_d
    if-eqz v6, :cond_e

    .line 1638
    const-string v11, "C4: Multi SIM + All New SIM: Set 34G to sub1"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1639
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1640
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1642
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1643
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_2

    .line 1645
    :cond_e
    if-eqz v1, :cond_f

    const-string v11, ""

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 1650
    :cond_f
    const-string v11, "C6: Multi SIM + New SIM + Non Default SIM: No Change"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1651
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1652
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1654
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1655
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_2

    .line 1657
    :cond_10
    const/4 v3, 0x0

    :goto_6
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_11

    .line 1658
    aget-object v11, v0, v3

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 1659
    move v9, v3

    .line 1664
    :cond_11
    const/4 v11, -0x1

    if-eq v9, v11, :cond_14

    .line 1668
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "C5: Multi SIM + New SIM + Default SIM: Keep Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1671
    const/4 v8, 0x0

    .line 1672
    .local v8, "nonDefaultPhoneId":I
    if-nez v9, :cond_13

    .line 1673
    const/4 v8, 0x1

    .line 1677
    :goto_7
    const/4 v11, 0x0

    invoke-direct {p0, v8, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_2

    .line 1657
    .end local v8    # "nonDefaultPhoneId":I
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1675
    .restart local v8    # "nonDefaultPhoneId":I
    :cond_13
    const/4 v8, 0x0

    goto :goto_7

    .line 1682
    .end local v8    # "nonDefaultPhoneId":I
    :cond_14
    const-string v11, "C7: Multi SIM + New SIM + Non Default SIM: set to sim1."

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1683
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1684
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1686
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1687
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_2

    .line 1695
    .end local v6    # "isAllNewSim":Z
    .end local v7    # "newSimStatus":I
    :cond_15
    const-string v11, "C8: Multi SIM + All Old SIM :set as previous default data"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    .line 1696
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOm(Landroid/content/Intent;)V

    goto/16 :goto_2
.end method

.method private subSelectorForSolution15(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 252
    const-string v5, "DataSubSelector for C2K om solution 1.5: capability maybe diff with default data"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 255
    const/4 v4, -0x1

    .line 256
    .local v4, "phoneId":I
    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v1, v5, [Ljava/lang/String;

    .line 260
    .local v1, "currIccId":[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-nez v5, :cond_0

    .line 261
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->turnOffNewSimData(Landroid/content/Intent;)V

    .line 265
    :cond_0
    const-string v5, "persist.radio.simswitch.iccid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "capabilityIccid":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "capability Iccid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 267
    const-string v5, "persist.radio.data.iccid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "defaultIccid":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default data Iccid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 269
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v5, :cond_4

    .line 270
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 271
    aget-object v5, v1, v3

    if-eqz v5, :cond_1

    const-string v5, ""

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "N/A"

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 272
    :cond_1
    const-string v5, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 293
    :cond_2
    :goto_1
    return-void

    .line 276
    :cond_3
    aget-object v5, v1, v3

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isRuimCsim(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 278
    move v4, v3

    .line 288
    :cond_4
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "capability  phoneid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 289
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 291
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_1

    .line 282
    :cond_5
    aget-object v5, v1, v3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 283
    move v4, v3

    .line 284
    goto :goto_2

    .line 269
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private subSelectorForSvlte(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1358
    const-string v2, "ro.mtk.c2k.slot2.support"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1360
    .local v0, "c2kP2":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subSelectorForSvlte,c2kP2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1362
    const-string v2, "OP09"

    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1363
    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSimContainsCdmaApp(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1364
    const-string v2, "CDMA sim is inserted in slot1, always set to SIM1"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1365
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1400
    :goto_0
    return-void

    .line 1368
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1372
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    new-array v1, v2, [I

    .line 1373
    .local v1, "cardType":[I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v1

    .line 1374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "card type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1375
    aget v2, v1, v4

    if-nez v2, :cond_1

    .line 1376
    const-string v2, "SIM 1 is empty, don\'t change capability"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1378
    :cond_1
    const-string v2, "SIM 1 is inserted, change capability"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1379
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_0

    .line 1383
    .end local v1    # "cardType":[I
    :cond_2
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOm(Landroid/content/Intent;)V

    goto :goto_0

    .line 1389
    :cond_3
    if-nez v0, :cond_4

    .line 1390
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->clearDefaultsForInactiveSubIds()V

    .line 1391
    const-string v2, "clear invalid sub id record."

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1394
    :cond_4
    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkCdmaCardInsert()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1395
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForSolution15(Landroid/content/Intent;)V

    goto :goto_0

    .line 1397
    :cond_5
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOm(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private turnOffNewSimData(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1425
    const-string v3, "simDetectStatus"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1426
    .local v0, "detectedType":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turnOffNewSimData detectedType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1429
    if-ne v0, v6, :cond_1

    .line 1430
    const-string v3, "newSIMSlot"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1433
    .local v2, "newSimStatus":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newSimStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1435
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v1, v3, :cond_1

    .line 1436
    shl-int v3, v6, v1

    and-int/2addr v3, v2

    if-eqz v3, :cond_0

    .line 1437
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detect NEW SIM, turn off phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1438
    invoke-direct {p0, v1, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1435
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1442
    .end local v1    # "i":I
    .end local v2    # "newSimStatus":I
    :cond_1
    return-void
.end method

.method private updateDataEnableProperty()V
    .locals 7

    .prologue
    .line 1327
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 1328
    .local v4, "telephony":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 1329
    .local v0, "dataEnabled":Z
    const-string v1, "0"

    .line 1330
    .local v1, "dataOnIccid":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1332
    .local v3, "subId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v5, :cond_3

    .line 1334
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 1335
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1336
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvlteSubIdBySubId(I)I

    move-result v3

    .line 1339
    :cond_0
    if-eqz v4, :cond_1

    .line 1340
    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    .line 1344
    :cond_1
    if-eqz v0, :cond_2

    .line 1345
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1351
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setUserDataProperty:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1352
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v5, "persist.radio.mobile.data"

    invoke-static {v2, v5, v1}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1332
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1347
    :cond_2
    const-string v1, "0"

    goto :goto_1

    .line 1355
    :cond_3
    return-void
.end method


# virtual methods
.method public getChinaMobileCardSlot([Ljava/lang/String;)I
    .locals 6
    .param p1, "currIccId"    # [Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1769
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isUsimCard(I)Z

    move-result v0

    .line 1770
    .local v0, "slot1IsUsim":Z
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isUsimCard(I)Z

    move-result v1

    .line 1771
    .local v1, "slot2IsUsim":Z
    invoke-direct {p0, v2, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getOperatorForSlotId(I[Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    if-eqz v0, :cond_1

    .line 1788
    :cond_0
    :goto_0
    return v2

    .line 1773
    :cond_1
    invoke-direct {p0, v3, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getOperatorForSlotId(I[Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    if-eqz v1, :cond_2

    move v2, v3

    .line 1774
    goto :goto_0

    .line 1775
    :cond_2
    invoke-direct {p0, v2, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getOperatorForSlotId(I[Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    if-eqz v0, :cond_0

    .line 1777
    :cond_3
    invoke-direct {p0, v3, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getOperatorForSlotId(I[Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    if-nez v1, :cond_4

    move v2, v3

    .line 1778
    goto :goto_0

    .line 1779
    :cond_4
    invoke-direct {p0, v2, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getOperatorForSlotId(I[Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_5

    if-nez v0, :cond_0

    .line 1781
    :cond_5
    invoke-direct {p0, v3, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getOperatorForSlotId(I[Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_6

    if-eqz v1, :cond_6

    move v2, v3

    .line 1782
    goto :goto_0

    .line 1783
    :cond_6
    invoke-direct {p0, v2, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getOperatorForSlotId(I[Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_7

    if-eqz v0, :cond_0

    .line 1785
    :cond_7
    invoke-direct {p0, v3, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getOperatorForSlotId(I[Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_8

    if-nez v1, :cond_8

    move v2, v3

    .line 1786
    goto :goto_0

    :cond_8
    move v2, v4

    .line 1788
    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->logd(Ljava/lang/String;)V

    .line 241
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Un-handled message ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    .line 249
    :goto_0
    return-void

    .line 243
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch
.end method
