.class public Lcom/android/internal/telephony/MMTelSSUtils;
.super Ljava/lang/Object;
.source "MMTelSSUtils.java"


# static fields
.field private static IS_ENG_BUILD:Z = false

.field private static IS_USER_BUILD:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MMTelSSUtils"

.field private static final MCCMNC_BLOCK_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MODE_SS_CS:Ljava/lang/String; = "Prefer CS"

.field private static final MODE_SS_XCAP:Ljava/lang/String; = "Prefer XCAP"

.field private static final OP01_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP03_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP05_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP06_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP112_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP118_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP15_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP18_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP19_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROP_SS_MODE:Ljava/lang/String; = "persist.radio.ss.mode"

.field static queryXcapSrvDone:Z

.field static remoteIp:Ljava/lang/String;

.field static remoteIpv4:Ljava/lang/String;

.field static remoteIpv6:Ljava/lang/String;

.field static sXcapUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIpv4:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIpv6:Ljava/lang/String;

    .line 82
    sput-boolean v3, Lcom/android/internal/telephony/MMTelSSUtils;->queryXcapSrvDone:Z

    .line 89
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/MMTelSSUtils;->IS_USER_BUILD:Z

    .line 90
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/MMTelSSUtils;->IS_ENG_BUILD:Z

    .line 93
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "46000"

    aput-object v1, v0, v3

    const-string v1, "46002"

    aput-object v1, v0, v4

    const-string v1, "46007"

    aput-object v1, v0, v5

    const-string v1, "46008"

    aput-object v1, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MMTelSSUtils;->OP01_MCCMNC_LIST:Ljava/util/List;

    .line 97
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "20801"

    aput-object v1, v0, v3

    const-string v1, "20802"

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MMTelSSUtils;->OP03_MCCMNC_LIST:Ljava/util/List;

    .line 99
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "26201"

    aput-object v1, v0, v3

    const-string v1, "26206"

    aput-object v1, v0, v4

    const-string v1, "26278"

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MMTelSSUtils;->OP05_MCCMNC_LIST:Ljava/util/List;

    .line 102
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "26202"

    aput-object v1, v0, v3

    const-string v1, "26204"

    aput-object v1, v0, v4

    const-string v1, "26209"

    aput-object v1, v0, v5

    const-string v1, "20205"

    aput-object v1, v0, v6

    const-string v1, "21670"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "27402"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "27403"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "27201"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "22210"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "27801"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "20404"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "26801"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "22601"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "21401"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "21406"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "28602"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "23415"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "23591"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "90128"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MMTelSSUtils;->OP06_MCCMNC_LIST:Ljava/util/List;

    .line 106
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "26203"

    aput-object v1, v0, v3

    const-string v1, "26207"

    aput-object v1, v0, v4

    const-string v1, "26208"

    aput-object v1, v0, v5

    const-string v1, "26211"

    aput-object v1, v0, v6

    const-string v1, "26277"

    aput-object v1, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MMTelSSUtils;->OP15_MCCMNC_LIST:Ljava/util/List;

    .line 110
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "405854"

    aput-object v1, v0, v3

    const-string v1, "405855"

    aput-object v1, v0, v4

    const-string v1, "405856"

    aput-object v1, v0, v5

    const-string v1, "405872"

    aput-object v1, v0, v6

    const-string v1, "405857"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "405858"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "405859"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "405860"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "405861"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "405862"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "405873"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "405863"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "405864"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "405874"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "405865"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "405866"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "405867"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "405868"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "405869"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "405871"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "405870"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "405840"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MMTelSSUtils;->OP18_MCCMNC_LIST:Ljava/util/List;

    .line 134
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "50501"

    aput-object v1, v0, v3

    const-string v1, "50511"

    aput-object v1, v0, v4

    const-string v1, "50571"

    aput-object v1, v0, v5

    const-string v1, "50572"

    aput-object v1, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MMTelSSUtils;->OP19_MCCMNC_LIST:Ljava/util/List;

    .line 138
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "334020"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MMTelSSUtils;->OP112_MCCMNC_LIST:Ljava/util/List;

    .line 141
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "502152"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MMTelSSUtils;->OP118_MCCMNC_LIST:Ljava/util/List;

    .line 143
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "22210"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MMTelSSUtils;->MCCMNC_BLOCK_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addXcapRootPort(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "xcapRoot"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .prologue
    const/16 v3, 0x3a

    const/4 v2, 0x0

    .line 886
    const-string v0, "http"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 889
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    .line 890
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 893
    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp18IccCard(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":7077"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 897
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 901
    :cond_3
    return-object p0
.end method

.method public static getDefaultImsPhoneId()I
    .locals 6

    .prologue
    .line 936
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 937
    .local v4, "phones":[Lcom/android/internal/telephony/Phone;
    move-object v0, v4

    .local v0, "arr$":[Lcom/android/internal/telephony/Phone;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 938
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 939
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    .line 943
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :goto_1
    return v5

    .line 937
    .restart local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 943
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    goto :goto_1
.end method

.method public static getHttpCredentialPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    const-string v0, ""

    .line 397
    .local v0, "sPassword":Ljava/lang/String;
    return-object v0
.end method

.method public static getHttpCredentialUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    const-string v0, ""

    .line 390
    .local v0, "sUserName":Ljava/lang/String;
    return-object v0
.end method

.method private static getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 952
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getXIntendedId(I)Ljava/lang/String;
    .locals 1
    .param p0, "phoneId"    # I

    .prologue
    .line 349
    invoke-static {p0}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXcapRootUri(I)Ljava/lang/String;
    .locals 13
    .param p0, "phoneId"    # I

    .prologue
    .line 152
    const-string v10, "ro.mtk_bsp_package"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 153
    const-string v5, ""

    .line 258
    :cond_0
    :goto_0
    return-object v5

    .line 155
    :cond_1
    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->getInstance()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v6

    .line 157
    .local v6, "simSrv":Lcom/mediatek/simservs/client/SimServs;
    invoke-static {p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 158
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/mediatek/simservs/client/SimServs;->setOperator(I)V

    .line 179
    :goto_1
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/SimServs;->getXcapRoot()Ljava/lang/String;

    move-result-object v5

    .line 180
    .local v5, "rootUri":Ljava/lang/String;
    const-string v10, "MMTelSSUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getXcapRootUri():"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v7

    .line 182
    .local v7, "subId":I
    if-nez v5, :cond_0

    .line 185
    if-eqz v5, :cond_a

    .line 187
    invoke-virtual {v6, v5}, Lcom/mediatek/simservs/client/SimServs;->setXcapRoot(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    .end local v5    # "rootUri":Ljava/lang/String;
    .end local v7    # "subId":I
    :cond_2
    invoke-static {p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp03IccCard(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 160
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Lcom/mediatek/simservs/client/SimServs;->setOperator(I)V

    goto :goto_1

    .line 161
    :cond_3
    invoke-static {p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp05IccCard(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 162
    const/4 v10, 0x7

    invoke-virtual {v6, v10}, Lcom/mediatek/simservs/client/SimServs;->setOperator(I)V

    goto :goto_1

    .line 163
    :cond_4
    invoke-static {p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 164
    const/4 v10, 0x2

    invoke-virtual {v6, v10}, Lcom/mediatek/simservs/client/SimServs;->setOperator(I)V

    goto :goto_1

    .line 165
    :cond_5
    invoke-static {p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp15IccCard(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 166
    const/4 v10, 0x5

    invoke-virtual {v6, v10}, Lcom/mediatek/simservs/client/SimServs;->setOperator(I)V

    goto :goto_1

    .line 167
    :cond_6
    invoke-static {p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp18IccCard(I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 168
    const-string v10, "MMTelSSUtils"

    const-string v11, "setFallBackAddressType"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v10, 0x4

    invoke-virtual {v6, v10}, Lcom/mediatek/simservs/client/SimServs;->setOperator(I)V

    .line 170
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/mediatek/simservs/client/SimServs;->setFallBackAddressType(I)V

    goto :goto_1

    .line 171
    :cond_7
    invoke-static {p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp19IccCard(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 172
    const/16 v10, 0x9

    invoke-virtual {v6, v10}, Lcom/mediatek/simservs/client/SimServs;->setOperator(I)V

    goto :goto_1

    .line 173
    :cond_8
    invoke-static {p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp118IccCard(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 174
    const/4 v10, 0x6

    invoke-virtual {v6, v10}, Lcom/mediatek/simservs/client/SimServs;->setOperator(I)V

    goto/16 :goto_1

    .line 176
    :cond_9
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/mediatek/simservs/client/SimServs;->setOperator(I)V

    goto/16 :goto_1

    .line 191
    .restart local v5    # "rootUri":Ljava/lang/String;
    .restart local v7    # "subId":I
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v9

    .line 192
    .local v9, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    const/4 v10, 0x3

    invoke-virtual {v9, p0, v10}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v8

    .line 194
    .local v8, "uiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v1, 0x0

    .line 197
    .local v1, "impi":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v10

    invoke-interface {v10, v7}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpiForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 208
    :goto_2
    if-eqz v8, :cond_c

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c

    .line 209
    const-string v10, "MMTelSSUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getXcapRootUri():get APP_FAM_IMS and impi="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {v6, v1}, Lcom/mediatek/simservs/client/SimServs;->setXcapRootByImpi(Ljava/lang/String;)V

    .line 253
    :cond_b
    :goto_3
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/SimServs;->getXcapRoot()Ljava/lang/String;

    move-result-object v5

    .line 254
    const-string v10, "MMTelSSUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getXcapRoot():rootUri="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    const-string v10, "MMTelSSUtils"

    const-string v11, "getXcapRootUri(): RemoteExeption for getIsimImpiForSubscriber()"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 202
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v10, "MMTelSSUtils"

    const-string v11, "getXcapRootUri(): NullPointerExeption for getIsimImpiForSubscriber()"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 213
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_c
    const/4 v3, 0x0

    .line 216
    .local v3, "mccMnc":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {v9, p0, v10}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v8

    .line 218
    if-nez v8, :cond_d

    .line 219
    const-string v10, "MMTelSSUtils"

    const-string v11, "getXcapRootUri():Select USIM/SIM uiccApp failed: null pointer"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v5, ""

    goto/16 :goto_0

    .line 224
    :cond_d
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v10

    if-eqz v10, :cond_11

    .line 225
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 226
    const-string v2, ""

    .line 227
    .local v2, "mcc":Ljava/lang/String;
    const-string v4, ""

    .line 228
    .local v4, "mnc":Ljava/lang/String;
    if-eqz v3, :cond_e

    .line 229
    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 230
    const/4 v10, 0x3

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 233
    :cond_e
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_f

    .line 234
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 235
    const-string v10, "MMTelSSUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "add 0 to mnc ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_f
    const-string v10, "MMTelSSUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get mccMnc="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " from the IccRecrods"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v2    # "mcc":Ljava/lang/String;
    .end local v4    # "mnc":Ljava/lang/String;
    :goto_4
    if-eqz v3, :cond_b

    .line 243
    const-string v10, "460000"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "460002"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "460007"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "460008"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "460011"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 246
    :cond_10
    const-string v10, "460"

    const-string v11, "000"

    invoke-virtual {v6, v10, v11}, Lcom/mediatek/simservs/client/SimServs;->setXcapRootByMccMnc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 239
    :cond_11
    const-string v10, "MMTelSSUtils"

    const-string v11, "getXcapRootUri():uiccApp get null IccRecords!"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 248
    :cond_12
    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lcom/mediatek/simservs/client/SimServs;->setXcapRootByMccMnc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public static getXui(I)Ljava/lang/String;
    .locals 15
    .param p0, "phoneId"    # I

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x0

    .line 267
    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->getInstance()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v6

    .line 268
    .local v6, "simSrv":Lcom/mediatek/simservs/client/SimServs;
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/SimServs;->getXui()Ljava/lang/String;

    move-result-object v5

    .line 269
    .local v5, "sXui":Ljava/lang/String;
    const-string v10, "MMTelSSUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getXui():sXui from simSrv="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v7

    .line 271
    .local v7, "subId":I
    if-nez v5, :cond_6

    .line 276
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/mediatek/ims/internal/ImsXuiManager;->getXui(I)Ljava/lang/String;

    move-result-object v5

    .line 277
    const-string v10, "MMTelSSUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getXui():sXui from XuiManager="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    if-eqz v5, :cond_0

    .line 279
    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v5, v10, v13

    .line 280
    invoke-virtual {v6, v5}, Lcom/mediatek/simservs/client/SimServs;->setXui(Ljava/lang/String;)V

    move-object v10, v5

    .line 338
    :goto_0
    return-object v10

    .line 284
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v9

    .line 285
    .local v9, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    invoke-virtual {v9, p0, v14}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v8

    .line 287
    .local v8, "uiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v8, :cond_3

    .line 290
    const-string v3, ""

    .line 291
    .local v3, "sImpu":Ljava/lang/String;
    const/4 v1, 0x0

    .line 293
    .local v1, "impu":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v10

    invoke-interface {v10, v7}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpuForSubscriber(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 302
    :goto_1
    if-eqz v1, :cond_1

    .line 303
    aget-object v3, v1, v13

    .line 305
    :cond_1
    const-string v10, "MMTelSSUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getXui():sImpu="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {v6, v3}, Lcom/mediatek/simservs/client/SimServs;->setXuiByImpu(Ljava/lang/String;)V

    .line 332
    .end local v1    # "impu":[Ljava/lang/String;
    .end local v3    # "sImpu":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/SimServs;->getXui()Ljava/lang/String;

    move-result-object v5

    .line 333
    const-string v10, "MMTelSSUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getXui():sXui="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v5

    .line 334
    goto :goto_0

    .line 294
    .restart local v1    # "impu":[Ljava/lang/String;
    .restart local v3    # "sImpu":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    const-string v10, "MMTelSSUtils"

    const-string v11, "getXui(): RemoteExeption for getIsimImpuForSubscriber()"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 297
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v10, "MMTelSSUtils"

    const-string v11, "getXui(): NullPointerExeption for getIsimImpiForSubscriber()"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 309
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v1    # "impu":[Ljava/lang/String;
    .end local v3    # "sImpu":Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, "sImsi":Ljava/lang/String;
    const-string v10, "MMTelSSUtils"

    const-string v11, "getXui():IMS uiccApp is null, try to select USIM uiccApp"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v10, 0x1

    invoke-virtual {v9, p0, v10}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v8

    .line 313
    if-nez v8, :cond_4

    .line 314
    const-string v10, "MMTelSSUtils"

    const-string v11, "getXui():Select USIM/SIM uiccApp failed: null pointer"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 318
    :cond_4
    const/4 v2, 0x0

    .line 319
    .local v2, "mccMnc":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 320
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 321
    const-string v10, "MMTelSSUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getXui():Imsi="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mccMnc="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :goto_3
    if-eqz v2, :cond_2

    .line 327
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v4, v10, v11}, Lcom/mediatek/simservs/client/SimServs;->setXuiByImsiMccMnc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 323
    :cond_5
    const-string v10, "MMTelSSUtils"

    const-string v11, "getXui():uiccApp get null IccRecords!"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 337
    .end local v2    # "mccMnc":Ljava/lang/String;
    .end local v4    # "sImsi":Ljava/lang/String;
    .end local v8    # "uiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v9    # "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    :cond_6
    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v5, v10, v13

    move-object v10, v5

    .line 338
    goto/16 :goto_0
.end method

.method public static isEnableXcapHttpResponse409(I)Z
    .locals 2
    .param p0, "phoneId"    # I

    .prologue
    .line 961
    invoke-static {p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp05IccCard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    const-string v0, "MMTelSSUtils"

    const-string v1, "isEnableXcapHttpResponse409 is true."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const/4 v0, 0x1

    .line 967
    :goto_0
    return v0

    .line 966
    :cond_0
    const-string v0, "MMTelSSUtils"

    const-string v1, "isEnableXcapHttpResponse409 is false."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGsmUtSupport(I)Z
    .locals 3
    .param p0, "phoneId"    # I

    .prologue
    const/4 v0, 0x0

    .line 691
    const-string v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 709
    :cond_0
    :goto_0
    return v0

    .line 695
    :cond_1
    invoke-static {}, Lcom/android/ims/ImsConfig$FeatureValueConstants;->getVolteAvailable()I

    move-result v1

    if-ltz v1, :cond_0

    .line 696
    const-string v1, "ro.mtk_ims_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ro.mtk_volte_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 698
    invoke-static {p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp03IccCard(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp05IccCard(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp15IccCard(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp18IccCard(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-static {p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isUsimCard(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isImsPdnOperator(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .prologue
    .line 789
    invoke-static {p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v0

    return v0
.end method

.method public static isNotSupportXcap(I)Z
    .locals 6
    .param p0, "phoneId"    # I

    .prologue
    .line 873
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    .line 874
    .local v2, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 875
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 877
    .local v1, "mccMnc":Ljava/lang/String;
    const-string v3, "MMTelSSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNotSupportXcap, mccMnc is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    sget-object v3, Lcom/android/internal/telephony/MMTelSSUtils;->MCCMNC_BLOCK_LIST:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 881
    .end local v1    # "mccMnc":Ljava/lang/String;
    :goto_0
    return v3

    .line 880
    :cond_0
    const-string v3, "MMTelSSUtils"

    const-string v4, "isNotSupportXcap: false"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isNotifyCallerTest()Z
    .locals 2

    .prologue
    .line 923
    const-string v0, "persist.xcap.notifycaller.test"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    const/4 v0, 0x1

    .line 926
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOp01IccCard(I)Z
    .locals 6
    .param p0, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 713
    const-string v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 725
    :goto_0
    return v3

    .line 717
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    .line 718
    .local v2, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    const/4 v4, 0x1

    invoke-virtual {v2, p0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 719
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    .line 720
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 721
    .local v1, "mccMnc":Ljava/lang/String;
    const-string v3, "MMTelSSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOp01IccCard, mccMnc is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    sget-object v3, Lcom/android/internal/telephony/MMTelSSUtils;->OP01_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 724
    .end local v1    # "mccMnc":Ljava/lang/String;
    :cond_1
    const-string v4, "MMTelSSUtils"

    const-string v5, "isOp01IccCard: false"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isOp03IccCard(I)Z
    .locals 7
    .param p0, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 729
    const-string v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 743
    :goto_0
    return v2

    .line 733
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    .line 734
    .local v3, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 735
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    .line 736
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 737
    .local v1, "mccMnc":Ljava/lang/String;
    const-string v4, "MMTelSSUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isOp03IccCard, mccMnc is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    sget-object v4, Lcom/android/internal/telephony/MMTelSSUtils;->OP03_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 739
    .local v2, "retVal":Z
    const-string v4, "MMTelSSUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isOp03IccCard()=>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 742
    .end local v1    # "mccMnc":Ljava/lang/String;
    .end local v2    # "retVal":Z
    :cond_1
    const-string v4, "MMTelSSUtils"

    const-string v5, "isOp03IccCard: false"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isOp05IccCard(I)Z
    .locals 7
    .param p0, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 747
    const-string v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 761
    :goto_0
    return v2

    .line 751
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    .line 752
    .local v3, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 753
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    .line 754
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 755
    .local v1, "mccMnc":Ljava/lang/String;
    const-string v4, "MMTelSSUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isOp05IccCard, mccMnc is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    sget-object v4, Lcom/android/internal/telephony/MMTelSSUtils;->OP05_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 757
    .local v2, "retVal":Z
    const-string v4, "MMTelSSUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isOp05IccCard()=>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 760
    .end local v1    # "mccMnc":Ljava/lang/String;
    .end local v2    # "retVal":Z
    :cond_1
    const-string v4, "MMTelSSUtils"

    const-string v5, "isOp05IccCard: false"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isOp06IccCard(I)Z
    .locals 7
    .param p0, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 765
    const-string v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 779
    :goto_0
    return v2

    .line 769
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    .line 770
    .local v3, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 771
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    .line 772
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 773
    .local v1, "mccMnc":Ljava/lang/String;
    const-string v4, "MMTelSSUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isOp06IccCard, mccMnc is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    sget-object v4, Lcom/android/internal/telephony/MMTelSSUtils;->OP06_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 775
    .local v2, "retVal":Z
    const-string v4, "MMTelSSUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isOp06IccCard()=>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 778
    .end local v1    # "mccMnc":Ljava/lang/String;
    .end local v2    # "retVal":Z
    :cond_1
    const-string v4, "MMTelSSUtils"

    const-string v5, "isOp06IccCard: false"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isOp112IccCard(I)Z
    .locals 6
    .param p0, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 841
    const-string v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 853
    :goto_0
    return v3

    .line 845
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    .line 846
    .local v2, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    const/4 v4, 0x1

    invoke-virtual {v2, p0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 847
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    .line 848
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 849
    .local v1, "mccMnc":Ljava/lang/String;
    const-string v3, "MMTelSSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOp112IccCard, mccMnc is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    sget-object v3, Lcom/android/internal/telephony/MMTelSSUtils;->OP112_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 852
    .end local v1    # "mccMnc":Ljava/lang/String;
    :cond_1
    const-string v4, "MMTelSSUtils"

    const-string v5, "isOp112IccCard: false"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isOp118IccCard(I)Z
    .locals 6
    .param p0, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 857
    const-string v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 869
    :goto_0
    return v3

    .line 861
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    .line 862
    .local v2, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    const/4 v4, 0x1

    invoke-virtual {v2, p0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 863
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    .line 864
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 865
    .local v1, "mccMnc":Ljava/lang/String;
    const-string v3, "MMTelSSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOp118IccCard, mccMnc is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    sget-object v3, Lcom/android/internal/telephony/MMTelSSUtils;->OP118_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 868
    .end local v1    # "mccMnc":Ljava/lang/String;
    :cond_1
    const-string v4, "MMTelSSUtils"

    const-string v5, "isOp118IccCard: false"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isOp15IccCard(I)Z
    .locals 6
    .param p0, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 793
    const-string v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 805
    :goto_0
    return v3

    .line 797
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    .line 798
    .local v2, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    const/4 v4, 0x1

    invoke-virtual {v2, p0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 799
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    .line 800
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 801
    .local v1, "mccMnc":Ljava/lang/String;
    const-string v3, "MMTelSSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOp15IccCard, mccMnc is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    sget-object v3, Lcom/android/internal/telephony/MMTelSSUtils;->OP15_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 804
    .end local v1    # "mccMnc":Ljava/lang/String;
    :cond_1
    const-string v4, "MMTelSSUtils"

    const-string v5, "isOp15IccCard: false"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isOp18IccCard(I)Z
    .locals 6
    .param p0, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 809
    const-string v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 821
    :goto_0
    return v3

    .line 813
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    .line 814
    .local v2, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    const/4 v4, 0x1

    invoke-virtual {v2, p0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 815
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    .line 816
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 817
    .local v1, "mccMnc":Ljava/lang/String;
    const-string v3, "MMTelSSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOp18IccCard, mccMnc is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    sget-object v3, Lcom/android/internal/telephony/MMTelSSUtils;->OP18_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 820
    .end local v1    # "mccMnc":Ljava/lang/String;
    :cond_1
    const-string v4, "MMTelSSUtils"

    const-string v5, "isOp18IccCard: false"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isOp19IccCard(I)Z
    .locals 6
    .param p0, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 825
    const-string v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 837
    :goto_0
    return v3

    .line 829
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    .line 830
    .local v2, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    const/4 v4, 0x1

    invoke-virtual {v2, p0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 831
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    .line 832
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 833
    .local v1, "mccMnc":Ljava/lang/String;
    const-string v3, "MMTelSSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOp19IccCard, mccMnc is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    sget-object v3, Lcom/android/internal/telephony/MMTelSSUtils;->OP19_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 836
    .end local v1    # "mccMnc":Ljava/lang/String;
    :cond_1
    const-string v4, "MMTelSSUtils"

    const-string v5, "isOp19IccCard: false"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isOutgoingCallBarring(Ljava/lang/String;)Z
    .locals 1
    .param p0, "facility"    # Ljava/lang/String;

    .prologue
    .line 914
    const-string v0, "AO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 917
    :cond_0
    const/4 v0, 0x1

    .line 919
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportXcap()Z
    .locals 2

    .prologue
    .line 402
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getDefaultImsPhoneId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap(ILandroid/net/Network;)Z

    move-result v0

    return v0
.end method

.method public static isSupportXcap(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .prologue
    .line 420
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap(ILandroid/net/Network;)Z

    move-result v0

    return v0
.end method

.method public static isSupportXcap(ILandroid/net/Network;)Z
    .locals 30
    .param p0, "phoneId"    # I
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 430
    const-string v25, "ro.mtk_bsp_package"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 431
    const/16 v25, 0x0

    .line 678
    :goto_0
    return v25

    .line 434
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    .line 435
    const/16 v25, 0x0

    sput-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    .line 436
    const/16 v25, 0x0

    sput-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIpv4:Ljava/lang/String;

    .line 437
    const/16 v25, 0x0

    sput-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIpv6:Ljava/lang/String;

    .line 438
    const/4 v12, 0x0

    .line 439
    .local v12, "ia":[Ljava/net/InetAddress;
    const/16 v25, 0x0

    sput-boolean v25, Lcom/android/internal/telephony/MMTelSSUtils;->queryXcapSrvDone:Z

    .line 441
    const-string v21, ""

    .line 442
    .local v21, "ss_mode":Ljava/lang/String;
    const-string v25, "ro.mtk_ims_support"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    const-string v25, "ro.mtk_volte_support"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 445
    const-string v25, "persist.radio.ss.mode"

    const-string v26, "Prefer XCAP"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 446
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isNotSupportXcap(I)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 447
    const-string v21, "Prefer CS"

    .line 452
    :cond_1
    :goto_1
    const-string v25, "MMTelSSUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "isSupportXcap(): sXcapUri="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ",ss_mode="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v16, ""

    .line 456
    .local v16, "preConfigPort":Ljava/lang/String;
    const-string v25, "ro.mtk_ims_support"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    const-string v25, "ro.mtk_volte_support"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_4

    .line 459
    :cond_2
    const-string v25, "MMTelSSUtils"

    const-string v26, "Not Enable VOLTE feature! Return directly to use CSFB SS"

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 450
    .end local v16    # "preConfigPort":Ljava/lang/String;
    :cond_3
    const-string v25, "persist.radio.ss.mode"

    const-string v26, "Prefer CS"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto :goto_1

    .line 463
    .restart local v16    # "preConfigPort":Ljava/lang/String;
    :cond_4
    const-string v25, "Prefer CS"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 464
    const-string v25, "MMTelSSUtils"

    const-string v26, "Config SS via CS! Return directly!"

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 468
    :cond_5
    sget-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    if-eqz v25, :cond_1d

    .line 475
    const/4 v4, 0x0

    .line 478
    .local v4, "XcapSrvHostName":Ljava/lang/String;
    :try_start_0
    sget-boolean v25, Lcom/android/internal/telephony/MMTelSSUtils;->IS_ENG_BUILD:Z

    if-eqz v25, :cond_7

    .line 479
    const-string v25, "mediatek.simserv.xcaproot"

    const-string v26, "NON_CONFIG"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 480
    .local v3, "TestingXcapRoot":Ljava/lang/String;
    const-string v25, "MMTelSSUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mediatek.simserv.xcaproot="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v25, "NON_CONFIG"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 482
    sput-object v3, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    .line 483
    const-string v25, "MMTelSSUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Replace sXcapUri="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_6
    const-string v25, "http"

    sget-object v26, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const/16 v27, 0x0

    sget-object v28, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const/16 v29, 0x3a

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v28

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_7

    const-string v25, "https"

    sget-object v26, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const/16 v27, 0x0

    sget-object v28, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const/16 v29, 0x3a

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v28

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_7

    .line 492
    sget-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    sget-object v26, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const/16 v27, 0x3a

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 494
    .local v15, "portSubString":Ljava/lang/String;
    const-string v25, "MMTelSSUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "portSubString="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/16 v25, 0x0

    const-string v26, "/"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 496
    sget-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const/16 v26, 0x0

    sget-object v27, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const/16 v28, 0x3a

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    .line 498
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    .line 500
    const-string v25, "MMTelSSUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "preConfig sXcapUri="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " with preConfigPort="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    .end local v3    # "TestingXcapRoot":Ljava/lang/String;
    .end local v15    # "portSubString":Ljava/lang/String;
    :cond_7
    sget-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const-string v26, "http://"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 506
    sget-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const/16 v26, 0x7

    sget-object v27, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 510
    :cond_8
    :goto_2
    const-string v25, "MMTelSSUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "isSupportXcap():XcapSrvHostName="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    if-eqz p1, :cond_b

    .line 512
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v12

    .line 518
    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp18IccCard(I)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 519
    move-object v6, v12

    .local v6, "arr$":[Ljava/net/InetAddress;
    array-length v13, v6

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_4
    if-ge v11, v13, :cond_d

    aget-object v5, v6, v11

    .line 520
    .local v5, "addr":Ljava/net/InetAddress;
    instance-of v0, v5, Ljava/net/Inet4Address;

    move/from16 v25, v0

    if-eqz v25, :cond_c

    .line 521
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIpv4:Ljava/lang/String;

    .line 522
    const-string v25, "MMTelSSUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "xcap server ip : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIpv4:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_9
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 507
    .end local v5    # "addr":Ljava/net/InetAddress;
    .end local v6    # "arr$":[Ljava/net/InetAddress;
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    :cond_a
    sget-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const-string v26, "https://"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 508
    sget-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const/16 v26, 0x8

    sget-object v27, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 514
    :cond_b
    invoke-static {v4}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v12

    goto :goto_3

    .line 524
    .restart local v5    # "addr":Ljava/net/InetAddress;
    .restart local v6    # "arr$":[Ljava/net/InetAddress;
    .restart local v11    # "i$":I
    .restart local v13    # "len$":I
    :cond_c
    instance-of v0, v5, Ljava/net/Inet6Address;

    move/from16 v25, v0

    if-eqz v25, :cond_9

    .line 525
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIpv6:Ljava/lang/String;

    .line 526
    const-string v25, "MMTelSSUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "xcap server ip : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIpv6:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 539
    .end local v5    # "addr":Ljava/net/InetAddress;
    .end local v6    # "arr$":[Ljava/net/InetAddress;
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    :catch_0
    move-exception v9

    .line 540
    .local v9, "ex":Ljava/lang/Exception;
    const-string v25, "MMTelSSUtils"

    const-string v26, "sXcapUri getHostAddress fail : "

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 543
    sget-boolean v25, Lcom/android/internal/telephony/MMTelSSUtils;->IS_ENG_BUILD:Z

    if-eqz v25, :cond_d

    .line 546
    const-string v25, "mediatek.simserv.xcapip"

    const-string v26, ""

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    .line 547
    const-string v25, "mediatek.simserv.xcapip"

    const-string v26, ""

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIpv4:Ljava/lang/String;

    .line 548
    const-string v25, "mediatek.simserv.xcapip"

    const-string v26, ""

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIpv6:Ljava/lang/String;

    .line 551
    .end local v9    # "ex":Ljava/lang/Exception;
    :cond_d
    :goto_6
    const/16 v25, 0x1

    sput-boolean v25, Lcom/android/internal/telephony/MMTelSSUtils;->queryXcapSrvDone:Z

    .line 555
    :cond_e
    sget-boolean v25, Lcom/android/internal/telephony/MMTelSSUtils;->queryXcapSrvDone:Z

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    .line 558
    const-string v25, "MMTelSSUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "QueryXcapSrvDone:xcap server remoteIp : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string v25, "MMTelSSUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "QueryXcapSrvDone:xcap server remoteIpv4 : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIpv4:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v25, "MMTelSSUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "QueryXcapSrvDone:xcap server remoteIpv6 : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIpv6:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v7, 0x0

    .line 563
    .local v7, "checkIp":Z
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp18IccCard(I)Z

    move-result v25

    if-eqz v25, :cond_17

    .line 564
    sget-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIpv4:Ljava/lang/String;

    if-nez v25, :cond_f

    sget-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIpv6:Ljava/lang/String;

    if-eqz v25, :cond_16

    :cond_f
    const/4 v7, 0x1

    .line 568
    :goto_7
    if-eqz v7, :cond_1d

    const-string v25, "Prefer XCAP"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1d

    .line 570
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v20

    .line 571
    .local v20, "sf":Ljavax/net/SocketFactory;
    const/16 v18, 0x0

    .line 572
    .local v18, "s":Ljava/net/Socket;
    const/16 v17, 0x0

    .line 575
    .local v17, "reachable":Z
    const-string v24, ""

    .line 576
    .local v24, "testingPort":Ljava/lang/String;
    sget-boolean v25, Lcom/android/internal/telephony/MMTelSSUtils;->IS_ENG_BUILD:Z

    if-eqz v25, :cond_10

    .line 577
    const-string v25, "mediatek.simserv.port"

    const-string v26, ""

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 582
    :cond_10
    const/4 v14, 0x0

    .line 583
    .local v14, "portList":[Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v25

    if-nez v25, :cond_11

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v25

    if-eqz v25, :cond_19

    .line 584
    :cond_11
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v14, v0, [Ljava/lang/String;

    .line 585
    const/16 v25, 0x0

    const-string v26, "80"

    aput-object v26, v14, v25

    .line 586
    const/16 v25, 0x1

    aput-object v16, v14, v25

    .line 587
    const/16 v25, 0x2

    aput-object v24, v14, v25

    .line 601
    :goto_8
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_9
    array-length v0, v14

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v10, v0, :cond_1d

    .line 602
    const/16 v23, 0x0

    .line 603
    .local v23, "tempPort":I
    aget-object v25, v14, v10

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_12

    .line 604
    aget-object v25, v14, v10

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 607
    :cond_12
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp18IccCard(I)Z

    move-result v25

    if-eqz v25, :cond_1c

    .line 608
    const-string v25, "MMTelSSUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "testingPort="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "try connecting to IP="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIpv4:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " and port="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    aget-object v25, v14, v10

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1b

    .line 601
    :cond_13
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 530
    .end local v7    # "checkIp":Z
    .end local v10    # "i":I
    .end local v14    # "portList":[Ljava/lang/String;
    .end local v17    # "reachable":Z
    .end local v18    # "s":Ljava/net/Socket;
    .end local v20    # "sf":Ljavax/net/SocketFactory;
    .end local v23    # "tempPort":I
    .end local v24    # "testingPort":Ljava/lang/String;
    :cond_14
    move-object v6, v12

    .restart local v6    # "arr$":[Ljava/net/InetAddress;
    :try_start_1
    array-length v13, v6

    .restart local v13    # "len$":I
    const/4 v11, 0x0

    .restart local v11    # "i$":I
    :goto_a
    if-ge v11, v13, :cond_d

    aget-object v5, v6, v11

    .line 531
    .restart local v5    # "addr":Ljava/net/InetAddress;
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    .line 532
    sget-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    if-eqz v25, :cond_15

    .line 533
    const-string v25, "MMTelSSUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "xcap server ip : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    .line 530
    :cond_15
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 564
    .end local v5    # "addr":Ljava/net/InetAddress;
    .end local v6    # "arr$":[Ljava/net/InetAddress;
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    .restart local v7    # "checkIp":Z
    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 566
    :cond_17
    sget-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    if-eqz v25, :cond_18

    const/4 v7, 0x1

    :goto_b
    goto/16 :goto_7

    :cond_18
    const/4 v7, 0x0

    goto :goto_b

    .line 588
    .restart local v14    # "portList":[Ljava/lang/String;
    .restart local v17    # "reachable":Z
    .restart local v18    # "s":Ljava/net/Socket;
    .restart local v20    # "sf":Ljavax/net/SocketFactory;
    .restart local v24    # "testingPort":Ljava/lang/String;
    :cond_19
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp18IccCard(I)Z

    move-result v25

    if-eqz v25, :cond_1a

    .line 589
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v14, v0, [Ljava/lang/String;

    .line 590
    const/16 v25, 0x0

    const-string v26, "7077"

    aput-object v26, v14, v25

    .line 591
    const/16 v25, 0x1

    const-string v26, "443"

    aput-object v26, v14, v25

    .line 592
    const/16 v25, 0x2

    aput-object v16, v14, v25

    .line 593
    const/16 v25, 0x3

    aput-object v24, v14, v25

    goto/16 :goto_8

    .line 595
    :cond_1a
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v14, v0, [Ljava/lang/String;

    .line 596
    const/16 v25, 0x0

    const-string v26, "443"

    aput-object v26, v14, v25

    .line 597
    const/16 v25, 0x1

    const-string v26, "80"

    aput-object v26, v14, v25

    .line 598
    const/16 v25, 0x2

    aput-object v16, v14, v25

    .line 599
    const/16 v25, 0x3

    aput-object v24, v14, v25

    goto/16 :goto_8

    .line 613
    .restart local v10    # "i":I
    .restart local v23    # "tempPort":I
    :cond_1b
    :try_start_2
    new-instance v19, Ljava/net/InetSocketAddress;

    sget-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIpv4:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 614
    .local v19, "sa":Ljava/net/InetSocketAddress;
    invoke-virtual/range {v20 .. v20}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v18

    .line 615
    const/16 v25, 0x2710

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 616
    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->isConnected()Z

    move-result v17

    .line 617
    const-string v25, "MMTelSSUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Connect to XCAP_IP="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIpv4:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " with port="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    aget-object v27, v14, v10

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", reachable="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 624
    .end local v19    # "sa":Ljava/net/InetSocketAddress;
    :goto_c
    const-string v25, "MMTelSSUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "testingPort="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "try connecting to IP="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIpv6:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " and port="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    aget-object v25, v14, v10

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_13

    .line 629
    :try_start_3
    new-instance v19, Ljava/net/InetSocketAddress;

    sget-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIpv6:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 630
    .restart local v19    # "sa":Ljava/net/InetSocketAddress;
    invoke-virtual/range {v20 .. v20}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v18

    .line 631
    const/16 v25, 0x2710

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 632
    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->isConnected()Z

    move-result v17

    .line 633
    const-string v25, "MMTelSSUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Connect to XCAP_IP="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIpv6:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " with port="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    aget-object v27, v14, v10

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", reachable="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 640
    .end local v19    # "sa":Ljava/net/InetSocketAddress;
    :goto_d
    if-eqz v17, :cond_13

    .line 641
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 620
    :catch_1
    move-exception v8

    .line 621
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    .line 636
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 637
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 644
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1c
    const-string v25, "MMTelSSUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "testingPort="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "try connecting to IP="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " and port="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    aget-object v25, v14, v10

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_13

    .line 649
    :try_start_4
    new-instance v19, Ljava/net/InetSocketAddress;

    sget-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 650
    .restart local v19    # "sa":Ljava/net/InetSocketAddress;
    invoke-virtual/range {v20 .. v20}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v18

    .line 651
    const/16 v25, 0x2710

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 652
    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->isConnected()Z

    move-result v17

    .line 653
    const-string v25, "MMTelSSUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Connect to XCAP_IP="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " with port="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    aget-object v27, v14, v10

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", reachable="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 659
    .end local v19    # "sa":Ljava/net/InetSocketAddress;
    :goto_e
    if-eqz v17, :cond_13

    .line 660
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 656
    :catch_3
    move-exception v8

    .line 657
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e

    .line 668
    .end local v4    # "XcapSrvHostName":Ljava/lang/String;
    .end local v7    # "checkIp":Z
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "i":I
    .end local v14    # "portList":[Ljava/lang/String;
    .end local v17    # "reachable":Z
    .end local v18    # "s":Ljava/net/Socket;
    .end local v20    # "sf":Ljavax/net/SocketFactory;
    .end local v23    # "tempPort":I
    .end local v24    # "testingPort":Ljava/lang/String;
    :cond_1d
    sget-boolean v25, Lcom/android/internal/telephony/MMTelSSUtils;->IS_ENG_BUILD:Z

    if-eqz v25, :cond_1e

    .line 669
    const-string v25, "MMTelSSUtils"

    const-string v26, "isSupportXcap(): start to get ss tcname"

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const-string v25, "ril.ss.tcname"

    const-string v26, "Empty"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 672
    .local v22, "tc_name":Ljava/lang/String;
    const-string v25, "MMTelSSUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "isSupportXcap():tc_name="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    if-eqz v22, :cond_1e

    const-string v25, "Single_TC_"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1e

    .line 674
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 678
    .end local v22    # "tc_name":Ljava/lang/String;
    :cond_1e
    const/16 v25, 0x0

    goto/16 :goto_0
.end method

.method public static isSupportXcap(Landroid/net/Network;)Z
    .locals 1
    .param p0, "network"    # Landroid/net/Network;

    .prologue
    .line 411
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getDefaultImsPhoneId()I

    move-result v0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap(ILandroid/net/Network;)Z

    move-result v0

    return v0
.end method

.method public static isUsimCard(I)Z
    .locals 2
    .param p0, "phoneId"    # I

    .prologue
    .line 904
    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 905
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v0

    .line 906
    .local v0, "iccCardType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "USIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 907
    const/4 v1, 0x1

    .line 910
    .end local v0    # "iccCardType":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
