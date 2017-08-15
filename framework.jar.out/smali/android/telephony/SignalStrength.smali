.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field public static final INVALID:I = 0x7fffffff

.field private static final IS_BSP_PACKAGE:Z

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x5

.field private static final RSRP_THRESH_LENIENT:[I

.field private static final RSRP_THRESH_STRICT:[I

.field private static final RSRP_THRESH_TYPE_STRICT:I = 0x0

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field private static mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGnSchemeSupport:Z

.field private mGsmBitErrorRate:I

.field private mGsmEcn0Qdbm:I

.field private mGsmRscpQdbm:I

.field private mGsmRssiQdbm:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "none"

    aput-object v3, v2, v1

    const-string/jumbo v3, "poor"

    aput-object v3, v2, v0

    const/4 v3, 0x2

    const-string/jumbo v4, "moderate"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "good"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "great"

    aput-object v4, v2, v3

    sput-object v2, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 68
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    sput-object v2, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    .line 69
    new-array v2, v5, [I

    fill-array-data v2, :array_1

    sput-object v2, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    .line 88
    const/4 v2, 0x0

    sput-object v2, Landroid/telephony/SignalStrength;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    .line 89
    const-string/jumbo v2, "ro.mtk_bsp_package"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Landroid/telephony/SignalStrength;->IS_BSP_PACKAGE:Z

    .line 432
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :cond_0
    move v0, v1

    .line 89
    goto :goto_0

    .line 68
    :array_0
    .array-data 4
        -0x8c
        -0x73
        -0x69
        -0x5f
        -0x55
        -0x2c
    .end array-data

    .line 69
    :array_1
    .array-data 4
        -0x8c
        -0x80
        -0x76
        -0x6c
        -0x62
        -0x2c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x63

    const/4 v2, 0x1

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1514
    iput-boolean v2, p0, Landroid/telephony/SignalStrength;->mGnSchemeSupport:Z

    .line 118
    iput v3, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 119
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 120
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 121
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 122
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 123
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 124
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 125
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 126
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 127
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 128
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 129
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 130
    iput-boolean v2, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 131
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 1
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1514
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mGnSchemeSupport:Z

    .line 167
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 170
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZIII)V
    .locals 2
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z
    .param p14, "gsmRssiQdbm"    # I
    .param p15, "gsmRscpQdbm"    # I
    .param p16, "gsmEcn0Qdbm"    # I

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1514
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/telephony/SignalStrength;->mGnSchemeSupport:Z

    .line 185
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 188
    move/from16 v0, p14

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 189
    move/from16 v0, p15

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 190
    move/from16 v0, p16

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 191
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsmFlag"    # Z

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1514
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mGnSchemeSupport:Z

    .line 203
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1514
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mGnSchemeSupport:Z

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size of signalstrength parcel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 355
    return-void

    .line 347
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1514
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mGnSchemeSupport:Z

    .line 216
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 217
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "gsmFlag"    # Z

    .prologue
    const/16 v3, 0x63

    const v2, 0x7fffffff

    const/4 v1, -0x1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1514
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mGnSchemeSupport:Z

    .line 142
    iput v3, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 143
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 144
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 145
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 146
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 147
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 148
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 149
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 150
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 151
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 152
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 153
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 154
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 155
    return-void
.end method

.method private GnGetLteLevel(I)I
    .locals 3
    .param p1, "mLteRsrp"    # I

    .prologue
    .line 1556
    const/4 v0, 0x0

    .line 1557
    .local v0, "rsrpIconLevel":I
    const/16 v1, -0x2c

    if-le p1, v1, :cond_0

    const/4 v0, 0x0

    .line 1563
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getSimId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GnGetLteLevel(), rsrpIconLevel ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->isCampOnLte()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ", standard LTE"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLteRsrp ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isCampOnLte ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->isCampOnLte()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1565
    return v0

    .line 1558
    :cond_0
    const/16 v1, -0x61

    if-lt p1, v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 1559
    :cond_1
    const/16 v1, -0x69

    if-lt p1, v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 1560
    :cond_2
    const/16 v1, -0x71

    if-lt p1, v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 1561
    :cond_3
    const/16 v1, -0x78

    if-lt p1, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    .line 1562
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1563
    :cond_5
    const-string v1, ""

    goto :goto_1
.end method

.method private GnUpdateCdma(I)I
    .locals 3
    .param p1, "cdmaDbm"    # I

    .prologue
    .line 840
    const/4 v0, 0x0

    .line 841
    .local v0, "levelDbm":I
    const/16 v1, -0x55

    if-lt p1, v1, :cond_0

    const/4 v0, 0x4

    .line 846
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getSimId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GnUpdateCdma,levelDbm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 847
    return v0

    .line 842
    :cond_0
    const/16 v1, -0x5f

    if-lt p1, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 843
    :cond_1
    const/16 v1, -0x66

    if-lt p1, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 844
    :cond_2
    const/16 v1, -0x6c

    if-lt p1, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    .line 845
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private GnUpdateEvdo(I)I
    .locals 3
    .param p1, "evdoDbm"    # I

    .prologue
    .line 925
    const/4 v0, 0x0

    .line 926
    .local v0, "levelDbm":I
    const/16 v1, -0x55

    if-lt p1, v1, :cond_0

    const/4 v0, 0x4

    .line 931
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getSimId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GnUpdateEvdo,levelDbm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 932
    return v0

    .line 927
    :cond_0
    const/16 v1, -0x5f

    if-lt p1, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 928
    :cond_1
    const/16 v1, -0x66

    if-lt p1, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 929
    :cond_2
    const/16 v1, -0x6c

    if-lt p1, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    .line 930
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private GnUpdateGsm(I)I
    .locals 3
    .param p1, "asu"    # I

    .prologue
    .line 1516
    const/4 v0, 0x0

    .line 1517
    .local v0, "level":I
    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    const/16 v1, 0x63

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1522
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getSimId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GnUpdateGsm,level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", standard GSM, ASU="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1523
    return v0

    .line 1518
    :cond_1
    const/16 v1, 0xc

    if-lt p1, v1, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 1519
    :cond_2
    const/16 v1, 0xa

    if-lt p1, v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 1520
    :cond_3
    const/4 v1, 0x7

    if-lt p1, v1, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    .line 1521
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private GnUpdateTDorWcdma(I)I
    .locals 8
    .param p1, "asu"    # I

    .prologue
    const/16 v7, 0x63

    const/16 v6, 0x8

    const/4 v4, 0x1

    .line 1527
    const/4 v2, 0x0

    .line 1528
    .local v2, "level":I
    const-string v3, ""

    .line 1529
    .local v3, "operator":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 1532
    const-string v5, "46001"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "46006"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "46010"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "00101"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v1, v4

    .line 1533
    .local v1, "isW":Z
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v0

    .line 1535
    .local v0, "dbm":I
    if-nez v1, :cond_7

    .line 1537
    if-lt p1, v4, :cond_1

    if-ne p1, v7, :cond_3

    :cond_1
    const/4 v2, 0x0

    .line 1542
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getSimId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "GnUpdateTDorWcdma,level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", standard TDSCDMA, ASU="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dbm="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", operator="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1553
    :goto_2
    return v2

    .line 1532
    .end local v0    # "dbm":I
    .end local v1    # "isW":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1538
    .restart local v0    # "dbm":I
    .restart local v1    # "isW":Z
    :cond_3
    const/16 v4, 0x10

    if-lt p1, v4, :cond_4

    const/4 v2, 0x4

    goto :goto_1

    .line 1539
    :cond_4
    if-lt p1, v6, :cond_5

    const/4 v2, 0x3

    goto :goto_1

    .line 1540
    :cond_5
    const/4 v4, 0x4

    if-lt p1, v4, :cond_6

    const/4 v2, 0x2

    goto :goto_1

    .line 1541
    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    .line 1545
    :cond_7
    const/4 v4, 0x5

    if-lt p1, v4, :cond_8

    if-ne p1, v7, :cond_9

    :cond_8
    const/4 v2, 0x0

    .line 1550
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getSimId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "GnUpdateTDorWcdma,level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", standard WCDMA, ASU="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dbm="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", operator="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1546
    :cond_9
    const/16 v4, 0xe

    if-lt p1, v4, :cond_a

    const/4 v2, 0x4

    goto :goto_3

    .line 1547
    :cond_a
    const/16 v4, 0xb

    if-lt p1, v4, :cond_b

    const/4 v2, 0x3

    goto :goto_3

    .line 1548
    :cond_b
    if-lt p1, v6, :cond_c

    const/4 v2, 0x2

    goto :goto_3

    .line 1549
    :cond_c
    const/4 v2, 0x1

    goto :goto_3
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 1332
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static getPlugInInstance()Lcom/mediatek/common/telephony/IServiceStateExt;
    .locals 2

    .prologue
    .line 285
    const-string v1, "SignalStrength get plugin"

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 286
    sget-boolean v1, Landroid/telephony/SignalStrength;->IS_BSP_PACKAGE:Z

    if-nez v1, :cond_1

    .line 287
    sget-object v1, Landroid/telephony/SignalStrength;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    if-nez v1, :cond_0

    .line 289
    :try_start_0
    const-class v1, Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IServiceStateExt;

    sput-object v1, Landroid/telephony/SignalStrength;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .local v0, "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    sget-object v1, Landroid/telephony/SignalStrength;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    return-object v1

    .line 290
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_0
    move-exception v0

    .line 291
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    const-string v1, "Get plugin fail"

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 292
    const/4 v1, 0x0

    sput-object v1, Landroid/telephony/SignalStrength;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    .line 293
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 297
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    const-string v1, "BSP package should not use plug in"

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSimId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1570
    const-string v0, ""

    return-object v0
.end method

.method private static isC2KSupport()Z
    .locals 2

    .prologue
    .line 1508
    const-string/jumbo v0, "ro.mtk_c2k_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isCampOnLte()Z
    .locals 2

    .prologue
    .line 1348
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    const/4 v1, -0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

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
    .line 1265
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 3
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size of signalstrength parcel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 369
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 370
    .local v0, "ss":Landroid/telephony/SignalStrength;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 371
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 372
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 373
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 374
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 375
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 376
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 377
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 378
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 379
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 380
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 381
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 383
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 386
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 387
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 388
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 391
    return-object v0

    .line 383
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 107
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 108
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 109
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1216
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1217
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1218
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1219
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1220
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1221
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1222
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1223
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1224
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1225
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1226
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1227
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1228
    const-string v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1230
    const-string v0, "RssiQdbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 1231
    const-string v0, "RscpQdbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 1232
    const-string v0, "Ecn0Qdbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 1233
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 307
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 308
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 309
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 310
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 311
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 312
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 313
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 314
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 315
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 316
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 317
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 318
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 319
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 320
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 321
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 322
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 323
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1160
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    .local v2, "s":Landroid/telephony/SignalStrength;
    if-nez p1, :cond_1

    .line 1169
    .end local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_0
    :goto_0
    return v3

    .line 1161
    :catch_0
    move-exception v1

    .line 1162
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1169
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1242
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1243
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1244
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1245
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1246
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1247
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1248
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1249
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1250
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1251
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1252
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1253
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1254
    const-string v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1256
    const-string v0, "RssiQdbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1257
    const-string v0, "RscpQdbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1258
    const-string v0, "Ecn0Qdbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1259
    return-void
.end method

.method public getAsuLevel()I
    .locals 5

    .prologue
    .line 612
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    .line 615
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->isCampOnLte()Z

    move-result v3

    if-nez v3, :cond_0

    .line 617
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 636
    .local v0, "asuLevel":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAsuLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 638
    return v0

    .line 619
    .end local v0    # "asuLevel":I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 622
    .end local v0    # "asuLevel":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 623
    .local v1, "cdmaAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 624
    .local v2, "evdoAsuLevel":I
    if-nez v2, :cond_2

    .line 626
    move v0, v1

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 627
    .end local v0    # "asuLevel":I
    :cond_2
    if-nez v1, :cond_3

    .line 629
    move v0, v2

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 632
    .end local v0    # "asuLevel":I
    :cond_3
    if-ge v1, v2, :cond_4

    move v0, v1

    .restart local v0    # "asuLevel":I
    :goto_1
    goto :goto_0

    .end local v0    # "asuLevel":I
    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 858
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 859
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 863
    .local v2, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    .line 871
    .local v0, "cdmaAsuLevel":I
    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    .line 878
    .local v3, "ecioAsuLevel":I
    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    .line 880
    .local v4, "level":I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaAsuLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 882
    return v4

    .line 864
    .end local v0    # "cdmaAsuLevel":I
    .end local v3    # "ecioAsuLevel":I
    .end local v4    # "level":I
    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 865
    .end local v0    # "cdmaAsuLevel":I
    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 866
    .end local v0    # "cdmaAsuLevel":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 867
    .end local v0    # "cdmaAsuLevel":I
    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 868
    .end local v0    # "cdmaAsuLevel":I
    :cond_4
    const/16 v0, 0x63

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 872
    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 873
    .end local v3    # "ecioAsuLevel":I
    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 874
    .end local v3    # "ecioAsuLevel":I
    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 875
    .end local v3    # "ecioAsuLevel":I
    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 876
    .end local v3    # "ecioAsuLevel":I
    :cond_9
    const/16 v3, 0x63

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    :cond_a
    move v4, v3

    .line 878
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 7

    .prologue
    .line 803
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 804
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 808
    .local v1, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/4 v3, 0x4

    .line 815
    .local v3, "levelDbm":I
    :goto_0
    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;->GnUpdateCdma(I)I

    move-result v3

    .line 819
    const/16 v5, -0x5a

    if-lt v1, v5, :cond_5

    const/4 v4, 0x4

    .line 825
    .local v4, "levelEcio":I
    :goto_1
    if-ge v3, v4, :cond_9

    move v2, v3

    .line 827
    .local v2, "level":I
    :goto_2
    invoke-static {}, Landroid/telephony/SignalStrength;->isC2KSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 828
    move v2, v3

    .line 832
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 834
    return v2

    .line 809
    .end local v2    # "level":I
    .end local v3    # "levelDbm":I
    .end local v4    # "levelEcio":I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 810
    .end local v3    # "levelDbm":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 811
    .end local v3    # "levelDbm":I
    :cond_3
    const/16 v5, -0x64

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 812
    .end local v3    # "levelDbm":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 820
    :cond_5
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_6

    const/4 v4, 0x3

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 821
    .end local v4    # "levelEcio":I
    :cond_6
    const/16 v5, -0x82

    if-lt v1, v5, :cond_7

    const/4 v4, 0x2

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 822
    .end local v4    # "levelEcio":I
    :cond_7
    const/16 v5, -0x96

    if-lt v1, v5, :cond_8

    const/4 v4, 0x1

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 823
    .end local v4    # "levelEcio":I
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "levelEcio":I
    goto :goto_1

    :cond_9
    move v2, v4

    .line 825
    goto :goto_2
.end method

.method public getDbm()I
    .locals 6

    .prologue
    const/16 v5, -0x71

    const/16 v4, -0x78

    .line 649
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 650
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 653
    .local v1, "dBm":I
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->isCampOnLte()Z

    move-result v3

    if-nez v3, :cond_0

    .line 655
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    .line 666
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDbm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 668
    .end local v1    # "dBm":I
    :goto_0
    return v1

    .line 658
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 659
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 661
    .local v2, "evdoDbm":I
    if-eq v2, v4, :cond_2

    if-ne v2, v5, :cond_3

    .end local v0    # "cdmaDbm":I
    :cond_2
    :goto_1
    move v1, v0

    goto :goto_0

    .restart local v0    # "cdmaDbm":I
    :cond_3
    if-eq v0, v4, :cond_4

    if-ne v0, v5, :cond_5

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    if-lt v0, v2, :cond_2

    move v0, v2

    goto :goto_1
.end method

.method public getEvdoAsuLevel()I
    .locals 7

    .prologue
    .line 943
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 944
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 948
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    .line 955
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    .line 962
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    .line 964
    .local v2, "level":I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEvdoAsuLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 966
    return v2

    .line 949
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 950
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 951
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 952
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 953
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/16 v3, 0x63

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 956
    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 957
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 958
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 959
    .end local v4    # "levelEvdoSnr":I
    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 960
    .end local v4    # "levelEvdoSnr":I
    :cond_9
    const/16 v4, 0x63

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    :cond_a
    move v2, v4

    .line 962
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 4

    .prologue
    .line 891
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 892
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 896
    .local v1, "evdoSnr":I
    const/16 v3, -0x41

    if-lt v0, v3, :cond_0

    const/4 v2, 0x4

    .line 904
    .local v2, "levelEvdoDbm":I
    :goto_0
    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;->GnUpdateEvdo(I)I

    move-result v2

    .line 905
    return v2

    .line 897
    .end local v2    # "levelEvdoDbm":I
    :cond_0
    const/16 v3, -0x4b

    if-lt v0, v3, :cond_1

    const/4 v2, 0x3

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_0

    .line 898
    .end local v2    # "levelEvdoDbm":I
    :cond_1
    const/16 v3, -0x5a

    if-lt v0, v3, :cond_2

    const/4 v2, 0x2

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_0

    .line 899
    .end local v2    # "levelEvdoDbm":I
    :cond_2
    const/16 v3, -0x69

    if-lt v0, v3, :cond_3

    const/4 v2, 0x1

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_0

    .line 900
    .end local v2    # "levelEvdoDbm":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_0
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 3

    .prologue
    .line 790
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 792
    .local v0, "level":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGsmAsuLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 794
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 679
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 680
    .local v2, "gsmSignalStrength":I
    const/16 v5, 0x63

    if-ne v2, v5, :cond_1

    move v0, v4

    .line 681
    .local v0, "asu":I
    :goto_0
    if-eq v0, v4, :cond_4

    .line 683
    sget-boolean v4, Landroid/telephony/SignalStrength;->IS_BSP_PACKAGE:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->mGnSchemeSupport:Z

    if-nez v4, :cond_0

    .line 685
    invoke-static {}, Landroid/telephony/SignalStrength;->getPlugInInstance()Lcom/mediatek/common/telephony/IServiceStateExt;

    move-result-object v3

    .line 686
    .local v3, "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    if-eqz v3, :cond_2

    .line 687
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-interface {v3, v4, v0}, Lcom/mediatek/common/telephony/IServiceStateExt;->mapGsmSignalDbm(II)I

    move-result v1

    .line 693
    .end local v3    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_0
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mapGsmSignalDbm() mGsmRscpQdbm="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " asu="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 695
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    if-gez v4, :cond_3

    .line 696
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    div-int/lit8 v1, v4, 0x4

    .line 704
    .local v1, "dBm":I
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getGsmDbm="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 706
    return v1

    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    :cond_1
    move v0, v2

    .line 680
    goto :goto_0

    .line 689
    .restart local v0    # "asu":I
    .restart local v3    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_2
    const-string v4, "[getGsmDbm] null plug-in instance"

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 698
    .end local v3    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_3
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v1, v4, -0x71

    .restart local v1    # "dBm":I
    goto :goto_2

    .line 701
    .end local v1    # "dBm":I
    :cond_4
    const/4 v1, -0x1

    .restart local v1    # "dBm":I
    goto :goto_2
.end method

.method public getGsmEcn0Qdbm()I
    .locals 1

    .prologue
    .line 1292
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    return v0
.end method

.method public getGsmLevel()I
    .locals 8

    .prologue
    const/16 v7, 0x63

    const/16 v6, 0xc

    const/4 v5, 0x5

    .line 721
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 723
    .local v0, "asu":I
    sget-boolean v4, Landroid/telephony/SignalStrength;->IS_BSP_PACKAGE:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->mGnSchemeSupport:Z

    if-nez v4, :cond_1

    .line 725
    invoke-static {}, Landroid/telephony/SignalStrength;->getPlugInInstance()Lcom/mediatek/common/telephony/IServiceStateExt;

    move-result-object v3

    .line 726
    .local v3, "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    if-eqz v3, :cond_0

    .line 727
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-interface {v3, v0, v4}, Lcom/mediatek/common/telephony/IServiceStateExt;->mapGsmSignalLevel(II)I

    move-result v1

    .line 729
    .local v1, "level":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    move v2, v1

    .line 777
    .end local v1    # "level":I
    .end local v3    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    .local v2, "level":I
    :goto_0
    return v2

    .line 733
    .end local v2    # "level":I
    .restart local v3    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_0
    const-string v4, "[getGsmLevel] null plug-in instance"

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 738
    .end local v3    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    if-gez v4, :cond_7

    .line 740
    if-le v0, v5, :cond_2

    if-ne v0, v7, :cond_3

    .line 741
    :cond_2
    const/4 v1, 0x0

    .line 754
    .restart local v1    # "level":I
    :goto_1
    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;->GnUpdateTDorWcdma(I)I

    move-result v1

    .line 775
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getGsmLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v2, v1

    .line 777
    .end local v1    # "level":I
    .restart local v2    # "level":I
    goto :goto_0

    .line 742
    .end local v2    # "level":I
    :cond_3
    const/16 v4, 0xf

    if-lt v0, v4, :cond_4

    .line 743
    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_1

    .line 744
    .end local v1    # "level":I
    :cond_4
    if-lt v0, v6, :cond_5

    .line 745
    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_1

    .line 746
    .end local v1    # "level":I
    :cond_5
    const/16 v4, 0x9

    if-lt v0, v4, :cond_6

    .line 747
    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_1

    .line 749
    .end local v1    # "level":I
    :cond_6
    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_1

    .line 758
    .end local v1    # "level":I
    :cond_7
    const/4 v4, 0x2

    if-le v0, v4, :cond_8

    if-ne v0, v7, :cond_9

    .line 759
    :cond_8
    const/4 v1, 0x0

    .line 770
    .restart local v1    # "level":I
    :goto_3
    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;->GnUpdateGsm(I)I

    move-result v1

    goto :goto_2

    .line 760
    .end local v1    # "level":I
    :cond_9
    if-lt v0, v6, :cond_a

    .line 761
    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_3

    .line 762
    .end local v1    # "level":I
    :cond_a
    const/16 v4, 0x8

    if-lt v0, v4, :cond_b

    .line 763
    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_3

    .line 764
    .end local v1    # "level":I
    :cond_b
    if-lt v0, v5, :cond_c

    .line 765
    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_3

    .line 767
    .end local v1    # "level":I
    :cond_c
    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_3
.end method

.method public getGsmRscpQdbm()I
    .locals 1

    .prologue
    .line 1283
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    return v0
.end method

.method public getGsmRssiQdbm()I
    .locals 1

    .prologue
    .line 1274
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    return v0
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getGsmSignalStrengthDbm()I
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 1302
    const/4 v1, -0x1

    .line 1303
    .local v1, "dBm":I
    iget v3, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1304
    .local v3, "gsmSignalStrength":I
    const/16 v6, 0x63

    if-ne v3, v6, :cond_0

    move v0, v5

    .line 1306
    .local v0, "asu":I
    :goto_0
    if-eq v0, v5, :cond_3

    .line 1308
    sget-boolean v5, Landroid/telephony/SignalStrength;->IS_BSP_PACKAGE:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Landroid/telephony/SignalStrength;->mGnSchemeSupport:Z

    if-nez v5, :cond_2

    .line 1310
    invoke-static {}, Landroid/telephony/SignalStrength;->getPlugInInstance()Lcom/mediatek/common/telephony/IServiceStateExt;

    move-result-object v4

    .line 1311
    .local v4, "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    if-eqz v4, :cond_1

    .line 1312
    iget v5, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-interface {v4, v5, v0}, Lcom/mediatek/common/telephony/IServiceStateExt;->mapGsmSignalDbm(II)I

    move-result v1

    move v2, v1

    .line 1320
    .end local v1    # "dBm":I
    .end local v4    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    .local v2, "dBm":I
    :goto_1
    return v2

    .end local v0    # "asu":I
    .end local v2    # "dBm":I
    .restart local v1    # "dBm":I
    :cond_0
    move v0, v3

    .line 1304
    goto :goto_0

    .line 1315
    .restart local v0    # "asu":I
    .restart local v4    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_1
    const-string v5, "[getGsmSignalStrengthDbm] null plug-in instance"

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1318
    .end local v4    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_2
    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v1, v5, -0x71

    :cond_3
    move v2, v1

    .line 1320
    .end local v1    # "dBm":I
    .restart local v2    # "dBm":I
    goto :goto_1
.end method

.method public getLevel()I
    .locals 5

    .prologue
    .line 577
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    .line 578
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 581
    .local v2, "level":I
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->isCampOnLte()Z

    move-result v3

    if-nez v3, :cond_0

    .line 583
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 600
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 602
    return v2

    .line 586
    .end local v2    # "level":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 587
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 588
    .local v1, "evdoLevel":I
    if-nez v1, :cond_2

    .line 590
    move v2, v0

    .restart local v2    # "level":I
    goto :goto_0

    .line 591
    .end local v2    # "level":I
    :cond_2
    if-nez v0, :cond_3

    .line 593
    move v2, v1

    .restart local v2    # "level":I
    goto :goto_0

    .line 596
    .end local v2    # "level":I
    :cond_3
    if-ge v0, v1, :cond_4

    move v2, v0

    .restart local v2    # "level":I
    :goto_1
    goto :goto_0

    .end local v2    # "level":I
    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method public getLteAsuLevel()I
    .locals 4

    .prologue
    .line 1104
    const/16 v0, 0x63

    .line 1105
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 1119
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 1120
    const/16 v0, 0xff

    .line 1125
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lte Asu level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1127
    return v0

    .line 1122
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 975
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 7

    .prologue
    .line 990
    const/4 v2, 0x0

    .line 991
    .local v2, "rssiIconLevel":I
    const/4 v0, -0x1

    .line 992
    .local v0, "rsrpIconLevel":I
    const/4 v3, -0x1

    .line 994
    .local v3, "snrIconLevel":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e007c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 997
    .local v1, "rsrpThreshType":I
    if-nez v1, :cond_0

    .line 998
    sget-object v4, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    .line 1004
    .local v4, "threshRsrp":[I
    :goto_0
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-direct {p0, v5}, Landroid/telephony/SignalStrength;->GnGetLteLevel(I)I

    move-result v0

    .line 1005
    return v0

    .line 1000
    .end local v4    # "threshRsrp":[I
    :cond_0
    sget-object v4, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    .restart local v4    # "threshRsrp":[I
    goto :goto_0
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1142
    const/16 v0, 0x1f

    .line 1143
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .locals 2
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsm"    # Z

    .prologue
    .line 266
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 267
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 268
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 269
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 270
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 271
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 272
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 273
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 274
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 275
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 276
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 277
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 278
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsm"    # Z

    .prologue
    .line 237
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 240
    return-void
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 1134
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setCdmaDbm(I)V
    .locals 0
    .param p1, "cdmaDbm"    # I

    .prologue
    .line 1380
    iput p1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1381
    return-void
.end method

.method public setCdmaEcio(I)V
    .locals 0
    .param p1, "cdmaEcio"    # I

    .prologue
    .line 1390
    iput p1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1391
    return-void
.end method

.method public setEvdoDbm(I)V
    .locals 0
    .param p1, "evdoDbm"    # I

    .prologue
    .line 1400
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1401
    return-void
.end method

.method public setEvdoEcio(I)V
    .locals 0
    .param p1, "evdoEcio"    # I

    .prologue
    .line 1410
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1411
    return-void
.end method

.method public setEvdoSnr(I)V
    .locals 0
    .param p1, "evdoSnr"    # I

    .prologue
    .line 1420
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1421
    return-void
.end method

.method public setGsm(Z)V
    .locals 0
    .param p1, "gsmFlag"    # Z

    .prologue
    .line 491
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 492
    return-void
.end method

.method public setGsmBitErrorRate(I)V
    .locals 0
    .param p1, "gsmBitErrorRate"    # I

    .prologue
    .line 1370
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1371
    return-void
.end method

.method public setGsmEcn0Qdbm(I)V
    .locals 0
    .param p1, "gsmEcn0Qdbm"    # I

    .prologue
    .line 1500
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 1501
    return-void
.end method

.method public setGsmRscpQdbm(I)V
    .locals 0
    .param p1, "gsmRscpQdbm"    # I

    .prologue
    .line 1490
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 1491
    return-void
.end method

.method public setGsmRssiQdbm(I)V
    .locals 0
    .param p1, "gsmRssiQdbm"    # I

    .prologue
    .line 1480
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 1481
    return-void
.end method

.method public setGsmSignalStrength(I)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I

    .prologue
    .line 1360
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1361
    return-void
.end method

.method public setLteCqi(I)V
    .locals 0
    .param p1, "lteCqi"    # I

    .prologue
    .line 1470
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1471
    return-void
.end method

.method public setLteRsrp(I)V
    .locals 0
    .param p1, "lteRsrp"    # I

    .prologue
    .line 1440
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1441
    return-void
.end method

.method public setLteRsrq(I)V
    .locals 0
    .param p1, "lteRsrq"    # I

    .prologue
    .line 1450
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1451
    return-void
.end method

.method public setLteRssnr(I)V
    .locals 0
    .param p1, "lteRssnr"    # I

    .prologue
    .line 1460
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1461
    return-void
.end method

.method public setLteSignalStrength(I)V
    .locals 0
    .param p1, "lteSignalStrength"    # I

    .prologue
    .line 1430
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1431
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string v0, "gsm|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "cdma"

    goto :goto_0
.end method

.method public validateInput()V
    .locals 6

    .prologue
    const/16 v1, 0x63

    const/4 v3, -0x1

    const/16 v2, -0x78

    const v4, 0x7fffffff

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signal before validate="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 458
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 461
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 462
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 464
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_0
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 465
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 466
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_1
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 469
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_2

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_2
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 471
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 472
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 473
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :cond_3
    iput v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signal after validate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 480
    return-void

    :cond_4
    move v0, v1

    .line 458
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 461
    goto :goto_1

    .line 462
    :cond_6
    const/16 v0, -0xa0

    goto :goto_2

    :cond_7
    move v0, v3

    .line 465
    goto :goto_3

    :cond_8
    move v0, v4

    .line 471
    goto :goto_4

    :cond_9
    move v0, v4

    .line 472
    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 398
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    return-void

    .line 410
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
