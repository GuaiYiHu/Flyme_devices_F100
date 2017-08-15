.class public Lcom/mediatek/internal/telephony/DefaultSmsSimSettings;
.super Ljava/lang/Object;
.source "DefaultSmsSimSettings.java"


# static fields
.field public static final ASK_USER_SUB_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DefaultSmsSimSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isoldDefaultSMSSubIdActive(Ljava/util/List;)Z
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
    .local p0, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v3, 0x1

    .line 56
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v1

    .line 58
    .local v1, "oldSmsDefaultSIM":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 59
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 69
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    :goto_0
    return v3

    .line 63
    :cond_2
    const-string v4, "OP01"

    const-string/jumbo v5, "ro.operator.optr"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 64
    if-eqz v1, :cond_1

    const/4 v4, -0x3

    if-eq v1, v4, :cond_1

    .line 69
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static setSmsTalkDefaultSim(Ljava/util/List;Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 20
    const-string v1, "1"

    const-string/jumbo v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 21
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    .line 22
    .local v0, "oldSmsDefaultSIM":I
    const-string v1, "DefaultSmsSimSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "oldSmsDefaultSIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    if-nez p0, :cond_1

    .line 25
    const-string v1, "DefaultSmsSimSettings"

    const-string/jumbo v2, "subInfos == null, return"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .end local v0    # "oldSmsDefaultSIM":I
    :cond_0
    :goto_0
    return-void

    .line 28
    .restart local v0    # "oldSmsDefaultSIM":I
    :cond_1
    const-string v1, "DefaultSmsSimSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subInfos size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_4

    .line 31
    invoke-static {p0}, Lcom/mediatek/internal/telephony/DefaultSmsSimSettings;->isoldDefaultSMSSubIdActive(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    const-string v1, "DefaultSmsSimSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subInfos size > 1 & old available, set to :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    goto :goto_0

    .line 36
    :cond_2
    const-string v1, "OP01"

    const-string/jumbo v2, "ro.operator.optr"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    const-string v1, "DefaultSmsSimSettings"

    const-string/jumbo v2, "subInfos size > 1, set to : AUTO"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    goto :goto_0

    .line 40
    :cond_3
    const-string v1, "DefaultSmsSimSettings"

    const-string/jumbo v2, "subInfos size > 1, set to : ASK_USER_SUB_ID"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    goto :goto_0

    .line 44
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 45
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    goto/16 :goto_0

    .line 47
    :cond_5
    const-string v1, "DefaultSmsSimSettings"

    const-string/jumbo v2, "setSmsTalkDefaultSim SIM not insert"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
