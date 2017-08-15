.class public Lcom/mediatek/simservs/client/SimServs;
.super Ljava/lang/Object;
.source "SimServs.java"


# static fields
.field private static final ACTION_GBA_INTERNAL_SERVER_ERROR:Ljava/lang/String; = "android.intent.action.ACTION_GBA_INTERNAL_SERVER_ERROR"

.field public static final AUID_SIMSERVS:Ljava/lang/String; = "simservs.ngn.etsi.org"

.field public static final CARDTYPE_ISIM:I = 0x2

.field public static final CARDTYPE_UNSPECIFIED:I = 0x0

.field public static final CARDTYPE_USIM:I = 0x1

.field private static final ENGLOG:Z

.field public static final FALL_BACK_ADDRESS_IPV4:I = 0x1

.field public static final FALL_BACK_ADDRESS_IPV6:I = 0x2

.field public static final LIB_CONFIG_MULTIPLE_RULE_CONDITIONS:Z = true

.field public static final OPERATOR_DEFAULT:I = 0x0

.field public static final OPERATOR_OP01:I = 0x1

.field public static final OPERATOR_OP03:I = 0x8

.field public static final OPERATOR_OP05:I = 0x7

.field public static final OPERATOR_OP06:I = 0x2

.field public static final OPERATOR_OP07:I = 0x3

.field public static final OPERATOR_OP118:I = 0x6

.field public static final OPERATOR_OP15:I = 0x5

.field public static final OPERATOR_OP18:I = 0x4

.field public static final OPERATOR_OP19:I = 0x9

.field public static final SIMSERVS_FILENAME:Ljava/lang/String; = "simservs.xml"

.field public static final TAG:Ljava/lang/String; = "SimServs"

.field public static sDebug:Z

.field public static sFallBackAddressType:I

.field public static sInstance:Lcom/mediatek/simservs/client/SimServs;

.field public static sIsGbaInternalServerError:Z

.field private static sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

.field private static sXcapRoot:Ljava/lang/String;

.field private static sXui:Ljava/lang/String;


# instance fields
.field private mCardType:I

.field private mContext:Landroid/content/Context;

.field private mCredential:Lorg/apache/http/auth/Credentials;

.field public mDocumentSelector:Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

.field public mDocumentUri:Ljava/net/URI;

.field private mImpi:Ljava/lang/String;

.field private mImpu:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mIntendedId:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mMcc:Ljava/lang/String;

.field private mMnc:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mUsername:Ljava/lang/String;

.field public mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 29
    sput-boolean v1, Lcom/mediatek/simservs/client/SimServs;->sDebug:Z

    .line 31
    const-string v0, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mediatek/simservs/client/SimServs;->ENGLOG:Z

    .line 52
    sput v1, Lcom/mediatek/simservs/client/SimServs;->sFallBackAddressType:I

    .line 57
    sput-object v3, Lcom/mediatek/simservs/client/SimServs;->sInstance:Lcom/mediatek/simservs/client/SimServs;

    .line 59
    sput-object v3, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    .line 60
    sput-object v3, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    .line 78
    sput-boolean v1, Lcom/mediatek/simservs/client/SimServs;->sIsGbaInternalServerError:Z

    return-void

    :cond_0
    move v0, v1

    .line 31
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 61
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    .line 62
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImsi:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mMnc:Ljava/lang/String;

    .line 64
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mMcc:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    .line 66
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpu:Ljava/lang/String;

    .line 67
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mUsername:Ljava/lang/String;

    .line 68
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mPassword:Ljava/lang/String;

    .line 69
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    .line 87
    const-string v1, "mediatek.simserv.debug"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "debugProperty":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/simservs/client/SimServs;->sDebug:Z

    .line 90
    const-string v1, "SimServs"

    const-string v2, "sDebug enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    return-void
.end method

.method private buildRootUri()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .local v2, "xcapRoot":Ljava/lang/StringBuilder;
    const-string v3, "Simservs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xcap.protocol="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "xcap.protocol"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v3, "xcap.protocol"

    const-string v4, "https"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "protocol":Ljava/lang/String;
    iget v3, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://xcap.ims.mnc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mMnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mcc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".pub.3gppnetwork.org"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :goto_0
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    .line 431
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimServs;->buildDocumentUri()V

    .line 432
    :cond_0
    return-void

    .line 407
    :cond_1
    iget v3, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 408
    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    const-string v4, "3gppnetwork.org"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 409
    invoke-direct {p0}, Lcom/mediatek/simservs/client/SimServs;->getImpiDomain()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "domain":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://xcap."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    const/4 v3, 0x0

    const-string v4, ".3gppnetwork.org"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    const-string v4, ".pub"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 413
    const-string v3, ".3gppnetwork.org"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 415
    :cond_2
    const-string v3, ".pub.3gppnetwork.org"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 418
    .end local v0    # "domain":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/simservs/client/SimServs;->getImpiDomain()Ljava/lang/String;

    move-result-object v0

    .line 419
    .restart local v0    # "domain":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://xcap."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getImpiDomain()Ljava/lang/String;
    .locals 4

    .prologue
    .line 380
    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    const-string v0, "@"

    .line 383
    .local v0, "delimiter":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "temp":[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v1, v2

    .line 386
    .end local v0    # "delimiter":Ljava/lang/String;
    .end local v1    # "temp":[Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/mediatek/simservs/client/SimServs;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->sInstance:Lcom/mediatek/simservs/client/SimServs;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/mediatek/simservs/client/SimServs;

    invoke-direct {v0}, Lcom/mediatek/simservs/client/SimServs;-><init>()V

    sput-object v0, Lcom/mediatek/simservs/client/SimServs;->sInstance:Lcom/mediatek/simservs/client/SimServs;

    .line 104
    :cond_0
    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->initializeDebugParam()V

    .line 105
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->sInstance:Lcom/mediatek/simservs/client/SimServs;

    return-object v0
.end method

.method private static initializeDebugParam()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 357
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v2

    sput-object v2, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 358
    sget-object v2, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapDebugParam;->load()V

    .line 359
    sput-object v3, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    .line 360
    sput-object v3, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    .line 362
    sget-object v2, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapRoot()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "xcapRoot":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 366
    sput-object v0, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    .line 369
    :cond_0
    sget-object v2, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapXui()Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "xui":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 372
    sput-object v1, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    .line 374
    :cond_1
    return-void
.end method


# virtual methods
.method public buildDocumentUri()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 440
    sget-object v1, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v1}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapDocumentName()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "xcapDocumentName":Ljava/lang/String;
    new-instance v1, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    const-string v2, "simservs.ngn.etsi.org"

    sget-object v3, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .end local v0    # "xcapDocumentName":Ljava/lang/String;
    :goto_0
    invoke-direct {v1, v2, v3, v0}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentSelector:Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    .line 444
    sget-boolean v1, Lcom/mediatek/simservs/client/SimServs;->ENGLOG:Z

    if-eqz v1, :cond_0

    .line 445
    const-string v1, "SimServs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "document selector is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentSelector:Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    invoke-virtual {v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_0
    new-instance v1, Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-direct {v1}, Lcom/mediatek/xcap/client/uri/XcapUri;-><init>()V

    iput-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 451
    const-string v1, "SimServs"

    const-string v2, "buildDocumentUri():Create instance for mXcapUri"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    sget-object v2, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/xcap/client/uri/XcapUri;->setXcapRoot(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentSelector:Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    invoke-virtual {v1, v2}, Lcom/mediatek/xcap/client/uri/XcapUri;->setDocumentSelector(Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;)Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 454
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-virtual {v1}, Lcom/mediatek/xcap/client/uri/XcapUri;->toURI()Ljava/net/URI;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentUri:Ljava/net/URI;

    .line 455
    return-void

    .line 441
    .restart local v0    # "xcapDocumentName":Ljava/lang/String;
    :cond_1
    const-string v0, "simservs.xml"

    goto :goto_0
.end method

.method public getBarringServiceCapability(Lcom/mediatek/xcap/client/uri/XcapUri;Lorg/apache/http/auth/Credentials;)Lcom/mediatek/simservs/capability/BarringServiceCapability;
    .locals 3
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 975
    new-instance v0, Lcom/mediatek/simservs/capability/BarringServiceCapability;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/mediatek/simservs/capability/BarringServiceCapability;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    return-object v0
.end method

.method public getBarringServiceCapability(Z)Lcom/mediatek/simservs/capability/BarringServiceCapability;
    .locals 5
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 961
    new-instance v0, Lcom/mediatek/simservs/capability/BarringServiceCapability;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/capability/BarringServiceCapability;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    return-object v0
.end method

.method public getCommunicationDiversion(Lcom/mediatek/xcap/client/uri/XcapUri;Lorg/apache/http/auth/Credentials;)Lcom/mediatek/simservs/client/CommunicationDiversion;
    .locals 3
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 807
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationDiversion;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/mediatek/simservs/client/CommunicationDiversion;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    return-object v0
.end method

.method public getCommunicationDiversion(Z)Lcom/mediatek/simservs/client/CommunicationDiversion;
    .locals 5
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 762
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationDiversion;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/CommunicationDiversion;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 765
    .local v0, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 766
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setContext(Landroid/content/Context;)V

    .line 769
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->loadConfiguration()V

    .line 770
    return-object v0
.end method

.method public getCommunicationDiversion(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationDiversion;
    .locals 5
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 783
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationDiversion;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/CommunicationDiversion;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 785
    .local v0, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    if-eqz p2, :cond_0

    .line 786
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V

    .line 789
    :cond_0
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 790
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setContext(Landroid/content/Context;)V

    .line 792
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->loadConfiguration()V

    .line 793
    return-object v0
.end method

.method public getCommunicationWaiting(Lcom/mediatek/xcap/client/uri/XcapUri;Lorg/apache/http/auth/Credentials;)Lcom/mediatek/simservs/client/CommunicationWaiting;
    .locals 3
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 514
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationWaiting;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/mediatek/simservs/client/CommunicationWaiting;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    return-object v0
.end method

.method public getCommunicationWaiting(Z)Lcom/mediatek/simservs/client/CommunicationWaiting;
    .locals 5
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 469
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationWaiting;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/CommunicationWaiting;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 471
    .local v0, "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setContext(Landroid/content/Context;)V

    .line 475
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationWaiting;->loadConfiguration()V

    .line 476
    return-object v0
.end method

.method public getCommunicationWaiting(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationWaiting;
    .locals 5
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 489
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationWaiting;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/CommunicationWaiting;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 491
    .local v0, "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    if-eqz p2, :cond_0

    .line 492
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setNetwork(Landroid/net/Network;)V

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 496
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setContext(Landroid/content/Context;)V

    .line 499
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationWaiting;->loadConfiguration()V

    .line 500
    return-object v0
.end method

.method public getDiversionServiceCapability(Lcom/mediatek/xcap/client/uri/XcapUri;Lorg/apache/http/auth/Credentials;)Lcom/mediatek/simservs/capability/DiversionServiceCapability;
    .locals 3
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 949
    new-instance v0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/mediatek/simservs/capability/DiversionServiceCapability;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    return-object v0
.end method

.method public getDiversionServiceCapability(Z)Lcom/mediatek/simservs/capability/DiversionServiceCapability;
    .locals 5
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 935
    new-instance v0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/capability/DiversionServiceCapability;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    return-object v0
.end method

.method public getDocumentUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentUri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingCommunicationBarring(Lcom/mediatek/xcap/client/uri/XcapUri;Lorg/apache/http/auth/Credentials;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .locals 3
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 821
    new-instance v0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    return-object v0
.end method

.method public getIncomingCommunicationBarring(Z)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .locals 5
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 833
    new-instance v0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 836
    .local v0, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 837
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->setContext(Landroid/content/Context;)V

    .line 840
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->loadConfiguration()V

    .line 841
    return-object v0
.end method

.method public getIncomingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .locals 5
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 854
    new-instance v0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 856
    .local v0, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    if-eqz p2, :cond_0

    .line 857
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 860
    :cond_0
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 861
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->setContext(Landroid/content/Context;)V

    .line 864
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->loadConfiguration()V

    .line 865
    return-object v0
.end method

.method public getIntendedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginatingIdentityPresentation(Lcom/mediatek/xcap/client/uri/XcapUri;Lorg/apache/http/auth/Credentials;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    .locals 3
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 615
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    return-object v0
.end method

.method public getOriginatingIdentityPresentation(Z)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    .locals 5
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 526
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 528
    .local v0, "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->setContext(Landroid/content/Context;)V

    .line 532
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->loadConfiguration()V

    .line 533
    return-object v0
.end method

.method public getOriginatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    .locals 5
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 546
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 548
    .local v0, "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    if-eqz p2, :cond_0

    .line 549
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->setNetwork(Landroid/net/Network;)V

    .line 552
    :cond_0
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 553
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->setContext(Landroid/content/Context;)V

    .line 556
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->loadConfiguration()V

    .line 557
    return-object v0
.end method

.method public getOriginatingIdentityPresentationRestriction(Lcom/mediatek/xcap/client/uri/XcapUri;Lorg/apache/http/auth/Credentials;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .locals 3
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 734
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    return-object v0
.end method

.method public getOriginatingIdentityPresentationRestriction(Z)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .locals 5
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 641
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 644
    .local v0, "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 645
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setContext(Landroid/content/Context;)V

    .line 648
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->loadConfiguration()V

    .line 649
    return-object v0
.end method

.method public getOriginatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .locals 5
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 662
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 665
    .local v0, "oipr":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    if-eqz p2, :cond_0

    .line 666
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setNetwork(Landroid/net/Network;)V

    .line 669
    :cond_0
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 670
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setContext(Landroid/content/Context;)V

    .line 673
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->loadConfiguration()V

    .line 674
    return-object v0
.end method

.method public getOutgoingCommunicationBarring(Lcom/mediatek/xcap/client/uri/XcapUri;Lorg/apache/http/auth/Credentials;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .locals 3
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 879
    new-instance v0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    return-object v0
.end method

.method public getOutgoingCommunicationBarring(Z)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .locals 5
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 891
    new-instance v0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 894
    .local v0, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 895
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->setContext(Landroid/content/Context;)V

    .line 898
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->loadConfiguration()V

    .line 899
    return-object v0
.end method

.method public getOutgoingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .locals 5
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 912
    new-instance v0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 914
    .local v0, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    if-eqz p2, :cond_0

    .line 915
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 918
    :cond_0
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 919
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->setContext(Landroid/content/Context;)V

    .line 922
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->loadConfiguration()V

    .line 923
    return-object v0
.end method

.method public getTerminatingIdentityPresentation(Lcom/mediatek/xcap/client/uri/XcapUri;Lorg/apache/http/auth/Credentials;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    .locals 3
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 629
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    return-object v0
.end method

.method public getTerminatingIdentityPresentation(Z)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    .locals 5
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 569
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 572
    .local v0, "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->setContext(Landroid/content/Context;)V

    .line 576
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->loadConfiguration()V

    .line 577
    return-object v0
.end method

.method public getTerminatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    .locals 5
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 590
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 592
    .local v0, "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    if-eqz p2, :cond_0

    .line 593
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->setNetwork(Landroid/net/Network;)V

    .line 596
    :cond_0
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 597
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->setContext(Landroid/content/Context;)V

    .line 600
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->loadConfiguration()V

    .line 601
    return-object v0
.end method

.method public getTerminatingIdentityPresentationRestriction(Lcom/mediatek/xcap/client/uri/XcapUri;Lorg/apache/http/auth/Credentials;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    .locals 3
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 749
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    return-object v0
.end method

.method public getTerminatingIdentityPresentationRestriction(Z)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    .locals 5
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 686
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 690
    .local v0, "tipr":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 691
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setContext(Landroid/content/Context;)V

    .line 694
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->loadConfiguration()V

    .line 695
    return-object v0
.end method

.method public getTerminatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    .locals 5
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 708
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 711
    .local v0, "tipr":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    if-eqz p2, :cond_0

    .line 712
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setNetwork(Landroid/net/Network;)V

    .line 715
    :cond_0
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 716
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setContext(Landroid/content/Context;)V

    .line 719
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->loadConfiguration()V

    .line 720
    return-object v0
.end method

.method public getXcapDebugParam()Lcom/mediatek/xcap/client/XcapDebugParam;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    return-object v0
.end method

.method public getXcapRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    return-object v0
.end method

.method public getXui()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    .line 239
    const-string v0, "SimServs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContext(): mReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mIntentFilter:Landroid/content/IntentFilter;

    .line 242
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_GBA_INTERNAL_SERVER_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    new-instance v0, Lcom/mediatek/simservs/client/SimServs$1;

    invoke-direct {v0, p0}, Lcom/mediatek/simservs/client/SimServs$1;-><init>(Lcom/mediatek/simservs/client/SimServs;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 253
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    :cond_0
    return-void
.end method

.method public setFallBackAddressType(I)V
    .locals 3
    .param p1, "fall_back_address_type"    # I

    .prologue
    .line 349
    const-string v0, "SimServs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFallBackAddressType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    sput p1, Lcom/mediatek/simservs/client/SimServs;->sFallBackAddressType:I

    .line 351
    return-void
.end method

.method public setGbaCredential(Lorg/apache/http/auth/Credentials;)V
    .locals 0
    .param p1, "credential"    # Lorg/apache/http/auth/Credentials;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    .line 217
    return-void
.end method

.method public setHttpCredential(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 207
    new-instance v0, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    .line 208
    return-void
.end method

.method public setIntendedId(Ljava/lang/String;)V
    .locals 0
    .param p1, "intendedId"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setOperator(I)V
    .locals 2
    .param p1, "operator"    # I

    .prologue
    .line 263
    packed-switch p1, :pswitch_data_0

    .line 338
    const-string v0, "xcap.op"

    const-string v1, "00"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    const-string v0, "xcap.protocol"

    const-string v1, "https"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 340
    const-string v0, "xcap.putelcontenttype"

    const-string v1, "application/xcap-el+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    const-string v0, "xcap.handl409"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    const-string v0, "xcap.completeforwardto"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    const-string v0, "xcap.ns.ss"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 346
    :goto_0
    return-void

    .line 265
    :pswitch_0
    const-string v0, "xcap.op"

    const-string v1, "01"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    const-string v0, "xcap.protocol"

    const-string v1, "http"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    const-string v0, "xcap.putelcontenttype"

    const-string v1, "application/xcap-el+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    const-string v0, "xcap.handl409"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    const-string v0, "xcap.completeforwardto"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    const-string v0, "xcap.ns.ss"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 273
    :pswitch_1
    const-string v0, "xcap.op"

    const-string v1, "06"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    const-string v0, "xcap.protocol"

    const-string v1, "http"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    const-string v0, "xcap.putelcontenttype"

    const-string v1, "application/xcap-el+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    const-string v0, "xcap.handl409"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    const-string v0, "xcap.completeforwardto"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    const-string v0, "xcap.ns.ss"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 281
    :pswitch_2
    const-string v0, "xcap.op"

    const-string v1, "07"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    const-string v0, "xcap.protocol"

    const-string v1, "https"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    const-string v0, "xcap.putelcontenttype"

    const-string v1, "application/xcap-el+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    const-string v0, "xcap.handl409"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    const-string v0, "xcap.completeforwardto"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 286
    const-string v0, "xcap.ns.ss"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 289
    :pswitch_3
    const-string v0, "xcap.op"

    const-string v1, "18"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    const-string v0, "xcap.protocol"

    const-string v1, "http"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 291
    const-string v0, "xcap.putelcontenttype"

    const-string v1, "application/xcap-el+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    const-string v0, "xcap.handl409"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    const-string v0, "xcap.completeforwardto"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    const-string v0, "xcap.ns.ss"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 297
    :pswitch_4
    const-string v0, "xcap.op"

    const-string v1, "15"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    const-string v0, "xcap.protocol"

    const-string v1, "http"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    const-string v0, "xcap.putelcontenttype"

    const-string v1, "application/xcap-el+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    const-string v0, "xcap.handl409"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 301
    const-string v0, "xcap.completeforwardto"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 302
    const-string v0, "xcap.ns.ss"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 305
    :pswitch_5
    const-string v0, "xcap.op"

    const-string v1, "05"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    const-string v0, "xcap.protocol"

    const-string v1, "http"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 307
    const-string v0, "xcap.putelcontenttype"

    const-string v1, "application/xcap-el+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    const-string v0, "xcap.handl409"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 309
    const-string v0, "xcap.completeforwardto"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 310
    const-string v0, "xcap.ns.ss"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 313
    :pswitch_6
    const-string v0, "xcap.op"

    const-string v1, "03"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 314
    const-string v0, "xcap.protocol"

    const-string v1, "http"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    const-string v0, "xcap.putelcontenttype"

    const-string v1, "application/xcap-el+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    const-string v0, "xcap.handl409"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    const-string v0, "xcap.completeforwardto"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    const-string v0, "xcap.ns.ss"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 321
    :pswitch_7
    const-string v0, "xcap.op"

    const-string v1, "118"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 322
    const-string v0, "xcap.protocol"

    const-string v1, "http"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 323
    const-string v0, "xcap.putelcontenttype"

    const-string v1, "application/xcap-el+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 324
    const-string v0, "xcap.handl409"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    const-string v0, "xcap.completeforwardto"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    const-string v0, "xcap.ns.ss"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 329
    :pswitch_8
    const-string v0, "xcap.op"

    const-string v1, "19"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 330
    const-string v0, "xcap.protocol"

    const-string v1, "http"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    const-string v0, "xcap.putelcontenttype"

    const-string v1, "application/xcap-el+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    const-string v0, "xcap.handl409"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    const-string v0, "xcap.completeforwardto"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 334
    const-string v0, "xcap.ns.ss"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public setXcapRoot(Ljava/lang/String;)V
    .locals 2
    .param p1, "xcapRoot"    # Ljava/lang/String;

    .prologue
    .line 123
    sput-object p1, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    .line 125
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimServs;->buildDocumentUri()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 128
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    goto :goto_0
.end method

.method public setXcapRootByImpi(Ljava/lang/String;)V
    .locals 2
    .param p1, "impi"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 139
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    .line 141
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/simservs/client/SimServs;->buildRootUri()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public setXcapRootByMccMnc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;

    .prologue
    .line 154
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 155
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mMcc:Ljava/lang/String;

    .line 156
    iput-object p2, p0, Lcom/mediatek/simservs/client/SimServs;->mMnc:Ljava/lang/String;

    .line 158
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/simservs/client/SimServs;->buildRootUri()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public setXui(Ljava/lang/String;)V
    .locals 0
    .param p1, "xui"    # Ljava/lang/String;

    .prologue
    .line 165
    sput-object p1, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setXuiByImpu(Ljava/lang/String;)V
    .locals 1
    .param p1, "impu"    # Ljava/lang/String;

    .prologue
    .line 174
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 175
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mImpu:Ljava/lang/String;

    .line 176
    sput-object p1, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setXuiByImsiMccMnc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "mcc"    # Ljava/lang/String;
    .param p3, "mnc"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 187
    iput v3, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 188
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mImsi:Ljava/lang/String;

    .line 189
    iput-object p2, p0, Lcom/mediatek/simservs/client/SimServs;->mMcc:Ljava/lang/String;

    .line 190
    iput-object p3, p0, Lcom/mediatek/simservs/client/SimServs;->mMnc:Ljava/lang/String;

    .line 192
    const-string v0, "sip:%s@ims.mnc%03d.mcc%03d.3gppnetwork.org"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    .line 194
    return-void
.end method
