.class public Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;
.super Ljava/lang/Object;
.source "GnDecorateOperatorName.java"


# static fields
.field static final TAG:Ljava/lang/String; = "GnDecorateOperatorName"

.field static final operatorNameMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;


# instance fields
.field CT_ID:I

.field MOBILE_ID:I

.field UNICOM_ID:I

.field keySet:[Ljava/lang/String;

.field otherKeySet:[Ljava/lang/String;

.field otherValueSet:[I

.field valueSet:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->operatorNameMap:Landroid/util/ArrayMap;

    .line 24
    new-instance v0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->sInstance:Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const v0, 0x805001d

    iput v0, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->MOBILE_ID:I

    .line 27
    const v0, 0x805001e

    iput v0, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->UNICOM_ID:I

    .line 28
    const v0, 0x8050063

    iput v0, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->CT_ID:I

    .line 29
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "China Mobile"

    aput-object v1, v0, v3

    const-string v1, "CMCC"

    aput-object v1, v0, v4

    const-string v1, "CU-GSM"

    aput-object v1, v0, v5

    const-string v1, "China Unicom"

    aput-object v1, v0, v6

    const-string v1, "\u4e2d\u56fd\u79fb\u52a8"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u4e2d\u56fd\u8054\u901a"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "China Telecom"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CHN-CT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u4e2d\u56fd\u7535\u4fe1"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->keySet:[Ljava/lang/String;

    .line 30
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "cmcc"

    aput-object v1, v0, v3

    const-string v1, "unicom"

    aput-object v1, v0, v4

    const-string v1, "\u79fb\u52a8"

    aput-object v1, v0, v5

    const-string v1, "\u8054\u901a"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->otherKeySet:[Ljava/lang/String;

    .line 32
    const/16 v0, 0x9

    new-array v0, v0, [I

    iget v1, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->MOBILE_ID:I

    aput v1, v0, v3

    iget v1, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->MOBILE_ID:I

    aput v1, v0, v4

    iget v1, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->UNICOM_ID:I

    aput v1, v0, v5

    iget v1, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->UNICOM_ID:I

    aput v1, v0, v6

    iget v1, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->MOBILE_ID:I

    aput v1, v0, v7

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->UNICOM_ID:I

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->CT_ID:I

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->CT_ID:I

    aput v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->CT_ID:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->valueSet:[I

    .line 33
    new-array v0, v7, [I

    iget v1, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->MOBILE_ID:I

    aput v1, v0, v3

    iget v1, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->UNICOM_ID:I

    aput v1, v0, v4

    iget v1, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->MOBILE_ID:I

    aput v1, v0, v5

    iget v1, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->UNICOM_ID:I

    aput v1, v0, v6

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->otherValueSet:[I

    .line 41
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->initOperatorNameMap()V

    .line 42
    return-void
.end method

.method private appendString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "classType"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkRadioTechExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string v0, "3G"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "4G"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private classTypeToString(I)Ljava/lang/String;
    .locals 4
    .param p1, "Type"    # I

    .prologue
    .line 106
    const-string v0, ""

    .line 107
    .local v0, "str":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 115
    const-string v0, ""

    .line 118
    :goto_0
    const-string v1, "GnDecorateOperatorName"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TypeToString, str="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-object v0

    .line 109
    :pswitch_0
    const-string v0, "3G"

    .line 110
    goto :goto_0

    .line 112
    :pswitch_1
    const-string v0, "4G"

    .line 113
    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->sInstance:Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;

    return-object v0
.end method

.method private getMtkRadioTech(Landroid/telephony/ServiceState;)Ljava/lang/String;
    .locals 6
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 125
    const-string v0, ""

    .line 126
    .local v0, "radioTech":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v1, v0

    .line 139
    .end local v0    # "radioTech":Ljava/lang/String;
    .local v1, "radioTech":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 128
    .end local v1    # "radioTech":Ljava/lang/String;
    .restart local v0    # "radioTech":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    .line 129
    .local v2, "radioTechnology":I
    const/16 v3, 0xe

    if-ne v2, v3, :cond_3

    .line 130
    const-string v0, "4G"

    .line 138
    :cond_2
    :goto_1
    const-string v3, "GnDecorateOperatorName"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMtkRadioTech, radio_tech="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 139
    .end local v0    # "radioTech":Ljava/lang/String;
    .restart local v1    # "radioTech":Ljava/lang/String;
    goto :goto_0

    .line 131
    .end local v1    # "radioTech":Ljava/lang/String;
    .restart local v0    # "radioTech":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    .line 132
    const-string v0, "3G"

    goto :goto_1
.end method

.method private initOperatorNameMap()V
    .locals 4

    .prologue
    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->keySet:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 48
    sget-object v1, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->operatorNameMap:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->keySet:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->valueSet:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method private parseFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 146
    move-object v0, p1

    .line 147
    .local v0, "target":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->operatorNameMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 148
    .local v1, "targetId":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v2, "GnDecorateOperatorName"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseFrom, target="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-object v0
.end method

.method private parseOther(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 156
    move-object v1, p1

    .line 158
    .local v1, "tempStr":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->otherKeySet:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 159
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->otherKeySet:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    sget-object v2, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->operatorNameMap:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->otherValueSet:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->parseFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 164
    .end local p1    # "source":Ljava/lang/String;
    :cond_0
    return-object p1

    .line 158
    .restart local p1    # "source":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public Parse(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    .line 56
    :cond_0
    move-object v0, p1

    .line 57
    .local v0, "target":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->operatorNameMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->parseFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->parseOther(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public addRadioTech(Ljava/lang/String;Landroid/telephony/ServiceState;)Ljava/lang/String;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 65
    if-nez p1, :cond_1

    .line 66
    const/4 p1, 0x0

    .line 75
    .end local p1    # "source":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 67
    .restart local p1    # "source":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->checkRadioTechExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    move-object v1, p1

    .line 71
    .local v1, "target":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->getMtkRadioTech(Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "classType":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GnDecorateOperatorName;->appendString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    const-string v2, "GnDecorateOperatorName"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRadioTech, classType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", target="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    .line 75
    goto :goto_0
.end method
