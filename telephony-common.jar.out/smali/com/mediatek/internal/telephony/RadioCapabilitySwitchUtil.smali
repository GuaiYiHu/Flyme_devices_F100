.class public Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;
.super Ljava/lang/Object;
.source "RadioCapabilitySwitchUtil.java"


# static fields
.field public static final CN_MCC:Ljava/lang/String; = "460"

.field public static final DO_SWITCH:I = 0x0

.field public static final ICCID_ERROR:I = 0x3

.field public static final IMSI_NOT_READY_OR_SIM_LOCKED:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final MAIN_SIM_PROP:Ljava/lang/String; = "persist.radio.simswitch.iccid"

.field public static final NOT_SHOW_DIALOG:I = 0x1

.field public static final NOT_SWITCH:I = 0x1

.field public static final NOT_SWITCH_SIM_INFO_NOT_READY:I = 0x2

.field private static final NO_SIM_VALUE:Ljava/lang/String; = "N/A"

.field public static final OP01_6M_PRIORITY_OP01_SIM:I = 0x1

.field public static final OP01_6M_PRIORITY_OP01_USIM:I = 0x0

.field public static final OP01_6M_PRIORITY_OTHER:I = 0x2

.field private static final PLMN_TABLE_OP02:[Ljava/lang/String;

.field private static final PLMN_TABLE_OP09:[Ljava/lang/String;

.field private static final PLMN_TABLE_OP18:[Ljava/lang/String;

.field private static final PLMN_TABLE_TYPE1:[Ljava/lang/String;

.field private static final PROPERTY_ICCID:Ljava/lang/String; = "ril.iccid.sim"

.field private static final PROPERTY_SIM_ICCID:[Ljava/lang/String;

.field public static final SHOW_DIALOG:I = 0x0

.field public static final SIM_OP_INFO_OP01:I = 0x2

.field public static final SIM_OP_INFO_OP02:I = 0x3

.field public static final SIM_OP_INFO_OP09:I = 0x4

.field public static final SIM_OP_INFO_OP18:I = 0x5

.field public static final SIM_OP_INFO_OVERSEA:I = 0x1

.field public static final SIM_OP_INFO_UNKNOWN:I = 0x0

.field public static final SIM_SWITCH_MODE_DUAL_TALK:I = 0x3

.field public static final SIM_SWITCH_MODE_DUAL_TALK_SWAP:I = 0x4

.field public static final SIM_SWITCH_MODE_SINGLE_TALK_MDSYS:I = 0x1

.field public static final SIM_SWITCH_MODE_SINGLE_TALK_MDSYS_LITE:I = 0x2

.field public static final SIM_TYPE_OTHER:I = 0x2

.field public static final SIM_TYPE_SIM:I = 0x0

.field public static final SIM_TYPE_USIM:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "46000"

    aput-object v1, v0, v3

    const-string v1, "46002"

    aput-object v1, v0, v4

    const-string v1, "46007"

    aput-object v1, v0, v5

    const-string v1, "46008"

    aput-object v1, v0, v6

    const-string v1, "45412"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "45413"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "00101"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "00211"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "00321"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "00431"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "00541"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "00651"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "00761"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "00871"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "00902"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "01012"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "01122"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "01232"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "46004"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "46602"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "50270"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "46003"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    .line 102
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "46001"

    aput-object v1, v0, v3

    const-string v1, "46006"

    aput-object v1, v0, v4

    const-string v1, "46009"

    aput-object v1, v0, v5

    const-string v1, "45407"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP02:[Ljava/lang/String;

    .line 107
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "46005"

    aput-object v1, v0, v3

    const-string v1, "45502"

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP09:[Ljava/lang/String;

    .line 112
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "405840"

    aput-object v1, v0, v3

    const-string v1, "405854"

    aput-object v1, v0, v4

    const-string v1, "405855"

    aput-object v1, v0, v5

    const-string v1, "405856"

    aput-object v1, v0, v6

    const-string v1, "405857"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "405858"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "405855"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "405856"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "405857"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "405858"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "405859"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "405860"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "405861"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "405862"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "405863"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "405864"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "405865"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "405866"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "405867"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "405868"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "405869"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "405870"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "405871"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "405872"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "405873"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "405874"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP18:[Ljava/lang/String;

    .line 124
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "ril.iccid.sim1"

    aput-object v1, v0, v3

    const-string v1, "ril.iccid.sim2"

    aput-object v1, v0, v4

    const-string v1, "ril.iccid.sim3"

    aput-object v1, v0, v5

    const-string v1, "ril.iccid.sim4"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOp01(I[I[I)Z
    .locals 11
    .param p0, "targetPhoneId"    # I
    .param p1, "simOpInfo"    # [I
    .param p2, "simType"    # [I

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 415
    const-string v8, "persist.radio.simswitch"

    const-string v9, "1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .line 418
    .local v1, "curPhoneId":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkOp01 : curPhoneId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 419
    aget v8, p1, p0

    if-ne v8, v10, :cond_2

    .line 420
    aget v8, p2, p0

    if-nez v8, :cond_1

    .line 421
    aget v8, p1, v1

    if-ne v8, v10, :cond_0

    aget v8, p2, v1

    if-eqz v8, :cond_0

    .line 423
    const-string v7, "checkOp01 : case 1,2; stay in current phone"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 482
    :goto_0
    return v6

    .line 428
    :cond_0
    const-string v6, "checkOp01 : case 3,4"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    move v6, v7

    .line 429
    goto :goto_0

    .line 434
    :cond_1
    const-string v6, "checkOp01 : case 1,2"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    move v6, v7

    .line 435
    goto :goto_0

    .line 437
    :cond_2
    aget v8, p1, p0

    if-ne v8, v7, :cond_6

    .line 438
    aget v8, p1, v1

    if-ne v8, v10, :cond_3

    .line 439
    const-string v7, "checkOp01 : case 1,2,3,4; stay in current phone"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 441
    :cond_3
    aget v8, p2, p0

    if-nez v8, :cond_5

    .line 442
    aget v8, p1, v1

    if-ne v8, v7, :cond_4

    aget v8, p2, v1

    if-eqz v8, :cond_4

    .line 444
    const-string v7, "checkOp01 : case 5,6; stay in current phone"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_4
    const-string v6, "checkOp01 : case 7,8"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    move v6, v7

    .line 450
    goto :goto_0

    .line 455
    :cond_5
    const-string v6, "checkOp01 : case 5,6"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    move v6, v7

    .line 456
    goto :goto_0

    .line 459
    :cond_6
    aget v8, p1, p0

    if-nez v8, :cond_9

    .line 460
    const-string v8, "checkOp01 : case 10, target IMSI not ready"

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 461
    const/4 v4, 0x0

    .line 462
    .local v4, "insertedStatus":I
    array-length v5, p1

    .line 463
    .local v5, "phoneNum":I
    const-string v0, "N/A"

    .line 464
    .local v0, "NO_SIM_VALUE":Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    .line 465
    .local v2, "currIccId":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_8

    .line 466
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ril.iccid.sim"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    .line 467
    aget-object v8, v2, v3

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 468
    shl-int v8, v7, v3

    or-int/2addr v4, v8

    .line 465
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 471
    :cond_8
    if-gt v4, v10, :cond_9

    .line 472
    const-string v6, "checkOp01 : case 10, single SIM case, switch!"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    move v6, v7

    .line 473
    goto :goto_0

    .line 476
    .end local v0    # "NO_SIM_VALUE":Ljava/lang/String;
    .end local v2    # "currIccId":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "insertedStatus":I
    .end local v5    # "phoneNum":I
    :cond_9
    const-string v8, "ro.mtk_world_phone_policy"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 477
    const-string v6, "checkOp01 : case 11, op01-B, switch it!"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    move v6, v7

    .line 478
    goto/16 :goto_0

    .line 481
    :cond_a
    const-string v7, "checkOp01 : case 9"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static checkOp01LC(I[I[I)Z
    .locals 12
    .param p0, "targetPhoneId"    # I
    .param p1, "simOpInfo"    # [I
    .param p2, "simType"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 487
    const-string v9, "persist.radio.simswitch"

    const-string v10, "1"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .line 489
    .local v0, "curPhoneId":I
    const/4 v3, 0x0

    .line 490
    .local v3, "insertedSimCount":I
    const/4 v4, 0x0

    .line 491
    .local v4, "insertedStatus":I
    array-length v5, p1

    .line 492
    .local v5, "phoneNum":I
    new-array v1, v5, [Ljava/lang/String;

    .line 493
    .local v1, "currIccId":[Ljava/lang/String;
    new-array v6, v5, [I

    .line 494
    .local v6, "priority":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_4

    .line 495
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ril.iccid.sim"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v2

    .line 496
    const-string v9, "N/A"

    aget-object v10, v1, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 497
    add-int/lit8 v3, v3, 0x1

    .line 498
    shl-int v9, v7, v2

    or-int/2addr v4, v9

    .line 500
    :cond_0
    aget v9, p1, v2

    if-ne v9, v11, :cond_3

    .line 501
    aget v9, p2, v2

    if-ne v9, v7, :cond_2

    .line 502
    aput v8, v6, v2

    .line 494
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 503
    :cond_2
    aget v9, p2, v2

    if-nez v9, :cond_1

    .line 504
    aput v7, v6, v2

    goto :goto_1

    .line 507
    :cond_3
    aput v11, v6, v2

    goto :goto_1

    .line 511
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkOp01LC(curPhoneId): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 512
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkOp01LC(insertedSimCount): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 513
    if-ne v3, v7, :cond_5

    .line 514
    const-string v8, "checkOp01LC : single SIM case, switch!"

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 522
    :goto_2
    return v7

    .line 517
    :cond_5
    aget v9, v6, p0

    aget v10, v6, v0

    if-gt v9, v10, :cond_6

    .line 518
    const-string v8, "checkOp01LC : target priority greater than or equal to current, switch!"

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 521
    :cond_6
    const-string v7, "checkOp01LC : target priority lower than current; stay in current phone"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    move v7, v8

    .line 522
    goto :goto_2
.end method

.method public static getHigherPrioritySimForOp01(I[Z[Z[Z[Z)I
    .locals 6
    .param p0, "curId"    # I
    .param p1, "op01Usim"    # [Z
    .param p2, "op01Sim"    # [Z
    .param p3, "overseaUsim"    # [Z
    .param p4, "overseaSim"    # [Z

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 341
    const/4 v2, -0x1

    .line 342
    .local v2, "targetSim":I
    array-length v1, p1

    .line 344
    .local v1, "phoneNum":I
    aget-boolean v3, p1, p0

    if-ne v3, v4, :cond_0

    .line 376
    .end local p0    # "curId":I
    :goto_0
    return p0

    .line 347
    .restart local p0    # "curId":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 348
    aget-boolean v3, p1, v0

    if-ne v3, v4, :cond_1

    .line 349
    move v2, v0

    .line 347
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 352
    :cond_2
    if-ne v2, v5, :cond_3

    aget-boolean v3, p2, p0

    if-ne v3, v4, :cond_4

    :cond_3
    move p0, v2

    .line 353
    goto :goto_0

    .line 355
    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_6

    .line 356
    aget-boolean v3, p2, v0

    if-ne v3, v4, :cond_5

    .line 357
    move v2, v0

    .line 355
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 360
    :cond_6
    if-ne v2, v5, :cond_7

    aget-boolean v3, p3, p0

    if-ne v3, v4, :cond_8

    :cond_7
    move p0, v2

    .line 361
    goto :goto_0

    .line 363
    :cond_8
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_a

    .line 364
    aget-boolean v3, p3, v0

    if-ne v3, v4, :cond_9

    .line 365
    move v2, v0

    .line 363
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 368
    :cond_a
    if-ne v2, v5, :cond_b

    aget-boolean v3, p4, p0

    if-ne v3, v4, :cond_c

    :cond_b
    move p0, v2

    .line 369
    goto :goto_0

    .line 371
    :cond_c
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_e

    .line 372
    aget-boolean v3, p4, v0

    if-ne v3, v4, :cond_d

    .line 373
    move v2, v0

    .line 371
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    move p0, v2

    .line 376
    goto :goto_0
.end method

.method public static getHighestPriorityPhone(I[I)I
    .locals 9
    .param p0, "capPhoneId"    # I
    .param p1, "priority"    # [I

    .prologue
    const/4 v5, -0x1

    const/4 v8, 0x1

    .line 387
    const/4 v4, 0x0

    .line 388
    .local v4, "targetPhone":I
    array-length v3, p1

    .line 389
    .local v3, "phoneNum":I
    const/4 v1, 0x0

    .line 390
    .local v1, "highestPriorityCount":I
    const/4 v0, 0x0

    .line 392
    .local v0, "highestPriorityBitMap":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 393
    aget v6, p1, v2

    aget v7, p1, v4

    if-ge v6, v7, :cond_1

    .line 394
    move v4, v2

    .line 395
    const/4 v1, 0x1

    .line 396
    shl-int v0, v8, v2

    .line 392
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    :cond_1
    aget v6, p1, v2

    aget v7, p1, v4

    if-ne v6, v7, :cond_0

    .line 398
    add-int/lit8 v1, v1, 0x1

    .line 399
    shl-int v6, v8, v2

    or-int/2addr v0, v6

    goto :goto_1

    .line 402
    :cond_2
    if-ne v1, v8, :cond_3

    .line 411
    .end local v4    # "targetPhone":I
    :goto_2
    return v4

    .line 404
    .restart local v4    # "targetPhone":I
    :cond_3
    if-ne p0, v5, :cond_4

    move v4, v5

    .line 407
    goto :goto_2

    .line 408
    :cond_4
    shl-int v6, v8, p0

    and-int/2addr v6, v0

    if-eqz v6, :cond_5

    move v4, p0

    .line 409
    goto :goto_2

    :cond_5
    move v4, v5

    .line 411
    goto :goto_2
.end method

.method public static getMainCapabilityPhoneId()I
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 531
    const/4 v0, 0x0

    .line 532
    .local v0, "phoneId":I
    const-string v2, "ro.mtk_dt_support"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v4, :cond_4

    .line 533
    const-string v2, "persist.ril.simswitch.swapmode"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 534
    .local v1, "swapMode":I
    if-ne v1, v5, :cond_3

    .line 535
    const/4 v0, 0x0

    .line 542
    .end local v1    # "swapMode":I
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 543
    if-nez v0, :cond_1

    .line 544
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CDMA"

    if-ne v2, v3, :cond_1

    .line 546
    const/16 v0, 0xa

    .line 549
    :cond_1
    if-ne v0, v4, :cond_2

    .line 550
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CDMA"

    if-ne v2, v3, :cond_2

    .line 552
    const/16 v0, 0xb

    .line 556
    :cond_2
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RadioCapSwitchUtil] getMainCapabilityPhoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    return v0

    .line 536
    .restart local v1    # "swapMode":I
    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 537
    const/4 v0, 0x1

    goto :goto_0

    .line 540
    .end local v1    # "swapMode":I
    :cond_4
    const-string v2, "persist.radio.simswitch"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method

.method public static getSimInfo([I[II)Z
    .locals 11
    .param p0, "simOpInfo"    # [I
    .param p1, "simType"    # [I
    .param p2, "insertedStatus"    # I

    .prologue
    .line 172
    array-length v8, p0

    new-array v6, v8, [Ljava/lang/String;

    .line 173
    .local v6, "strMnc":[Ljava/lang/String;
    array-length v8, p0

    new-array v7, v8, [Ljava/lang/String;

    .line 176
    .local v7, "strSimType":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, p0

    if-ge v1, v8, :cond_12

    .line 177
    if-nez v1, :cond_2

    .line 178
    const-string v5, "gsm.ril.uicctype"

    .line 182
    .local v5, "propStr":Ljava/lang/String;
    :goto_1
    const-string v8, ""

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    .line 183
    aget-object v8, v7, v1

    const-string v9, "SIM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 184
    const/4 v8, 0x0

    aput v8, p1, v1

    .line 190
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SimType["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v7, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", simType["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, p1, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 191
    const-string v8, "gsm.sim.operator.imsi"

    const-string v9, ""

    invoke-static {v1, v8, v9}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v1

    .line 192
    aget-object v8, v6, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x6

    if-lt v8, v9, :cond_5

    .line 193
    aget-object v8, v6, v1

    const/4 v9, 0x0

    const/4 v10, 0x6

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v1

    .line 197
    :cond_0
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "strMnc["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] from gsm.sim.operator.imsi:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 198
    aget-object v8, v6, v1

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 199
    if-nez v1, :cond_6

    .line 200
    const-string v5, "gsm.sim.ril.mcc.mnc"

    .line 204
    :goto_4
    const-string v8, ""

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v1

    .line 205
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "strMnc["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] from ril.mcc.mnc:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 207
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertedStatus:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 208
    if-ltz p2, :cond_8

    const/4 v8, 0x1

    shl-int/2addr v8, v1

    and-int/2addr v8, p2

    if-lez v8, :cond_8

    .line 209
    aget-object v8, v6, v1

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 210
    const-string v8, "SIM is inserted but no imsi"

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 211
    const/4 v8, 0x0

    .line 259
    .end local v5    # "propStr":Ljava/lang/String;
    :goto_5
    return v8

    .line 180
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gsm.ril.uicctype."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "propStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 185
    :cond_3
    aget-object v8, v7, v1

    const-string v9, "USIM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 186
    const/4 v8, 0x1

    aput v8, p1, v1

    goto/16 :goto_2

    .line 188
    :cond_4
    const/4 v8, 0x2

    aput v8, p1, v1

    goto/16 :goto_2

    .line 194
    :cond_5
    aget-object v8, v6, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x5

    if-lt v8, v9, :cond_0

    .line 195
    aget-object v8, v6, v1

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v1

    goto/16 :goto_3

    .line 202
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 213
    :cond_7
    aget-object v8, v6, v1

    const-string v9, "sim_lock"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 214
    const-string v8, "SIM is lock, wait pin unlock"

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 215
    const/4 v8, 0x0

    goto :goto_5

    .line 218
    :cond_8
    sget-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_6
    if-ge v2, v3, :cond_9

    aget-object v4, v0, v2

    .line 219
    .local v4, "mccmnc":Ljava/lang/String;
    aget-object v8, v6, v1

    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 220
    const/4 v8, 0x2

    aput v8, p0, v1

    .line 224
    .end local v4    # "mccmnc":Ljava/lang/String;
    :cond_9
    const-string v8, "ro.operator.optr"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "OP18"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 225
    aget v8, p0, v1

    if-nez v8, :cond_a

    .line 226
    sget-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP18:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_a

    aget-object v4, v0, v2

    .line 227
    .restart local v4    # "mccmnc":Ljava/lang/String;
    aget-object v8, v6, v1

    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 228
    const/4 v8, 0x5

    aput v8, p0, v1

    .line 234
    .end local v4    # "mccmnc":Ljava/lang/String;
    :cond_a
    aget v8, p0, v1

    if-nez v8, :cond_b

    .line 235
    sget-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP02:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v3, :cond_b

    aget-object v4, v0, v2

    .line 236
    .restart local v4    # "mccmnc":Ljava/lang/String;
    aget-object v8, v6, v1

    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 237
    const/4 v8, 0x3

    aput v8, p0, v1

    .line 242
    .end local v4    # "mccmnc":Ljava/lang/String;
    :cond_b
    aget v8, p0, v1

    if-nez v8, :cond_c

    .line 243
    sget-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP09:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v3, :cond_c

    aget-object v4, v0, v2

    .line 244
    .restart local v4    # "mccmnc":Ljava/lang/String;
    aget-object v8, v6, v1

    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 245
    const/4 v8, 0x4

    aput v8, p0, v1

    .line 250
    .end local v4    # "mccmnc":Ljava/lang/String;
    :cond_c
    aget v8, p0, v1

    if-nez v8, :cond_d

    .line 251
    aget-object v8, v6, v1

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 252
    const/4 v8, 0x1

    aput v8, p0, v1

    .line 255
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "strMnc["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", simOpInfo["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, p0, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 218
    .restart local v4    # "mccmnc":Ljava/lang/String;
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 226
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 235
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 243
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 257
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "mccmnc":Ljava/lang/String;
    .end local v5    # "propStr":Ljava/lang/String;
    :cond_12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSimInfo(simOpInfo): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 258
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSimInfo(simType): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 259
    const/4 v8, 0x1

    goto/16 :goto_5
.end method

.method public static isAnySimLocked(I)Z
    .locals 9
    .param p0, "phoneNum"    # I

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v4, 0x0

    .line 678
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 679
    const-string v5, "isAnySimLocked always returns false in C2K"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 710
    :cond_0
    :goto_0
    return v4

    .line 684
    :cond_1
    new-array v2, p0, [Ljava/lang/String;

    .line 685
    .local v2, "mnc":[Ljava/lang/String;
    new-array v1, p0, [Ljava/lang/String;

    .line 687
    .local v1, "iccid":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_0

    .line 688
    const-string v5, "gsm.sim.operator.imsi"

    const-string v6, ""

    invoke-static {v0, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 689
    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v8, :cond_2

    .line 690
    aget-object v5, v2, v0

    invoke-virtual {v5, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 691
    :cond_2
    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v7, :cond_3

    .line 692
    aget-object v5, v2, v0

    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 694
    :cond_3
    aget-object v5, v2, v0

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 695
    if-nez v0, :cond_6

    .line 696
    const-string v3, "gsm.sim.ril.mcc.mnc"

    .line 700
    .local v3, "propStr":Ljava/lang/String;
    :goto_2
    const-string v5, ""

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 701
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mnc["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] from ril.mcc.mnc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 703
    .end local v3    # "propStr":Ljava/lang/String;
    :cond_4
    sget-object v5, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    .line 704
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from gsm.sim.operator.imsi:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,iccid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 705
    aget-object v5, v1, v0

    const-string v6, "N/A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    aget-object v5, v2, v0

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    aget-object v5, v2, v0

    const-string v6, "sim_lock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 707
    :cond_5
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 698
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propStr":Ljava/lang/String;
    goto/16 :goto_2

    .line 687
    .end local v3    # "propStr":Ljava/lang/String;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public static isNeedShowSimDialog()I
    .locals 14

    .prologue
    .line 586
    const-string v12, "ro.mtk_disable_cap_switch"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 587
    const-string v12, "mtk_disable_cap_switch is true"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 588
    const/4 v12, 0x0

    .line 674
    .local v0, "currIccId":[Ljava/lang/String;
    .local v1, "i":I
    .local v2, "insertedSimCount":I
    .local v3, "insertedStatus":I
    .local v4, "op02CardCount":I
    .local v5, "op02IndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v6, "otherIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v7, "phoneCount":I
    .local v8, "simIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v9, "simOpInfo":[I
    .local v10, "simType":[I
    .local v11, "usimIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    return v12

    .line 591
    .end local v0    # "currIccId":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "insertedSimCount":I
    .end local v3    # "insertedStatus":I
    .end local v4    # "op02CardCount":I
    .end local v5    # "op02IndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "otherIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "phoneCount":I
    .end local v8    # "simIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "simOpInfo":[I
    .end local v10    # "simType":[I
    .end local v11    # "usimIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    const-string v12, "isNeedShowSimDialog start"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 592
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    .line 593
    .restart local v7    # "phoneCount":I
    new-array v9, v7, [I

    .line 594
    .restart local v9    # "simOpInfo":[I
    new-array v10, v7, [I

    .line 595
    .restart local v10    # "simType":[I
    new-array v0, v7, [Ljava/lang/String;

    .line 596
    .restart local v0    # "currIccId":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 597
    .restart local v2    # "insertedSimCount":I
    const/4 v3, 0x0

    .line 598
    .restart local v3    # "insertedStatus":I
    const/4 v4, 0x0

    .line 599
    .restart local v4    # "op02CardCount":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .restart local v11    # "usimIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .restart local v8    # "simIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .restart local v5    # "op02IndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .restart local v6    # "otherIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v7, :cond_4

    .line 605
    sget-object v12, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    aget-object v12, v12, v1

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v1

    .line 606
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "currIccid["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 607
    aget-object v12, v0, v1

    if-eqz v12, :cond_1

    const-string v12, ""

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 608
    :cond_1
    const-string v12, "GSM"

    const-string v13, "iccid not found, wait for next sim state change"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/4 v12, 0x3

    goto :goto_0

    .line 611
    :cond_2
    const-string v12, "N/A"

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 612
    add-int/lit8 v2, v2, 0x1

    .line 613
    const/4 v12, 0x1

    shl-int/2addr v12, v1

    or-int/2addr v3, v12

    .line 604
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 617
    :cond_4
    const/4 v12, 0x2

    if-ge v2, v12, :cond_5

    .line 618
    const-string v12, "isNeedShowSimDialog: insert sim count < 2, do not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 619
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 622
    :cond_5
    invoke-static {v9, v10, v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v12

    if-nez v12, :cond_6

    .line 623
    const-string v12, "GSM"

    const-string v13, "isNeedShowSimDialog: Can\'t get SIM information"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 v12, 0x2

    goto/16 :goto_0

    .line 626
    :cond_6
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_a

    .line 628
    const/4 v12, 0x1

    aget v13, v10, v1

    if-ne v12, v13, :cond_8

    .line 629
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_7
    :goto_3
    const/4 v12, 0x3

    aget v13, v9, v1

    if-ne v12, v13, :cond_9

    .line 636
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 630
    :cond_8
    aget v12, v10, v1

    if-nez v12, :cond_7

    .line 631
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 638
    :cond_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 641
    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "usimIndexList size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 642
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "op02IndexList size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_d

    .line 646
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_c

    .line 647
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 648
    add-int/lit8 v4, v4, 0x1

    .line 646
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 652
    :cond_c
    const/4 v12, 0x1

    if-ne v4, v12, :cond_11

    .line 653
    const-string v12, "isNeedShowSimDialog: One OP02Usim inserted, not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 654
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 656
    :cond_d
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    .line 657
    const-string v12, "isNeedShowSimDialog: One Usim inserted, not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 658
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 662
    :cond_e
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_10

    .line 663
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 664
    add-int/lit8 v4, v4, 0x1

    .line 662
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 668
    :cond_10
    const/4 v12, 0x1

    if-ne v4, v12, :cond_11

    .line 669
    const-string v12, "isNeedShowSimDialog: One non-OP02 Usim inserted, not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 670
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 673
    :cond_11
    const-string v12, "isNeedShowSimDialog: Show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 674
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public static isNeedSwitchInOpPackage([Lcom/android/internal/telephony/Phone;[Landroid/telephony/RadioAccessFamily;)I
    .locals 14
    .param p0, "mProxyPhones"    # [Lcom/android/internal/telephony/Phone;
    .param p1, "rats"    # [Landroid/telephony/RadioAccessFamily;

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 272
    const-string v12, "ro.operator.optr"

    const-string v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "operatorSpec":Ljava/lang/String;
    array-length v12, p0

    new-array v6, v12, [I

    .line 274
    .local v6, "simOpInfo":[I
    array-length v12, p0

    new-array v7, v12, [I

    .line 276
    .local v7, "simType":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    .line 277
    .local v5, "phoneCount":I
    const/4 v2, 0x0

    .line 278
    .local v2, "insertedSimCount":I
    const/4 v3, 0x0

    .line 279
    .local v3, "insertedStatus":I
    new-array v0, v5, [Ljava/lang/String;

    .line 281
    .local v0, "currIccId":[Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Operator Spec:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 282
    const-string v12, "ro.mtk_disable_cap_switch"

    invoke-static {v12, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-ne v12, v10, :cond_1

    .line 283
    const-string v9, "mtk_disable_cap_switch is true"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    move v9, v10

    .line 325
    :cond_0
    :goto_0
    return v9

    .line 285
    :cond_1
    const-string v12, "OP01"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 292
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_5

    .line 293
    sget-object v12, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    aget-object v12, v12, v1

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v1

    .line 294
    aget-object v12, v0, v1

    if-eqz v12, :cond_2

    const-string v12, ""

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 295
    :cond_2
    const-string v9, "error: iccid not found, not switch, return NOT_SWITCH_SIM_INFO_NOT_READY"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    move v9, v11

    .line 296
    goto :goto_0

    .line 298
    :cond_3
    const-string v12, "N/A"

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 299
    add-int/lit8 v2, v2, 0x1

    .line 300
    shl-int v12, v10, v1

    or-int/2addr v3, v12

    .line 292
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 303
    :cond_5
    invoke-static {v6, v7, v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v12

    if-nez v12, :cond_6

    if-eq v2, v10, :cond_6

    move v9, v11

    .line 305
    goto :goto_0

    .line 309
    :cond_6
    const/4 v8, 0x0

    .local v8, "targetPhoneId":I
    :goto_2
    array-length v11, p1

    if-ge v8, v11, :cond_7

    .line 310
    const-string v11, "ro.mtk_lte_support"

    invoke-static {v11, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v10, :cond_8

    .line 311
    aget-object v11, p1, v8

    invoke-virtual {v11}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v11

    and-int/lit16 v11, v11, 0x4000

    const/16 v12, 0x4000

    if-ne v11, v12, :cond_9

    .line 322
    :cond_7
    const-string v11, "OP01"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 323
    invoke-static {v8, v6, v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->checkOp01LC(I[I[I)Z

    move-result v11

    if-nez v11, :cond_0

    move v9, v10

    goto :goto_0

    .line 316
    :cond_8
    aget-object v11, p1, v8

    invoke-virtual {v11}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v11

    and-int/lit8 v11, v11, 0x8

    const/16 v12, 0x8

    if-eq v11, v12, :cond_7

    .line 309
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method public static isSimContainsCdmaApp(I)Z
    .locals 4
    .param p0, "simId"    # I

    .prologue
    .line 565
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    new-array v0, v1, [I

    .line 566
    .local v0, "cardType":[I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 567
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RadioCapSwitchUtil][getCardType]: SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    aget v1, v0, p0

    and-int/lit8 v1, v1, 0x4

    if-gtz v1, :cond_0

    aget v1, v0, p0

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_1

    .line 570
    :cond_0
    const/4 v1, 0x1

    .line 572
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 561
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RadioCapSwitchUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void
.end method

.method public static updateIccid([Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p0, "mProxyPhones"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "bIsMajorPhone":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 144
    const/4 v0, 0x0

    .line 145
    const-string v3, "ro.mtk_lte_support"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 146
    aget-object v3, p0, v2

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    and-int/lit16 v3, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 156
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ril.iccid.sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "currIccId":Ljava/lang/String;
    const-string v3, "persist.radio.simswitch.iccid"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIccid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 163
    .end local v1    # "currIccId":Ljava/lang/String;
    :cond_1
    return-void

    .line 151
    :cond_2
    aget-object v3, p0, v2

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 153
    const/4 v0, 0x1

    goto :goto_1

    .line 143
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
